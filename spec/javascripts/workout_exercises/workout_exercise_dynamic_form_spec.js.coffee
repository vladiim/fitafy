describe 'WorkoutExerciseDynamicForm', ->
  beforeEach ->
    loadFixtures 'workout_exercise_dynamic_form.html'
    @form = new WorkoutExerciseDynamicForm
    @form.init()
    @show_form     = $( 'a.show_form[data-value=1]')
    @hide_form     = $( 'a.hide_form[data-value=1]')
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

    it 'stores the workout_exercise value locally', ->
      expect(@form.value).toEqual(1)

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
      sinon.spy(@form, 'enterKeyListener')
      @form.showForm()

    it 'shows the form', ->
      expect(@form_node).not.toHaveClass('hidden')

    it 'the form has the text as the input value', ->
      expect( $(@form_node ).find('input').val() ).toEqual('INITIAL TEXT')

    it 'listens for the Enter key to be pressed', ->
      expect(@form.enterKeyListener).toHaveBeenCalled()

  describe 'enterKeyListener', ->
    beforeEach ->
      @form.input = @input
      sinon.spy(@form, 'updateValue')
      @form.enterKeyListener()
      @keydown = $.Event('keydown')

    describe 'enter key pressed', ->
      beforeEach ->
        @keydown.which = 13
        @input.trigger(@keydown)

      it 'updates the value', ->
        expect(@form.updateValue).toHaveBeenCalled()

    describe 'a key other than enter pressed', ->
      beforeEach ->
        @keydown.which = 14
        @input.trigger(@keydown)

      it 'updates the value', ->
        expect(@form.updateValue).not.toHaveBeenCalled()

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

  describe 'update form', ->
    beforeEach ->
      @show_form.click()

    describe 'with the same text', ->
      beforeEach ->
        sinon.stub(@form, 'sameText', -> true)
        sinon.spy(@form, 'updateValue')
        @update_button.click()

      it 'lets the user know they have the same text', ->
        expect(@form.sameText).toHaveBeenCalled()

      it 'doesnt update the value', ->
        expect(@form.updateValue).not.toHaveBeenCalled()

    describe 'with new text', ->
      beforeEach ->
        sinon.stub(@form, 'updateValue', -> true )
        sinon.spy(@form, 'sameText')
        @form.input.val('NEW VAL')
        @update_button.click()

      it 'updates the value', ->
        expect(@form.updateValue).toHaveBeenCalled()

      it 'doesnt tell the user they have the same text', ->
        expect(@form.sameText).not.toHaveBeenCalled()

  describe 'sameText', ->
    beforeEach ->
      sinon.stub(window, 'alert')
      @show_form.click()
      @form.sameText()

    afterEach -> window.alert.restore()

    it 'alerts the user that they used the same text', ->
      expect(window.alert).toHaveBeenCalledWith("Sheesh! The instructions are alreay INITIAL TEXT - try changing 'em!")

  describe 'updateValue', ->

    describe 'with instructions', ->
      beforeEach ->
        @param = $.param( { workout_exercise: { instructions: 'INITIAL TEXT' } })
        sinon.stub($, 'ajax')
        @show_form.click()
        @form.updateValue()

      afterEach -> $.ajax.restore()

      it 'uses ajax for the request', ->
        expect($.ajax).toHaveBeenCalled()

      it 'posts to the right url', ->
        expect($.ajax.getCall(0).args[0].url).toEqual("/workout_exercises/1?#{@param}")

      it 'posts the info to the server', ->
        expect($.ajax.getCall(0).args[0].type).toEqual("PUT")

      it 'uses json as the data type', ->
        expect($.ajax.getCall(0).args[0].dataType).toEqual("json")

    describe 'with sets', ->
      beforeEach ->
        @param = $.param( { workout_exercise: { sets: 'INITIAL TEXT' } })
        sinon.stub($, 'ajax')
        @show_form.click()
        @form.tag = 'sets'
        @form.updateValue()

      afterEach -> $.ajax.restore()

      it 'posts to the right url', ->
        expect($.ajax.getCall(0).args[0].url).toEqual("/workout_exercises/1?#{@param}")

  describe 'replaceWorkoutExercise', ->
    beforeEach ->
      @fake_template_renderer = { render: -> }
      @render = sinon.stub(@fake_template_renderer, 'render', -> "<li class='new_node'>NEW WORKOUT EXERCISE RENDERED</li>")
      @form   = new WorkoutExerciseDynamicForm @fake_template_renderer
      @show_form.click()
      @form.workout_exercise_item = @w_e_node
      @data = {}
      @form.replaceWorkoutExercise(@data)

    it 'uses the template renderer', ->
      expect(@render).toHaveBeenCalled("app/templates/workout_exercises/show", @data)

    it 'removes the workout exercise node', ->
      expect(@w_e_node).not.toBe()

    it 'replaces the workout exercise node with a new one', ->
      expect($( 'li.new_node').text() ).toEqual('NEW WORKOUT EXERCISE RENDERED')