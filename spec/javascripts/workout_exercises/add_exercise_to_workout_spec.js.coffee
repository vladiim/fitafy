describe 'AddExerciseToWorkout', ->
  beforeEach ->
    loadFixtures 'add_exercise_to_workout.html'
    AddExerciseToWorkout.init()
    @button = $( '.add_exercise_to_workout_button' )
  
  describe 'click add button', ->
    beforeEach ->
      sinon.stub(AddExerciseToWorkout, 'createWorkoutExercise', -> '')
      @button.click()

    it 'creates the workout exercise', ->
      expect(AddExerciseToWorkout.createWorkoutExercise).toHaveBeenCalled()

    afterEach -> AddExerciseToWorkout.createWorkoutExercise.restore()

  describe 'createWorkoutExercise', ->
    beforeEach ->
      sinon.spy($, 'ajax')
      AddExerciseToWorkout.button = @button
      AddExerciseToWorkout.createWorkoutExercise()

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
      @server        = sinon.fakeServer.create()
      @server.respondWith("GET", "/workout_exercises?workout_id=222",
                          [200, { "Content-Type": "application/json" },
                          JSON.stringify(@incomingJSON)])
      AddExerciseToWorkout.renderer = @renderer      
      AddExerciseToWorkout.button   = @button
      AddExerciseToWorkout.getAndLoadWorkoutExercises()
      @server.respond()

    afterEach -> @server.restore()

    it 'renders the workout using the renderer', ->
      expect(@renderer_stub).toHaveBeenCalledWith('app/templates/workout_exercises/show', @incomingJSON[0])

    it 'removes the initial workout exercises', ->
      expect($( 'ul > li#initial_workout_exercise' )).not.toExist()

    it 'replaces the initial workout exercises with the new list', ->
      expect($( 'ul > li' ).text()).toEqual('EXERCISE FROM TEMPLATE')

# describe 'AddExerciseToWorkout', ->
#   beforeEach ->
#     loadFixtures 'add_exercise_to_workout.html'
#     @link = $( '.add_exercise_to_workout_button' )
#     @fake_template = { render: -> '' }
#     @renderer = sinon.stub(@fake_template, 'render', -> '<li>EXERCISE FROM TEMPLATE</li>')
#     @adder = new AddExerciseToWorkout @link, @fake_template
#     @adder.init()
#     @params = $.param( { workout_exercise: { workout_id: 222, exercise_id: 111 } })
#     @data = { name: 'NAME' }

#   it 'sets the params based on the link', ->
#     expect(@adder.params).toEqual(@params)

#   describe 'link clicked', ->

#     describe 'createWorkoutExercise', ->
#       beforeEach ->
#         sinon.spy($, 'ajax')
#         @adder.createWorkoutExercise()

#       afterEach -> $.ajax.restore()

#       it 'uses ajax for the request', ->
#         expect($.ajax).toHaveBeenCalled()

#       it 'posts to the right url', ->
#         expect($.ajax.getCall(0).args[0].url).toEqual("/workout_exercises?#{@params}")

#       it 'posts the info to the server', ->
#         expect($.ajax.getCall(0).args[0].type).toEqual("POST")

#       it 'uses json as the data type', ->
#         expect($.ajax.getCall(0).args[0].dataType).toEqual("json")

#   describe 'updateWorkout', ->
#     beforeEach -> @adder.updateWorkout(@data)

#     it 'uses the template renderer to load the exercise', ->
#       expect(@renderer).toHaveBeenCalledWith('app/templates/workout_exercises/show', @data)

#     it 'renders the new exercise after other exercises', ->
#       expect($( 'ul > li:nth-child(2)').text() ).toEqual('EXERCISE FROM TEMPLATE')