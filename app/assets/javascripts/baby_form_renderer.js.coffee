class window.BabyFormRenderer

  constructor: ->
    @group = $(".baby_form_group")
    @value = $(".baby_form_value")
    @link  = $("a.baby_form_link")

  init: ->
    @link.on 'click', (event) =>
      @changeValue()
      @changeLinkText()
      @group.append(@babyForm())
      event.preventDefault()

  changeValue: =>
    $(@value).text("")

  changeLinkText: =>
    $(@link).text('cancel')

  babyForm: =>
    @group.append("<%= escape_javascript(render partial: 'shared/baby_form', locals: {form_attribute: 'instructions', form_element: '/users/1/workouts/22'}")

$ ->
  renderer = new BabyFormRenderer
  renderer.init()