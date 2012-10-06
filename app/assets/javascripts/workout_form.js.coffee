class window.WorkoutForm
  constructor: ->
    @name_link         = $(".edit_workout_name")
    @notes_link        = $(".edit_workout_notes")
    @instructions_link = $(".edit_exercise_instructions")

  init: ->
    $(@name_link).on "click", ->
      $(".edit_workout_name_form").toggleClass("hidden")

    $(@notes_link).on "click", ->
      $(".edit_workout_notes_form").toggleClass("hidden")

    $(@instructions_link).on "click", ->
      $(".edit_exercise_instructions_form").toggleClass("hidden")    

$ ->
  workout_form = new WorkoutForm
  workout_form.init()