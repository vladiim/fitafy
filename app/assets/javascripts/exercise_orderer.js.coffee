class window.ExerciseOrderer
  constructor: ->
    @up_icons = $("i.up_icon")
    @down_icons = $("i.down_icon")

  init: ->

    @up_icons.on "click", (event) =>
      @$up_icon = $(event.target)
      @findIcons()
      @moveUp() unless @position == 1

    @down_icons.on "click", (event) =>
      @$down_icon = $(event.target)
      @findIcons()
      @moveDown() unless @lastIcon()

  moveUp: ->
    @$up_icon.attr("data-id", @position - 1)
    @$down_icon.attr("data-id", @position - 1)
    @$old_up_icon.attr("data-id", @position)
    @$old_down_icon.attr("data-id", @position)

  moveDown: ->
    @$up_icon.attr("data-id", @position + 1)
    @$down_icon.attr("data-id", @position + 1)
    @$old_up_icon.attr("data-id", @position)
    @$old_down_icon.attr("data-id", @position)

  findIcons: ->
    if @$up_icon
      @position   = @findPosition(@$up_icon)
      @$down_icon = $(".down_icon[data-id=#{@position}]")
      @$old_up_icon   = $(".up_icon[data-id=#{@position - 1}]")
      @$old_down_icon = $(".down_icon[data-id=#{@position - 1}]")  
    else
      @position   = @findPosition(@$down_icon)
      @$up_icon = $(".up_icon[data-id=#{@position}]")  
      @$old_up_icon   = $(".up_icon[data-id=#{@position + 1}]")
      @$old_down_icon = $(".down_icon[data-id=#{@position + 1}]")  

  findPosition: (icon) ->
    parseInt(icon.attr("data-id"))

  lastIcon: ->
    @position == @down_icons.length

$ ->
  orderer = new ExerciseOrderer
  orderer.init()