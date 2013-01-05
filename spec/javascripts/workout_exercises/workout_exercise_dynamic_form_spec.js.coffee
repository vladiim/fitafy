describe 'WorkoutExerciseDynamicForm', ->
  beforeEach ->
    loadFixtures 'workout_exercise_dynamic_form.html'
    @form = new WorkoutExerciseDynamicForm
    @form.init()
    @show_form  = $( 'a.show_form[data-value=1]')
    @hide_form  = $( 'a.hide_form[data-value=1]')
    @form_group = $( '.workout_form_group.instructions' )
    @text_node  = $( '.workout_form_group.instructions > p' )
    @form_node  = $( '.workout_exercise_form.instructions' )

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

    # it 'stores the workout_exercise value locally', ->
    #   expect(@form.value).toEqual(1)

    it 'stores the form node', ->
      expect(@form.form_node).toBe(@form_node)

    it 'stores the form group locally', ->
      expect(@form.form_group).toBe(@form_group)

    it 'stores the initial_text locally', ->
      expect(@form.initial_text).toEqual( 'INITIAL TEXT' )

    it 'stores the hide form locally', ->
      expect(@form.hide_form).toBe(@hide_form)

  describe 'hideValues', ->
    beforeEach ->
      @form.show_form = @show_form
      @form.text_node = @text_node
      @form.hideValues()

    it 'hides the text', ->
      expect(@text_node).toHaveClass('hidden')

    it 'hides the show_form link', ->
      expect(@show_form).toHaveClass('hidden')

  describe 'showForm', ->
    beforeEach ->
      @form.show_form = @show_form
      @form.storeVariables()
      @form.form_node = @form_node
      @form.showForm()

    it 'shows the form', ->
      expect(@form_node).not.toHaveClass('hidden')

    it 'the form has the text as the input value', ->
      expect( $(@form_node ).find('input').val() ).toEqual('INITIAL TEXT')

  describe 'click cancel', ->
    beforeEach ->
      @form.show_form = @show_form
      @form.storeVariables()
      @form.hideFormListener()
      sinon.spy(@form, 'hideForm')
      sinon.spy(@form, 'showValues')
      @hide_form.click()

    it 'hides the form', ->
      expect(@form.hideForm).toHaveBeenCalled()

    it 'shows the values', ->
      expect(@form.showValues).toHaveBeenCalled()

  describe 'showValues', ->
    beforeEach ->
      @form.show_form = @show_form
      @form.storeVariables()

    it 'shows the text node', ->
      @text_node.addClass('hidden')
      @form.showValues()
      expect(@text_node).not.toHaveClass('hidden')

    it 'shows the show_form link', ->
      @show_form.addClass('hidden')
      @form.showValues()
      expect(@show_form).not.toHaveClass('hidden')

  describe 'hideForm', ->
    beforeEach ->
      @form.form_node = @form_node
      @form_node.removeClass('hidden')
      @form.hideForm()

    it 'hides the form node', ->
      expect(@form_node).toHaveClass('hidden')