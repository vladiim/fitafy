class window.WorkoutExerciseForm
  contstructor: ->
    @add_exercise = $(".add_workout_exercise_form")

  init: ->
    $(@add_exercise).on "click", ->
      alert("blah")
      $("#add_workout_exercise").toggleClass("hidden")

$ ->
  workout_exercise_form = new WorkoutExerciseForm
  workout_exercise_form.init()