describe 'DynamicForm', ->
  beforeEach ->
    loadFixtures 'workout_dynamic_form.html'
    @form = new DynamicForm
    @show_form     = $( 'a.show_workout_form[data-tag=name]')
    @tag           = 'name'
    @value         = $('h1')
    @group         = $( '.workout_form_group.name' )
    @form_node     = $( 'div.workout_form.name' )
    @update_button = $( 'button.update_workout_form.name' )
    @input         = $( 'input.workout_form[data-tag=name]' )
    @hide_form     = $( 'a.hide_workout_form[data-tag=name]')
    @form.show_form     = @show_form
    @form.value         = @value
    @form.tag           = @tag
    @form.group         = @group
    @form.form_node     = @form_node
    @form.update_button = @update_button
    @form.input         = @input
    @form.hide_form     = @hide_form
    @form.initial_text = 'INITIAL TEXT'

  describe 'updateValue', ->

    describe 'with instructions', ->
      beforeEach ->
        @param = $.param( { workout_exercise: { instructions: 'INITIAL TEXT' } })
        sinon.stub($, 'ajax')
        @form.url = '/workout_exercises/1'
        @form.dynamic_form_type = 'workout_exercise'
        @form.tag = 'instructions'
        @form.input.val('INITIAL TEXT')
        @form.createParam()
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

  describe 'createParam', ->

    describe 'name', ->
      beforeEach ->
        @form.input.val('NAME INPUT')
        @form.dynamic_form_type = 'workout'
        @form.createParam()

      it 'creates name param', ->
        param = $.param({ workout: {name: 'NAME INPUT'} })
        expect(@form.param).toEqual(param)

  describe 'enterKeyListener', ->
    beforeEach ->
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

  describe 'hideValues', ->
    beforeEach ->
      @form.hideValues()

    it 'hides the text', ->
      expect(@value).toHaveClass('hidden')

    it 'hides the show_form link', ->
      expect(@show_form).toHaveClass('hidden')

  describe 'showForm', ->
    beforeEach ->
      @form.form_node = @form_node
      sinon.spy(@form, 'enterKeyListener')
      @form.showForm()

    it 'shows the form', ->
      expect(@form_node).not.toHaveClass('hidden')

    it 'the form has the text as the input value', ->
      expect( $(@form_node ).find('input').val() ).toEqual('INITIAL TEXT')

    it 'listens for the Enter key to be pressed', ->
      expect(@form.enterKeyListener).toHaveBeenCalled()

  describe 'click cancel', ->
    beforeEach ->
      @form.hideFormListener()
      sinon.spy(@form, 'hideForm')
      sinon.spy(@form, 'showValues')
      @hide_form.click()

    it 'hides the form', ->
      expect(@form.hideForm).toHaveBeenCalled()

    it 'shows the values', ->
      expect(@form.showValues).toHaveBeenCalled()

  describe 'showValues', ->

    it 'shows the text node', ->
      @value.addClass('hidden')
      @form.showValues()
      expect(@value).not.toHaveClass('hidden')

    it 'shows the show_form link', ->
      @show_form.addClass('hidden')
      @form.showValues()
      expect(@show_form).not.toHaveClass('hidden')

  describe 'hideForm', ->
    it 'hides the form node', ->
      @form.hideForm()
      expect(@form_node).toHaveClass('hidden')

  describe 'update form', ->
    beforeEach ->
      @form.updateFormListener()

    describe 'with the same text', ->
      beforeEach ->
        sinon.stub(@form, 'sameText', -> true)
        sinon.spy(@form, 'updateValue')
        @form.input.val(@form.initial_text)
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
      @form.initial_text = 'INITIAL TEXT'
      @form.tag = 'instructions'
      @form.sameText()

    afterEach -> window.alert.restore()

    it 'alerts the user that they used the same text', ->
      expect(window.alert).toHaveBeenCalledWith("Sheesh! The instructions are alreay INITIAL TEXT - try changing 'em!")