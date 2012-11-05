class window.ExerciseOrderer
  constructor: ->
    @up_buttons = $("i.exercise_up")

  init: ->
    $(@up_buttons).on "click", (event) =>
      $up_button = $(event.target)
      @increasePosition($up_button)

  increasePosition: ($up_button) ->
    number = (parseInt($up_button.attr("id")) - 1)
    $($up_button).attr("id", number)
    $swap_button = $(".exercise_up##{number}")
    $swap_button.attr("id", number + 1)

$ ->
  orderer = new ExerciseOrderer
  orderer.init()