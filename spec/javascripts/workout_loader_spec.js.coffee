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

  describe "acquires JSON data from server", ->
    beforeEach -> 
      @server = sinon.fakeServer.create()
      @server.respondWith("GET", "/workouts.json",
                          [200, { "Content-Type": "application/json" },
                          JSON.stringify(@incomingJSON)])
      @workouts = @loader.addMoreWorkouts()
      @server.respond()

    afterEach -> @server.restore()

    it "should use TemplateHoganBuilder", ->
      expect(@render).toHaveBeenCalledWith("app/templates/workouts/workouts_index", @incomingJSON[0])

    it "should fetch workouts from server", ->
      expect($("ul#workout_list > li")).toHaveText("THE MUSTACHE TEMPLATE")