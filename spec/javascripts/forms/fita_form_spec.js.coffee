describe 'FitaForm', ->
  beforeEach ->
    loadFixtures 'fita_form.html'
    FitaForm.init()
    @input = $('input')
    @block = $('div.block')
    @label = $('label')

  describe 'focus on input', ->
    beforeEach -> @input.trigger('focus')

    it 'adds the right classes to the block', ->
      expect(@block).toHaveClass('parent-focus')
      expect(@block).toHaveClass('parent-active')

    it 'adds the right classes to the label', ->
      expect(@label).toHaveClass('label-focus')
      expect(@label).toHaveClass('label-active')

    describe 'blur off input', ->
      beforeEach -> @input.trigger('blur')

      it 'removes the classes from the block', ->
        expect(@block).not.toHaveClass('parent-focus')
        expect(@block).not.toHaveClass('parent-active')

      it 'removes the classes from the label', ->
        expect(@label).not.toHaveClass('label-focus')
        expect(@label).not.toHaveClass('label-active')