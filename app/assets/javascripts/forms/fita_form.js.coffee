@FitaForm =

  init: ->
    @initVariables()
    @inputListener()

  initVariables: ->
    @block = $('form.fita_form > fieldset > div.block')
    @label = @block.find('label')
    @input = @block.find('input')

  inputListener: ->
    @input.on 'focus', =>
      FitaForm.focussed()

  offInputListener: ->
    @input.on 'blur', =>
      FitaForm.unfocussed()

  focussed: ->
    @block.addClass('parent-focus')
    @block.addClass('parent-active')
    @label.addClass('label-focus')
    @label.addClass('label-active')
    @offInputListener()

  unfocussed: ->
    @block.removeClass('parent-focus')
    @block.removeClass('parent-active')
    @label.removeClass('label-focus')
    @label.removeClass('label-active')

ready = ->
  fita_form_present = $( '.fita_form' )
  if fita_form_present.length > 0 then FitaForm.init()

  document.body.addEventListener "DOMNodeInserted", (event) =>
    element = $( event.target )
    if element.hasClass('fita_form') then FitaForm.init()

# $(document).on 'page:load', ready
$ -> ready()