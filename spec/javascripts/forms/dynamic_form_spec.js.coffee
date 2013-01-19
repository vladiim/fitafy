describe 'DynamicForm', ->
  beforeEach ->
    loadFixtures 'workout_dynamic_form.html'
    @input = $( 'input.workout_form[data-tag=name]' )
    DynamicForm.input = @input


  describe 'createParam', ->
    beforeEach ->
      DynamicForm.form_type = 'TYPE'
      DynamicForm.tag       = 'TAG'
      DynamicForm.input.val('INPUT')

    it 'creates params with the type, tag and input value', ->
      expect(DynamicForm.createParam()).toEqual('TYPE%5BTAG%5D=INPUT')

  describe 'updateValue', ->

    beforeEach ->
      DynamicForm.url = 'URL'
      sinon.stub(DynamicForm, 'createParam', ->'PARAM')
      sinon.spy($, 'ajax')
      DynamicForm.updateValue()

    afterEach ->
      $.ajax.restore()
      DynamicForm.createParam.restore()

    it 'uses ajax for the request', ->
      expect($.ajax).toHaveBeenCalled()

    it 'posts to the right url', ->
      expect($.ajax.getCall(0).args[0].url).toEqual("URL?PARAM")

    it 'posts the info to the server', ->
      expect($.ajax.getCall(0).args[0].type).toEqual("PUT")

    it 'uses json as the data type', ->
      expect($.ajax.getCall(0).args[0].dataType).toEqual("json")    

  describe 'enterKeyListener', ->
    beforeEach ->
      sinon.stub(DynamicForm, 'updateValue', -> '')
      DynamicForm.enterKeyListener()
      @keydown = $.Event('keydown')

    afterEach -> DynamicForm.updateValue.restore()

    describe 'enter key pressed', ->
      beforeEach ->
        @keydown.which = 13
        @input.trigger(@keydown)

      it 'updates the value', ->
        expect(DynamicForm.updateValue).toHaveBeenCalled()

    describe 'a key other than enter pressed', ->
      beforeEach ->
        @keydown.which = 14
        @input.trigger(@keydown)

      it 'updates the value', ->
        expect(DynamicForm.updateValue).not.toHaveBeenCalled()

  describe 'click cancel', ->
    beforeEach ->
      sinon.stub(DynamicForm, 'hideForm', -> '')
      sinon.stub(DynamicForm, 'showValues', -> '')
      @hide_form = $( 'a.hide_workout_form[data-tag=name]')
      DynamicForm.hide_form = @hide_form
      DynamicForm.hideFormListener()
      @hide_form.click()

    afterEach ->
      DynamicForm.hideForm.restore()
      DynamicForm.showValues.restore()

    it 'hides the form', ->
      expect(DynamicForm.hideForm).toHaveBeenCalled()

    it 'shows the values', ->
      expect(DynamicForm.showValues).toHaveBeenCalled()

  describe 'values', ->
    beforeEach ->
      @value                = $( 'h1' )
      DynamicForm.value     = @value
      @show_form            = $( 'a.show_workout_form[data-tag=name]' )
      DynamicForm.show_form = @show_form

    describe 'showValues', ->

      it 'shows the text node', ->
        @value.addClass('hidden')
        DynamicForm.showValues()
        expect(@value).not.toHaveClass('hidden')

      it 'shows the show_form link', ->
        @show_form.addClass('hidden')
        DynamicForm.showValues()
        expect(@show_form).not.toHaveClass('hidden')

    describe 'hideValues', ->
      beforeEach -> DynamicForm.hideValues()

      it 'hides the text', ->
        expect(@value).toHaveClass('hidden')

      it 'hides the show_form link', ->
        expect(@show_form).toHaveClass('hidden')

  describe 'form', ->
    beforeEach ->
      @form_node = $( 'div.workout_form.name' )
      DynamicForm.form_node    = @form_node
      DynamicForm.initial_text = 'INITIAL TEXT'
      sinon.spy(DynamicForm, 'enterKeyListener')

    afterEach -> DynamicForm.enterKeyListener.restore()

    describe 'showForm', ->
      beforeEach -> DynamicForm.showForm()

      it 'shows the form', ->
        expect(@form_node).not.toHaveClass('hidden')

      it 'sets the form text as the input value', ->
        expect( $(@form_node ).find('input').val() ).toEqual('INITIAL TEXT')

      it 'listens for the Enter key to be pressed', ->
        expect(DynamicForm.enterKeyListener).toHaveBeenCalled()

    describe 'hideForm', ->
      beforeEach ->
        @form_node.removeClass('hidden')
        DynamicForm.hideForm()

      it 'hides the form node', ->
        expect(@form_node).toHaveClass('hidden')

  describe 'update form', ->
    beforeEach ->
      @update_button            = $( 'button.update_workout_form.name' )
      DynamicForm.update_button = @update_button
      @input                    = $( 'input.workout_form[data-tag=name]' )
      DynamicForm.input         = @input
      DynamicForm.updateFormListener()

    describe 'with the same text', ->
      beforeEach ->
        sinon.stub(DynamicForm, 'sameText', -> true)
        sinon.spy(DynamicForm, 'updateValue')
        DynamicForm.input.val(DynamicForm.initial_text)
        @update_button.click()

      afterEach ->
        DynamicForm.sameText.restore()
        DynamicForm.updateValue.restore()

      it 'lets the user know they have the same text', ->
        expect(DynamicForm.sameText).toHaveBeenCalled()

      it 'doesnt update the value', ->
        expect(DynamicForm.updateValue).not.toHaveBeenCalled()

    describe 'with new text', ->
      beforeEach ->
        sinon.stub(DynamicForm, 'updateValue', -> true )
        sinon.spy(DynamicForm, 'sameText')
        DynamicForm.input.val('NEW VAL')
        @update_button.click()

      afterEach ->
        DynamicForm.sameText.restore()
        DynamicForm.updateValue.restore()

      it 'updates the value', ->
        expect(DynamicForm.updateValue).toHaveBeenCalled()

      it 'doesnt tell the user they have the same text', ->
        expect(DynamicForm.sameText).not.toHaveBeenCalled()

    describe 'sameText', ->
      beforeEach ->
        sinon.stub(window, 'alert')
        DynamicForm.initial_text = 'INITIAL TEXT'
        DynamicForm.tag = 'instructions'
        DynamicForm.sameText()

      afterEach -> window.alert.restore()

      it 'alerts the user that they used the same text', ->
        expect(window.alert).toHaveBeenCalledWith("Sheesh! The instructions are alreay INITIAL TEXT - try changing 'em!")