class window.ExerciseOrderer
  constructor: ->
    @up_icons = $("i.up_icon")
    @down_icons = $("i.down_icon")

  init: ->
    $(@up_icons).on "click", (event) =>
      @$up_icon = $(event.target)
      @findIcons()
      @moveUp()

  moveUp: ->
    @$up_icon.attr("data-id", @position - 1)
    @$down_icon.attr("data-id", @position - 1)
    @$old_up_icon.attr("data-id", @position)
    @$old_down_icon.attr("data-id", @position)

  findIcons: ->
    @position   = @findPosition(@$up_icon)
    @$down_icon = $(".down_icon[data-id=#{@position}]")
    @$old_up_icon = $(".up_icon[data-id=#{@position - 1}]")
    @$old_down_icon = $(".down_icon[data-id=#{@position - 1}]")    

  findPosition: (icon) ->
    parseInt(icon.attr("data-id"))

$ ->
  orderer = new ExerciseOrderer
  orderer.init()