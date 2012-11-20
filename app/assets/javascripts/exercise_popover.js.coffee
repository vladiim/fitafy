$ ->
  $("#test").popover("show")

class window.ExercisePopover

  constructor: ->
    @exercise_links = $("a.exercise_ajax_popover")

  init: ->
    $( @exercise_links ).on "click", (event) =>
      @link = $( event.target )
      @id   = @link.attr("id")
      event.preventDefault()
      $.getJSON @link.attr("data-url"), (data) ->
        $(@link).unbind("click")
        $(@id).popover({ title: data.name, content: data.description }).popover("show")

$ ->
  popover = new ExercisePopover
  popover.init()

# http://stackoverflow.com/questions/8130069/load-bootstrap-js-popover-content-with-ajax