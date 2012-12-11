describe "WorkoutLoader", ->
  beforeEach ->
    loadFixtures "workout_list.html"
    @fake_template = { render: -> "" }
    @render        = sinon.stub(@fake_template, 'render', -> "<li>THE MUSTACHE TEMPLATE</li>" )
    @loader        = new WorkoutLoader @fake_template
    @incomingJSON  = [
      {
        url:            "/users/1/workouts/1",
        muscles:        "back",
        name:           "workout",
        client_level:   "beginer",
        difficulty:     "easy",
        username:       "rza",
        exercise_count: "5"
      }]

  it "sets the page to 0", -> expect(@loader.page).toEqual(0)

  describe "gets workouts", ->

    describe "start without options", ->
      beforeEach ->
        @server = sinon.fakeServer.create()
        @server.respondWith("GET", "/workouts?page=1",
                            [200, { "Content-Type": "application/json" },
                            JSON.stringify(@incomingJSON)])
        @loader.reloadWorkouts([])
        @server.respond()

      afterEach -> @server.restore()

      it "uses TemplateHoganBuilder to load workouts", ->
        expect(@render).toHaveBeenCalledWith("app/templates/workouts/workouts_index", @incomingJSON[0])
      it "loads the workouts on the page", ->
        expect($("ul#workout_list > li")).toHaveText("THE MUSTACHE TEMPLATE")
      it "increments the page number", -> expect(@loader.page).toEqual(1)
      it "muscles match", -> expect(@loader.sameMuscles()).toEqual(true)

      describe "again with options", ->
        beforeEach -> @loader.reloadWorkouts(['back'])
        it "resets the page number", -> expect(@loader.page).toEqual(0)
        it "muscles don't match", -> expect(@loader.sameMuscles()).toEqual(false)

    describe "start with options", ->
      beforeEach ->
        sinon.spy($, 'ajax')
        @loader.reloadWorkouts(['back'])

      afterEach  -> $.ajax.restore()

      it "gets the workouts with the options", ->
        expect($.ajax.getCall(0).args[0].url).toEqual("/workouts?muscles%5B%5D=back&page=0")
      it "saves the muscles", -> expect(@loader.muscles).toEqual(['back'])
      it "doesn't save the old_muscles", -> expect(@loader.old_muscles).toEqual([])

      describe "with same options again", ->
        beforeEach -> @loader.reloadWorkouts(['back'])
        it "saves the old muscles", -> expect(@loader.old_muscles).toEqual(['back'])
        it "maintains the muscles value", -> expect(@loader.muscles).toEqual(['back'])
        it "increments the page number", -> expect(@loader.page).toEqual(1)

      describe "with additional chest muscle", ->
        beforeEach -> @loader.reloadWorkouts(['back', 'chest'])
        it "saves the old muscles", -> expect(@loader.old_muscles).toEqual(['back'])

        describe "hits the bottom of the page", ->
          beforeEach ->
            sinon.stub(@loader, 'nearBottom', -> true)
            @loader.windowScrollCheck()

          it "increments the page", -> expect(@loader.page).toEqual(1)
          it "keeps the same muscles", -> expect(@loader.muscles).toEqual(['back', 'chest'])
          it "sets the old muscles", -> expect(@loader.old_muscles).toEqual(['back', 'chest'])

    describe "responds without workouts", ->
      beforeEach ->
        @server = sinon.fakeServer.create()
        @server.respondWith("GET", "/workouts?page=1",
                            [200, { "Content-Type": "application/json" },
                            JSON.stringify([])])
        @loader.reloadWorkouts([])
        @server.respond()

      afterEach -> @server.restore()

      it "decrements the page number", -> expect(@loader.page).toEqual(0)
      it "lets the user know there are no more workouts", ->
        expect($(".end_of_workouts > p")).toHaveText("No more workouts!")