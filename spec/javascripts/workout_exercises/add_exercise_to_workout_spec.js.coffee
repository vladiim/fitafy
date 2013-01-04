describe 'AddExerciseToWorkout', ->
  beforeEach ->
    loadFixtures 'add_exercise_to_workout.html'
    @link = $( '.add_exercise_to_workout_button' )
    @adder = new AddExerciseToWorkout @link
    @adder.init()
    @params = $.param( { workout_exercise: { workout_id: 222, exercise_id: 111 } })

  it 'sets the params based on the link', ->
    expect(@adder.params).toEqual(@params)

  describe 'link clicked', ->

    describe 'createWorkoutExercise', ->
      beforeEach ->
        sinon.spy($, 'ajax')
        @adder.createWorkoutExercise()

      afterEach -> $.ajax.restore()

      it 'uses ajax for the request', ->
        expect($.ajax).toHaveBeenCalled()

      it 'posts to the right url', ->
        expect($.ajax.getCall(0).args[0].url).toEqual("/workout_exercises?#{@params}")

      it 'posts the info to the server', ->
        expect($.ajax.getCall(0).args[0].type).toEqual("POST")

      it 'uses json as the data type', ->
        expect($.ajax.getCall(0).args[0].dataType).toEqual("json")