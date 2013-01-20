describe 'WorkoutExerciseOrderer', ->
  beforeEach ->
    loadFixtures 'workout_exercise_orderer.html'
    WorkoutExerciseOrderer.init()
    @one           = $( 'li.workout_exercise.1' )
    @one_down      = $(@one).find('i.move_workout_exercise_down')
    @one_down_link = @one_down.parent('a')


  describe 'click one down', ->
    beforeEach ->
      sinon.stub(WorkoutExerciseOrderer, 'findCounterPart')
      sinon.stub(WorkoutExerciseOrderer, 'swapWorkoutExercises')
      @one_down.click()

    afterEach ->
      WorkoutExerciseOrderer.findCounterPart.restore()
      WorkoutExerciseOrderer.swapWorkoutExercises.restore()

    describe 'setAttributes', ->

      it 'sets the link', ->
        expect(WorkoutExerciseOrderer.link).toBe(@one_down_link)

      it 'sets the order', ->
        expect(WorkoutExerciseOrderer.order).toEqual(1)

      it 'sets the direction', ->
        expect(WorkoutExerciseOrderer.direction).toEqual('down')

      it 'sets the new_order', ->
        expect(WorkoutExerciseOrderer.new_order).toEqual(2)

      it 'sets the parent', ->
        expect(WorkoutExerciseOrderer.parent).toBe(@one)

      it 'sets the url', ->
        expect(WorkoutExerciseOrderer.url).toBe('/workout_exercises/1')

      it 'sets the param', ->
        param = $.param({ workout_exercise: { order_number: 2 } })
        expect(WorkoutExerciseOrderer.param).toEqual(param)

      it 'finds its counterpart', ->
        expect(WorkoutExerciseOrderer.findCounterPart).toHaveBeenCalled()

      it 'swaps the workout exercises', ->
        expect(WorkoutExerciseOrderer.swapWorkoutExercises).toHaveBeenCalled()

  describe 'findCounterPart', ->
    beforeEach ->
      sinon.stub(WorkoutExerciseOrderer, 'swapWorkoutExercises')
      @one_down.click()

    afterEach -> WorkoutExerciseOrderer.swapWorkoutExercises.restore()

    it 'sets the counterpart to two', ->
      expect(WorkoutExerciseOrderer.counterpart).toBe($( 'li.workout_exercise.2' ))

    it 'sets the counterpart_url', ->
      expect(WorkoutExerciseOrderer.counterpart_url).toEqual('/workout_exercises/2')

    it 'sets the counterpart_order', ->
      expect(WorkoutExerciseOrderer.counterpart_order).toEqual(1)

    it 'sets the counterpart_param', ->
      param = $.param({ workout_exercise: { order_number: 1 } })
      expect(WorkoutExerciseOrderer.counterpart_param).toEqual(param)

  describe 'updateWorkoutExercise', ->
    beforeEach ->
      sinon.stub($, 'ajax')
      @one_down.click()
  
    afterEach -> $.ajax.restore()
  
    it 'uses ajax for the request', ->
      expect($.ajax).toHaveBeenCalled()
  
    it 'posts to the right url', ->
      expect($.ajax.getCall(0).args[0].url).toEqual("/workout_exercises/1?#{WorkoutExerciseOrderer.param}")
  
    it 'posts the info to the server', ->
      expect($.ajax.getCall(0).args[0].type).toEqual("PUT")
  
    it 'uses json as the data type', ->
      expect($.ajax.getCall(0).args[0].dataType).toEqual("json")

  describe 'renderWorkoutExercise', ->
    beforeEach ->
      @data = { name: 'NAME' }
      @renderer = { render: -> '' }
      @renderer_stub = sinon.stub(@renderer, 'render', -> '<li class="workout_exercise">WORKOUT EXERCISE FROM SERVER</li>')
      @one_down.click()
      WorkoutExerciseOrderer.renderer = @renderer
      WorkoutExerciseOrderer.renderWorkoutExercise(@data)

    it 'uses the template renderer to load the workout exercise', ->
      expect(@renderer_stub).toHaveBeenCalledWith("app/templates/workout_exercises/show", @data)
  
    it 'replaces the counterpart', ->
      expect($( 'li.workout_exercise:nth-child(2)' ).text()).toEqual('WORKOUT EXERCISE FROM SERVER')
  
    describe 'render the original counterpart', ->
      beforeEach ->
        WorkoutExerciseOrderer.renderer = @renderer
        WorkoutExerciseOrderer.renderWorkoutExercise(@data, 'counterpart')
  
      it 'replaces the original', ->
        expect($( 'li.workout_exercise:nth-child(1)' ).text()).toEqual('WORKOUT EXERCISE FROM SERVER')

  describe 'click two up', ->
    beforeEach ->
      two    = $( 'li.workout_exercise.2' )
      two_up = $(two).find('i.move_workout_exercise_up')
      two_up.click()

    it 'sets no counterpart to one', ->
      expect(WorkoutExerciseOrderer.counterpart).toBe(@one)