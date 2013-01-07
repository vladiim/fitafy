class window.DeleteWorkoutExercise
  constructor: ->
    @delete_buttons = $( 'a.delete_workout_exercise' )

  init: ->
    @delete_buttons.on 'click', (event) =>
      @confirmationAlert()
      @unbindAndCreateNew()
      @delete_button = $( event.target )
      @storeVariables()
      event.preventDefault()

  storeVariables: =>
    @workout_exercise = $(@delete_button).parents('li.workout_exercise')
    @url = @delete_button.attr('href')

  confirmationAlert: =>
    if confirm('Are you sure you want to delete this Exercise from the Workout?')
      @deleteWorkoutExercise()

  unbindAndCreateNew: =>

  deleteWorkoutExercise: =>
    $.ajax {
      url: @url,
      type: 'DELETE',
      dataType: 'json',

      success: (exercises) => @reloadExercises()

      failure: => alert('There was a problem deleting the exercise, try again')
    }

$ ->
  d = new DeleteWorkoutExercise
  d.init()