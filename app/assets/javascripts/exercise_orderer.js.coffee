class window.ExerciseOrderer
  constructor: ->
    @up_icons = $("i.up_icon")
    @down_icons = $("i.down_icon")

  init: ->

    @up_icons.on "click", (event) =>
      @$up_icon = $(event.target)
      @findElements()
      @moveUp() unless @firstIcon()

    @down_icons.on "click", (event) =>
      @$down_icon = $(event.target)
      @findElements()
      @moveDown() unless @lastIcon()

  moveUp: ->
    @$up_icon.attr("data-id", @position - 1)
    @$down_icon.attr("data-id", @position - 1)
    @moveOldIcons()
    @$original_text.text(@position - 1)
    @$old_text.text(@position)

  moveDown: ->
    @$up_icon.attr("data-id", @position + 1)
    @$down_icon.attr("data-id", @position + 1)
    @moveOldIcons()
    @$original_text.text(@position + 1)
    @$old_text.text(@position)

  findElements: ->
    if @$up_icon then @findWithUpIcon() else @findWithDownIcon()

  findWithUpIcon: ->
    @position       = @findPosition(@$up_icon)
    @$down_icon     = $(".down_icon[data-id=#{@position}]")
    @$old_up_icon   = $(".up_icon[data-id=#{@position - 1}]")
    @$old_down_icon = $(".down_icon[data-id=#{@position - 1}]")  
    @$original_text = $("h2[data-id=#{@position}]")
    @$old_text      = $("h2[data-id=#{@position - 1}]")

  findWithDownIcon: ->
    @position       = @findPosition(@$down_icon)
    @$up_icon       = $(".up_icon[data-id=#{@position}]")  
    @$old_up_icon   = $(".up_icon[data-id=#{@position + 1}]")
    @$old_down_icon = $(".down_icon[data-id=#{@position + 1}]")  
    @$original_text = $("h2[data-id=#{@position}]")
    @$old_text      = $("h2[data-id=#{@position + 1}]")

  moveOldIcons: ->
    @$old_up_icon.attr("data-id", @position)
    @$old_down_icon.attr("data-id", @position)

  findPosition: (icon) -> parseInt(icon.attr("data-id"))

  firstIcon: -> @position == 1

  lastIcon: -> @position == @down_icons.length

$ ->
  orderer = new ExerciseOrderer
  orderer.init()