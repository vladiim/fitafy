class window.ExerciseOrderer
  constructor: ->
    @up_buttons = $("i.up_icon")
    @down_buttons = $("i.down_icon")

  init: ->
    $(@up_buttons).on "click", (event) =>
      @$up_button = $(event.target)
      @position = parseInt(@$up_button.attr("id"))
      @swapPositions()

    $(@down_buttons).on "click", (event) =>
      @$down_button = $(event.target)
      @position = parseInt(@$down_button.attr("id"))
      @swapPositionsDown()

  swapPositions: ->
    @swapIds()

  swapIds: ->
    @findDownButton()
    @findSwapButtons()
    @$up_button.attr("id", @position - 1)
    $(@$down_button).attr("id", @position - 1)
    @$swap_up_button.attr("id", @position)
    $(@$swap_down_button).attr("id", @position)

  findDownButton: ->
    for button in @down_buttons
      @$down_button = button if parseInt(button.id) == @position

  findSwapButtons: ->
    @$swap_up_button = $(".up_icon##{@position - 1}")
    for button in @down_buttons
       @$swap_down_button = button if parseInt(button.id) == (@position - 1)

  @swapPositionsDown: ->
    console.log("fuck off")
    @upButton = $(".up_icon##{@position}")
    console.log(@upButton)

$ ->
  orderer = new ExerciseOrderer
  orderer.init()