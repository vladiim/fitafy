class window.WorkoutForm
  constructor: ->
    @name_link         = $(".edit_workout_name")
    @notes_link        = $(".edit_workout_notes")
    @level_link        = $(".edit_workout_level")
    @instructions_link = $(".edit_workout_instructions")
    @sets_link         = $(".edit_workout_sets")

  init: ->
    $(@name_link).on "click", =>
      @toggleForm("name")

    $(@notes_link).on "click", =>
      @toggleForm("notes")

    $(@level_link).on "click", =>
      @toggleForm("level")

    $(@instructions_link).on "click", =>
      @toggleForm("instructions")

    $(@sets_link).on "click", =>
      @toggleForm("sets")

  toggleForm: (type) ->
    $(".edit_workout_#{type}_form").toggleClass("hidden")

$ ->
  workout_form = new WorkoutForm
  workout_form.init()