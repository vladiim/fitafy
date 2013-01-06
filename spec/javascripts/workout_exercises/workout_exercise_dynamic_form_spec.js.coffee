describe 'WorkoutExerciseDynamicForm', ->
  beforeEach ->
    loadFixtures 'workout_exercise_dynamic_form.html'
    @form = new WorkoutExerciseDynamicForm
    @form.init()
    @show_form     = $( 'a.show_workout_exercise_form[data-value=1]')
    @hide_form     = $( 'a.hide_workout_exercise_form[data-value=1]')
    @update_button = $('.update_workout_exercise_form')
    @form_group    = $( '.workout_form_group.instructions' )
    @text_node     = $( '.workout_form_group.instructions > p' )
    @form_node     = $( '.workout_exercise_form.instructions' )
    @input         = $(@form_node).find('input')
    @w_e_node      = $( 'li.workout_exercise')

  describe 'click show link', ->
    beforeEach -> @show_form.click()

    it 'stores the clicked link locally', ->
      expect(@form.show_form).toBe(@show_form)

  describe 'storeVariables', ->
    beforeEach ->
      @form.show_form = @show_form
      @form.storeVariables()

    it 'stores the tag name locally', ->
      expect(@form.tag).toEqual('instructions')

    it 'stores the url', ->
      expect(@form.url).toEqual('/workout_exercises/1')

    it 'stores the form node', ->
      expect(@form.form_node).toBe(@form_node)

    it 'stores the form group locally', ->
      expect(@form.form_group).toBe(@form_group)

    it 'stores the initial_text locally', ->
      expect(@form.initial_text).toEqual( 'INITIAL TEXT' )

    it 'stores the hide form locally', ->
      expect(@form.hide_form).toBe(@hide_form)

    it 'stores the update button locally', ->
      expect(@form.update_button).toBe(@update_button)

    it 'stores the workout exercise item', ->
      expect(@form.workout_exercise_item).toBe(@w_e_node)

  describe 'updateFormItem', ->
    beforeEach ->
      @fake_template_renderer = { render: -> }
      @render = sinon.stub(@fake_template_renderer, 'render', -> "<li class='new_node'>NEW WORKOUT EXERCISE RENDERED</li>")
      @form   = new WorkoutExerciseDynamicForm @fake_template_renderer
      @show_form.click()
      @form.workout_exercise_item = @w_e_node
      @data = {}
      @form.updateFormItem(@data)

    it 'uses the template renderer', ->
      expect(@render).toHaveBeenCalled("app/templates/workout_exercises/show", @data)

    it 'removes the workout exercise node', ->
      expect(@w_e_node).not.toBe()

    it 'replaces the workout exercise node with a new one', ->
      expect($( 'li.new_node').text() ).toEqual('NEW WORKOUT EXERCISE RENDERED')