class window.WorkoutExerciseForm
  constructor: ->
    @tag_links = $(".tag_link")

  init: ->
    $(@tag_links).on "click", (event) ->
      $tag_link = $(event.target)
      tag = $tag_link.attr('id')
      $(".exercise_list_item").toggleClass("hidden")
      # $(".exercise_list_item##{tag}").toggleClass("hidden")

$ ->
  workout_exercise_form = new WorkoutExerciseForm
  workout_exercise_form.init()