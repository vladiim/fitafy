describe 'AddExerciseToWorkout', ->
  beforeEach ->
    loadFixtures 'add_exercise_to_workout.html'
    @subject = AddExerciseToWorkout
    @subject.init()
    @button = $( '.add_exercise_to_workout_button' )
  
  describe 'click add button', ->
    beforeEach ->
      sinon.stub(@subject, 'createWorkoutExercise', -> '')
      @button.click()

    it 'creates the workout exercise', ->
      expect(@subject.createWorkoutExercise).toHaveBeenCalled()

    afterEach -> @subject.createWorkoutExercise.restore()

  describe 'createWorkoutExercise', ->
    beforeEach ->
      sinon.spy($, 'ajax')
      @subject.button = @button
      @subject.createWorkoutExercise()

    afterEach -> $.ajax.restore()

    it 'uses ajax for the request', ->
      expect($.ajax).toHaveBeenCalled()

    it 'posts to the right url', ->
      expect($.ajax.getCall(0).args[0].url).toEqual("/workout_exercises?workout_exercise%5Bworkout_id%5D=222&workout_exercise%5Bexercise_id%5D=111")

    it 'posts the info to the server', ->
      expect($.ajax.getCall(0).args[0].type).toEqual("POST")

    it 'uses json as the data type', ->
      expect($.ajax.getCall(0).args[0].dataType).toEqual("json")

  describe 'loadWorkoutExercises', ->
    beforeEach ->
      @incomingJSON  = [{ name: 'NAME FROM SERVER' }]
      @renderer      = { render: -> '' }
      @renderer_stub = sinon.stub(@renderer, 'render', -> '<li>EXERCISE FROM TEMPLATE</li>')
      @set_details_renderer = { render: -> '' }
      @stub_set_details     = sinon.stub(@set_details_renderer, 'render', -> '<p>SET DETAILS</p>')
      @server        = sinon.fakeServer.create()
      @server.respondWith("GET", "/workout_exercises?workout_id=222",
                          [200, { "Content-Type": "application/json" },
                          JSON.stringify(@incomingJSON)])
      @subject.renderer = @renderer      
      @subject.set_details_renderer = @set_details_renderer
      @subject.button   = @button
      @subject.getAndLoadWorkoutExercises()
      @server.respond()

    afterEach -> @server.restore()

    it 'renders the workout using the renderer', ->
      expect(@renderer_stub).toHaveBeenCalledWith('app/templates/workout_exercises/show', @set_details_renderer.render(@incomingJSON))

    it 'removes the initial workout exercises', ->
      expect($( 'ul > li#initial_workout_exercise' )).not.toExist()

    it 'replaces the initial workout exercises with the new list', ->
      expect($( 'ul > li' ).text()).toEqual('EXERCISE FROM TEMPLATE')