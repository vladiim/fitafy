@FitaForm =

  init: ->
    @initVariables()
    @focusListener()

  initVariables: ->
    @input_clicked    = false
    @textarea_clicked = false
    @form      = $('.fita_form')
    @controls  = @form.find('.controls')
    @inputs    = @controls.find('input')
    @textareas = @controls.find('textarea')

  focusListener: ->
    @inputs.on 'focus', (event) =>
      @input         = $(event.target)
      @input_clicked = true
      @control       = @input.parents('.controls')
      FitaForm.focussed()

    @textareas.on 'focus', (event) =>
      @textarea = $(event.target)
      @textarea_clicked = true
      @control  = @textarea.parents('.controls')
      FitaForm.focussed()

  unfocusListener: ->
    if @input_clicked then @input.on 'blur', => FitaForm.unfocussed()
    if @textarea_clicked then @textarea.on 'blur', => FitaForm.unfocussed()

  focussed: ->
    @control.addClass('parent-focus')
    @control.addClass('parent-active')
    @unfocusListener()

  unfocussed: ->
    @input_clicked    = false
    @textarea_clicked = false
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