@AddExerciseToWorkout =

  init: ->
    @renderer = HoganTemplateBuilder
    @buttons  = $( 'a.add_exercise_to_workout_button' )
    @buttonListener()

  buttonListener: ->
    @buttons.on 'click', (event) =>
      @button = $( event.target )
      @createWorkoutExercise()
      event.preventDefault()

  createWorkoutExercise: ->
    $.ajax {
      url: "/workout_exercises?#{@getParams()}",
      type: 'POST',
      dataType: 'json',

      success: => AddExerciseToWorkout.getAndLoadWorkoutExercises()

      failure: => alert('Sorry something went wrong! Try again...')
    }

  getAndLoadWorkoutExercises: ->
    $.getJSON("/workout_exercises?workout_id=#{@button.data('workout_id')}", @loadWorkoutExercises)
    $(@button).parent($( 'h4' )).effect('highlight', {}, 4500)
    @button.next('p').text('Exercise Added!').fadeIn(200).fadeOut(4500)

  loadWorkoutExercises: (workout_exercises) =>
    $( 'ul.workout_exercises > li' ).remove()
    AddExerciseToWorkout.loadWorkoutExercise(workout_exercise) for workout_exercise in workout_exercises

  loadWorkoutExercise: (workout_exercise) ->
    parsed_set_details = $.parseJSON(workout_exercise.set_details)
    workout_exercise['javascript_set_details'] = @setDetailRenderer(parsed_set_details)
    $( 'ul.workout_exercises' ).append(@renderer.render('app/templates/workout_exercises/show', workout_exercise))

  setDetailRenderer: (set_details) ->
    set_details.map (set_detail) =>
      mustache = 'app/templates/workout_exercises/set_detail'
      HoganTemplateBuilder.render(mustache, set_detail)

  getParams: ->
    $.param( { workout_exercise: { workout_id: @button.data('workout_id'), exercise_id: @button.data('exercise_id') } })

ready = ->
  exercise_modal = $('.modal#add_workout_exercise')
  if exercise_modal.length > 0 then AddExerciseToWorkout.init()

  document.body.addEventListener "DOMNodeInserted", (event) =>
    element = $( event.target )
    if element.hasClass('exercise_list_item') then AddExerciseToWorkout.init()

# $(document).on 'page:load', ready
$ -> ready()