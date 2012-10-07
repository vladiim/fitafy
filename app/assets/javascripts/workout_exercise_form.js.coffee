class window.WorkoutExerciseForm
  constructor: ->
    @$tag_links = $("#add_workout_exercise > a .tag_link")

  init: ->
    @$tag_links.on "click", ->
      $(".exercise_list_item #back").toggleClass("hidden")