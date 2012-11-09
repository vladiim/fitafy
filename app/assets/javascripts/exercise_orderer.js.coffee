class window.ExerciseOrderer
  constructor: ->
    @up_icons   = $("i.up_icon")
    @down_icons = $("i.down_icon")

  init: ->

    @up_icons.on "click", (event) =>
      @$clicked_icon = $(event.target)
      @int           = -1
      @opposite      = "down"
      @findPosition() && @findElements()
      @move() unless @firstIcon()

    @down_icons.on "click", (event) =>
      @$clicked_icon = $(event.target)
      @int           = 1
      @opposite      = "up"
      @findPosition() && @findElements()
      @move() unless @lastIcon()

  findPosition: ->
    @position     = parseInt(@$clicked_icon.attr("data-id"))
    @new_position = @position + @int

  findElements: ->
    @$opposite_icon = $(".#{@opposite}_icon[data-id=#{@position}]")
    @findOldIcons()
    @findText()
    @findExercises()

  findOldIcons: ->
    @$old_up_icon   = $(".up_icon[data-id=#{@new_position}]")
    @$old_down_icon = $(".down_icon[data-id=#{@new_position}]")

  findText: ->
    @$original_text = $("h2[data-id=#{@position}]")
    @$old_text      = $("h2[data-id=#{@new_position}]")

  findExercises: ->
    @$original_exercise = $("li[data-id=#{@position}]")
    @$old_exercise      = $("li[data-id=#{@new_position}]")

  move: ->
    @changeIcons()
    @moveOldIcons()
    @changeText()
    @changeExercises()

  changeIcons: ->
    @$clicked_icon.attr("data-id", @new_position)
    @$opposite_icon.attr("data-id", @new_position)

  moveOldIcons: ->
    @$old_up_icon.attr("data-id", @position)
    @$old_down_icon.attr("data-id", @position)

  changeText: ->
    @$original_text.text(@new_position).attr("data-id", @new_position)
    @$old_text.text(@position).attr("data-id", @position)

  changeExercises: ->
    @changePositions()
    @$original_exercise.attr("data-id", @new_position)
    @$old_exercise.attr("data-id", @position)

  changePositions: ->
    if @opposite == "down"
      @$original_exercise.insertBefore(@$old_exercise)
    else if @opposite == "up"
      @$original_exercise.insertAfter(@$old_exercise)

  firstIcon: -> @position == 1

  lastIcon:  -> @position == @down_icons.length

$ ->
  orderer = new ExerciseOrderer
  orderer.init()