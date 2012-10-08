class window.WorkoutExerciseForm
  constructor: ->
    @tag_links = $(".tag_link")

  init: ->
    $(@tag_links).on "click", (event) ->
      $tag_link = $(event.target)
      tag = $tag_link.attr('class').split(' ')[0]
      $(".exercise_list_item").addClass("hidden")
      $(".#{tag}.exercise_list_item").removeClass("hidden")

$ ->
  workout_exercise_form = new WorkoutExerciseForm
  workout_exercise_form.init()