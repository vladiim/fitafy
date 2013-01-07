describe 'AddExerciseToWorkout', ->
  beforeEach ->
    loadFixtures 'add_exercise_to_workout.html'
    @link = $( '.add_exercise_to_workout_button' )
    @fake_template = { render: -> '' }
    @renderer = sinon.stub(@fake_template, 'render', -> '<li>EXERCISE FROM TEMPLATE</li>')
    @adder = new AddExerciseToWorkout @link, @fake_template
    @adder.init()
    @params = $.param( { workout_exercise: { workout_id: 222, exercise_id: 111 } })
    @data = { name: 'NAME' }

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

  describe 'updateWorkout', ->
    beforeEach -> @adder.updateWorkout(@data)

    it 'uses the template renderer to load the exercise', ->
      expect(@renderer).toHaveBeenCalledWith('app/templates/workout_exercises/show', @data)

    it 'renders the new exercise after other exercises', ->
      expect($( 'ul > li:nth-child(2)').text() ).toEqual('EXERCISE FROM TEMPLATE')