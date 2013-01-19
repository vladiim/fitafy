describe 'WorkoutExerciseDynamicForm', ->
  beforeEach ->
    loadFixtures 'workout_exercise_dynamic_form.html'
    WorkoutExerciseDynamicForm.init()
    @show_form = $( 'a.show_workout_exercise_form[data-value=1]')
    @w_e_node  = $( 'li.workout_exercise')

  describe 'click show link', ->
    beforeEach -> @show_form.click()

    it 'stores the show_form locally', ->
      expect(WorkoutExerciseDynamicForm.show_form).toBe(@show_form)

  describe 'storeVariables', ->
    beforeEach ->
      WorkoutExerciseDynamicForm.show_form = @show_form
      WorkoutExerciseDynamicForm.storeVariables()

    it 'stores the DynamicForm tag name', ->
      expect(DynamicForm.tag).toEqual('instructions')

    it 'stores the DynamicForm url', ->
      expect(DynamicForm.url).toEqual('/workout_exercises/1')

    it 'stores the DynamicForm form node', ->
      expect(DynamicForm.form_node).toBe($( '.workout_exercise_form.instructions' ))

    it 'sets the DynamicForm form group', ->
      expect(DynamicForm.form_group).toBe($( '.workout_form_group.instructions' ))

    it 'sets the DynamicForm initial_text', ->
      expect(DynamicForm.initial_text).toEqual( 'INITIAL TEXT' )

    it 'sets the DynamicForm hide form', ->
      expect(DynamicForm.hide_form).toBe($( 'a.hide_workout_exercise_form[data-value=1]'))

    it 'stores the update button locally', ->
      expect(DynamicForm.update_button).toBe($('.update_workout_exercise_form'))

    it 'stores the workout exercise item locally', ->
      expect(WorkoutExerciseDynamicForm.workout_exercise_item).toBe(@w_e_node)

  describe 'updateFormItem', ->
    beforeEach ->
      @renderer      = { render: -> }
      @renderer_stub = sinon.stub(@renderer, 'render', -> "<li class='new_node'>NEW WORKOUT EXERCISE RENDERED</li>")
      WorkoutExerciseDynamicForm.renderer = @renderer
      WorkoutExerciseDynamicForm.workout_exercise_item = @w_e_node
      data = {}
      WorkoutExerciseDynamicForm.updateFormItem(data)

    it 'uses the template renderer', ->
      expect(@renderer_stub).toHaveBeenCalled("app/templates/workout_exercises/show", @data)

    it 'removes the workout exercise node', ->
      expect(@w_e_node).not.toBe()

    it 'replaces the workout exercise node with a new one', ->
      expect($( 'li.new_node').text() ).toEqual('NEW WORKOUT EXERCISE RENDERED')