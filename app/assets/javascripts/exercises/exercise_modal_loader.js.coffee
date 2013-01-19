@ExerciseModalLoader =

  init: ->
    @modal = $( '.modal#add_workout_exercise' )
    ExerciseLoader.init()
    @modalListener()

  modalListener: ->
    @modal.on 'show', =>
      ExerciseLoader.removeAndRenderExercises()
      @changeTitle()

  changeTitle: ->
    $( 'h3.list_title' ).text("#{ExerciseLoader.tag.text()} EXERCISES")

$ ->
  exercise_modal = $( 'div.modal#add_workout_exercise' )
  if exercise_modal.length > 0
    ExerciseModalLoader.init()
    ExerciseLoader.tagListener()