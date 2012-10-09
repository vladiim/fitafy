class window.WorkoutExerciseForm
  constructor: ->
    @tag_links = $(".tag_link")

  init: ->

    $(@tag_links).on "click", (event) =>
      $tag_link = $(event.target)
      tag = @getTagName($tag_link)
      @hideListItems(tag)

  getTagName: (tag_link) ->
    tag_link.attr('class').split(' ')[0]

  hideListItems: (tag) ->
    $(".exercise_list_item").toggleClass("hidden")
    $(".#{tag}.exercise_list_item").toggleClass("hidden")

$ ->
  workout_exercise_form = new WorkoutExerciseForm
  workout_exercise_form.init()