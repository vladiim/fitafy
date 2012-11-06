class window.ExerciseOrderer
  constructor: ->
    @up_buttons = $("i.up_icon")

  init: ->
    $(@up_buttons).on "click", (event) =>
      $up_button = $(event.target)
      @increasePosition($up_button)

  increasePosition: ($up_button) ->
    position = parseInt($up_button.attr("id"))
    $down_button = $(".down_icon##{position}")
    $swap_button_1 = $(".up_icon##{position - 1}")
    $swap_button_2 = $(".down_icon##{position - 1}")
    $($up_button).attr("id", position - 1)
    $($down_button).attr("id", position - 1)
    $swap_button_1.attr("id", position)
    $swap_button_2.attr("id", position)

$ ->
  orderer = new ExerciseOrderer
  orderer.init()