class window.WorkoutForm
  constructor: ->
    @workout_name_link = $(".edit_workout_name")

  init: ->
    $(@workout_name_link).on "click", ->
      $(".edit_workout_name_form").toggleClass("hidden")

$ ->
  workout_form = new WorkoutForm
  workout_form.init()