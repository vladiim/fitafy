@FitaForm =

  init: ->
    @initVariables()
    @inputListener()

  initVariables: ->
    @form     = $('.fita_form')
    @controls = @form.find('.controls')
    @inputs    = @controls.find('input')

  inputListener: ->
    @inputs.on 'focus', (event) =>
      @input   = $(event.target)
      @control = @input.parents('.controls')
      console.log('focus'); FitaForm.focussed()

  offInputListener: ->
    @input.on 'blur', => FitaForm.unfocussed()

  focussed: ->
    @control.addClass('parent-focus')
    @control.addClass('parent-active')
    @offInputListener()

  unfocussed: ->
    @control.removeClass('parent-focus')
    @control.removeClass('parent-active')

ready = ->
  fita_form_present = $( '.fita_form' )
  if fita_form_present.length > 0 then FitaForm.init()

  document.body.addEventListener "DOMNodeInserted", (event) =>
    element = $( event.target )
    if element.hasClass('modal-backdrop') then FitaForm.init()

# $(document).on 'page:load', ready
$ -> ready()