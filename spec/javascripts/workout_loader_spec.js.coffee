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
        @loader.loadMoreWorkouts([])
        @server.respond()

      afterEach -> @server.restore()

      it "uses TemplateHoganBuilder to load workouts", ->
        expect(@render).toHaveBeenCalledWith("app/templates/workouts/index", @incomingJSON[0])

      it "loads the workouts on the page", ->
        expect($("ul#workout_list > li")).toHaveText("THE MUSTACHE TEMPLATE")

      it "increments the page number", -> expect(@loader.page).toEqual(1)

    describe "start with options", ->
      beforeEach ->
        sinon.spy($, 'ajax')
        @loader.reloadWorkouts(['back'])

      afterEach  -> $.ajax.restore()

      it "gets the workouts with the options", ->
        expect($.ajax.getCall(0).args[0].url).toEqual("/workouts?muscles%5B%5D=back&page=0")

    describe "no more workouts left", ->
      beforeEach ->
        @server = sinon.fakeServer.create()
        @server.respondWith("GET", "/workouts?page=0",
                            [200, { "Content-Type": "application/json" },
                            JSON.stringify([])])
        @loader.reloadWorkouts([])
        @server.respond()

      afterEach -> @server.restore()

      it "lets the user know there are no more workouts", ->
        expect($(".end_of_workouts > p")).toHaveText("No more workouts!")

      it "sets allWorkoutsLoaded to true", ->
        expect(@loader.allWorkoutsLoaded).toEqual(true)

      describe "new search", ->
        it "sets allWorkoutsLoaded to false", ->
          @loader.reloadWorkouts()
          expect(@loader.allWorkoutsLoaded).toEqual(false)