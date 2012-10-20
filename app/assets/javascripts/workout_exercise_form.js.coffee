class window.WorkoutExerciseForm
  constructor: ->
    @tag_links = $(".tag_link")
    @parent    = $(".exercise_list")

  init: ->

    $(@tag_links).on "click", (event) =>
      $tag_link = $(event.target)
      @tag      = $tag_link.attr('class').split(' ')[0]
      @hideListItems()
      @showTagItem()
      @changeTitle()

  hideListItems: ->
    $(".exercise_list_item").addClass("hidden")

  showTagItem: ->
    $list_items = $(".#{@tag}.exercise_list_item")
    @parent.prepend($list_items)
    $list_items.removeClass("hidden")

  changeTitle: ->
    $("h3.list_title").text("#{@tag.charAt(0).toUpperCase() + @tag.slice(1)} Exercises")

$ ->
  workout_exercise_form = new WorkoutExerciseForm
  workout_exercise_form.init()