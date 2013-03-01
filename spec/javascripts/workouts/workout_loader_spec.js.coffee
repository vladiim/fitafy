describe "WorkoutLoader", ->
  beforeEach ->
    loadFixtures "workout_list.html"
    WorkoutLoader.init()

  describe 'loadMoreWorkouts', ->
    beforeEach ->
      @incomingJSON  = [{ name: 'JSON DATA' }]
      @renderer      = {render: -> ''}
      @renderer_stub = sinon.stub(@renderer, 'render', ->"<li>THE MUSTACHE TEMPLATE</li>")
      WorkoutLoader.renderer = @renderer

    describe 'no options', ->
      beforeEach ->
        @server = sinon.fakeServer.create()
        @server.respondWith("GET", "/workouts?page=1",
                            [200, { "Content-Type": "application/json" },
                            JSON.stringify(@incomingJSON)])
        WorkoutLoader.url = '/workouts'
        WorkoutLoader.loadMoreWorkouts([])
        @server.respond()

      afterEach -> @server.restore()

      it "uses TemplateHoganBuilder to load workouts", ->
        expect(@renderer_stub).toHaveBeenCalledWith("app/templates/workouts/index", @incomingJSON[0])

      it "loads the workouts on the page", ->
        expect($("ul#workout_list > li")).toHaveText("THE MUSTACHE TEMPLATE")

      it "increments the page number", ->
        expect(WorkoutLoader.page).toEqual(1)

    describe "start with options", ->
      beforeEach ->
        sinon.spy($, 'ajax')
        WorkoutLoader.url = '/workouts'
        WorkoutLoader.reloadWorkouts(['back'])

      afterEach  -> $.ajax.restore()

      it "gets the workouts with the options", ->
        expect($.ajax.getCall(0).args[0].url).toEqual("/workouts?muscles%5B%5D=back&page=0")

  describe "no more workouts left", ->
    beforeEach ->
      @server = sinon.fakeServer.create()
      @server.respondWith("GET", "/workouts?page=0",
                          [200, { "Content-Type": "application/json" },
                          JSON.stringify([])])
      WorkoutLoader.init('/workouts')
      WorkoutLoader.reloadWorkouts([])
      @server.respond()

    afterEach -> @server.restore()

    it "lets the user know there are no more workouts", ->
      expect($(".end_of_workouts > p")).not.toHaveClass("hidden")

    it "sets allWorkoutsLoaded to true", ->
      expect(WorkoutLoader.allWorkoutsLoaded).toEqual(true)

    describe "new search", ->
      it "sets allWorkoutsLoaded to false", ->
        WorkoutLoader.reloadWorkouts()
        expect(WorkoutLoader.allWorkoutsLoaded).toEqual(false)