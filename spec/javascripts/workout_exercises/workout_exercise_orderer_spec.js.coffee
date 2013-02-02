describe 'WorkoutExerciseOrderer', ->
  beforeEach ->
    loadFixtures 'workout_exercise_orderer.html'
    @subject = WorkoutExerciseOrderer
    @subject.init()
    @one           = $( 'li.workout_exercise.1' )
    @one_down      = $(@one).find('i.move_workout_exercise_down')
    @one_down_link = @one_down.parent('a')


  describe 'click one down', ->
    beforeEach ->
      sinon.stub(@subject, 'findCounterPart')
      sinon.stub(@subject, 'swapWorkoutExercises')
      @one_down.click()

    afterEach ->
      @subject.findCounterPart.restore()
      @subject.swapWorkoutExercises.restore()

    describe 'setAttributes', ->

      it 'sets the link', ->
        expect(@subject.link).toBe(@one_down_link)

      it 'sets the order', ->
        expect(@subject.order).toEqual(1)

      it 'sets the direction', ->
        expect(@subject.direction).toEqual('down')

      it 'sets the new_order', ->
        expect(@subject.new_order).toEqual(2)

      it 'sets the parent', ->
        expect(@subject.parent).toBe(@one)

      it 'sets the url', ->
        expect(@subject.url).toBe('/workout_exercises/1')

      it 'sets the param', ->
        param = $.param({ workout_exercise: { order_number: 2 } })
        expect(@subject.param).toEqual(param)

      it 'finds its counterpart', ->
        expect(@subject.findCounterPart).toHaveBeenCalled()

      it 'swaps the workout exercises', ->
        expect(@subject.swapWorkoutExercises).toHaveBeenCalled()

  describe 'findCounterPart', ->
    beforeEach ->
      sinon.stub(@subject, 'swapWorkoutExercises')
      @one_down.click()

    afterEach -> @subject.swapWorkoutExercises.restore()

    it 'sets the counterpart to two', ->
      expect(@subject.counterpart).toBe($( 'li.workout_exercise.2' ))

    it 'sets the counterpart_url', ->
      expect(@subject.counterpart_url).toEqual('/workout_exercises/2')

    it 'sets the counterpart_order', ->
      expect(@subject.counterpart_order).toEqual(1)

    it 'sets the counterpart_param', ->
      param = $.param({ workout_exercise: { order_number: 1 } })
      expect(@subject.counterpart_param).toEqual(param)

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

  describe 'renderers', ->
    beforeEach ->
      @data          = { name: 'NAME' }
      @renderer      = { render: -> '' }
      @renderer_stub = sinon.stub(@renderer, 'render', -> '<li class="workout_exercise">WORKOUT EXERCISE FROM SERVER</li>')
      @set_details_renderer = { render: -> '' }
      @set_details_stub     = sinon.stub(@set_details_renderer, 'render', -> '<p>SET DETAILS</p>')

    describe 'renderWorkoutExercise', ->
      beforeEach ->
        @one_down.click()
        @subject.renderer = @renderer
        @subject.set_details_renderer = @set_details_renderer
        @subject.renderWorkoutExercise(@data)

      it 'uses the template renderer to load the workout exercise', ->
        expect(@renderer_stub).toHaveBeenCalledWith("app/templates/workout_exercises/show", @set_details_renderer.render(@data))

      it 'replaces the counterpart', ->
        expect($( 'li.workout_exercise:nth-child(2)' ).text()).toEqual('WORKOUT EXERCISE FROM SERVER')

    describe 'counterpart renderWorkoutExercise', ->
      beforeEach ->
        @one_down.click()
        @subject.renderer = @renderer
        @subject.set_details_renderer = @set_details_renderer
        @subject.renderWorkoutExercise(@data, 'counterpart')

      it 'replaces the original', ->
        expect($( 'li.workout_exercise:nth-child(1)' ).text()).toEqual('WORKOUT EXERCISE FROM SERVER')

  describe 'click two up', ->
    beforeEach ->
      two    = $( 'li.workout_exercise.2' )
      two_up = $(two).find('i.move_workout_exercise_up')
      two_up.click()

    it 'sets no counterpart to one', ->
      expect(@subject.counterpart).toBe(@one)