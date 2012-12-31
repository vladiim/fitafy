class window.ExercisePopover
  constructor: ->
    @links = $( 'a.exercise_ajax_popover' )

  init: ->
    $( @links ).on 'click', (event) =>
      @target_link = $( event.target )
      @showPopoverWithOptions()
      event.preventDefault()

  showPopoverWithOptions: ->
    @setOptions()
    @options()
    @showPopover()

  setOptions: ->
    @title   = @target_link.text()
    url      = @target_link.attr( 'href' )
    @content = $.getJSON(url, @render)

  options: ->
    @target_link.popover({
      title:   @title,
      content: @content
    })

  showPopover: -> @target_link.popover('show')

  render: ->

$ ->
  exercise_popover = new ExercisePopover
  exercise_popover.init()