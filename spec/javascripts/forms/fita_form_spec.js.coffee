describe 'FitaForm', ->
  beforeEach ->
    loadFixtures 'fita_form.html'
    FitaForm.init()
    @input     = $('#input1')
    @controls  = $('.controls.1')
    @input2    = $('#input2')
    @controls2 = $('.controls.2')

  describe 'focus on input', ->
    beforeEach -> @input.trigger('focus')

    it 'adds the right classes to the right control', ->
      expect(@controls).toHaveClass('parent-focus')
      expect(@controls).toHaveClass('parent-active')
      expect(@controls2).not.toHaveClass('parent-focus')
      expect(@controls2).not.toHaveClass('parent-active')

    # it 'adds the right classes to the right label', ->
    #   expect(@label).toHaveClass('label-focus')
    #   expect(@label).toHaveClass('label-active')
    #   expect(@label2).not.toHaveClass('label-focus')
    #   expect(@label2).not.toHaveClass('label-active')


    describe 'blur off input', ->
      beforeEach -> @input.trigger('blur')

      it 'removes the classes from the right control', ->
        expect(@controls).not.toHaveClass('parent-focus')
        expect(@controls).not.toHaveClass('parent-active')

      # it 'removes the classes from the right label', ->
      #   expect(@label).not.toHaveClass('label-focus')
      #   expect(@label).not.toHaveClass('label-active')