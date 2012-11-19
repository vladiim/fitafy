class window ExercisePopover
  constructor: ->
    @exercise_links = $("a.exercise_ajax_popover")

  init: ->
    $( @exercise_links ).on "click", (event) =>
      @link = $( event.target )
      $.JSON @link.data("url"), (data) ->
        @link.unbind("click").popover({content: data}).popover("show")

$ ->
  popover = new ExercisePopover
  popover.init()

# http://stackoverflow.com/questions/8130069/load-bootstrap-js-popover-content-with-ajax