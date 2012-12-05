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

  describe "gets workouts", ->

    describe "without options", ->

      beforeEach ->
        @server = sinon.fakeServer.create()
        @server.respondWith("GET", "/workouts.json",
                            [200, { "Content-Type": "application/json" },
                            JSON.stringify(@incomingJSON)])
        @workouts = @loader.reloadWorkouts()
        @server.respond()

      afterEach -> @server.restore()

      it "uses TemplateHoganBuilder", ->
        expect(@render).toHaveBeenCalledWith("app/templates/workouts/workouts_index", @incomingJSON[0])

      it "fetches workouts from server", ->
        expect($("ul#workout_list > li")).toHaveText("THE MUSTACHE TEMPLATE")

    describe "with options", ->
      beforeEach -> sinon.spy($, 'ajax')
      afterEach  -> $.ajax.restore()

      it "gets the workouts with the options", ->
        @loader.reloadWorkouts(['back'])
        expect($.ajax.getCall(0).args[0].url).toEqual("workouts?muscles%5B%5D=back")