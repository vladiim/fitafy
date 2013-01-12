class window.DeleteWorkoutExercise
  constructor: (@template_renderer = new HoganTemplateBuilder) ->
    @mustache = 'app/templates/workout_exercises/show'

  init: ->
    @delete_buttons = $( 'a.delete_workout_exercise' )

    @delete_buttons.on 'click', (event) =>
      @delete_button = $( event.target )
      @storeVariables()
      # @confirmationAlert()
      @deleteWorkoutExercise()
      @unbindAndCreateNew()
      event.preventDefault()

  storeVariables: =>
    @workout_exercise = $(@delete_button).parents('li.workout_exercise')
    @url = @delete_button.attr('href')

  # confirmationAlert: =>
  #   if confirm('Are you sure you want to delete this Exercise from the Workout?')
  #     @deleteWorkoutExercise()

  deleteWorkoutExercise: =>
    $.ajax {
      url: @url,
      type: 'DELETE',
      dataType: 'json',

      success: (exercises) => @reloadExercises(exercises)

      failure: => alert('There was a problem deleting the exercise, try again')
    }

  reloadExercises: (exercises) =>
    @removeExercises()
    @reloadExercise(exercise) for exercise in exercises
    @unbindAndCreateNew()

  reloadExercise: (exercise) =>
    $( 'ul.workout_exercises' ).append(@template_renderer.render(@mustache, exercise))

  removeExercises: =>
    $( 'ul.workout_exercises > li' ).remove()

  unbindAndCreateNew: =>
    @delete_buttons.unbind 'click'
    deleter = new DeleteWorkoutExercise
    deleter.init()

$ ->
  workout_exercises = $( 'ul.workout_exercises' )
  if workout_exercises.length > 0
    @deleter = new DeleteWorkoutExercise
    @deleter.init()

    document.body.addEventListener "DOMNodeInserted", (event) =>
      @element = $( event.target )

      if element.hasClass('workout_exercise')
        # deleter = new DeleteWorkoutExercise
        @deleter.init()