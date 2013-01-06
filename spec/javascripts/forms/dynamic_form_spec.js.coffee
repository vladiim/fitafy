# bring elements out of workoutexercise and in to here

describe 'DynamicForm', ->
  beforeEach ->
    loadFixtures 'workout_exercise_dynamic_form.html'
    @form = new DynamicForm

  describe 'createParam', ->

    describe 'name', ->
      beforeEach ->
        @form.tag = 'name'
        @form.input = $('input').first()
        @form.input.val('NAME INPUT')
        @form.createParam()

      it 'creates name param', ->
        param = $.param({ name: 'NAME INPUT' })
        expect(@form.param).toEqual(param)