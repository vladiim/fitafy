@SetDetailsRenderer =

  # used to render {{set_details}} within workout_exercises/show.mustache
  # as HoganTemplates doesn't render in js the same as it renders in Ruby

  # in Ruby {{#set_details}} iterates through the array and yields
  # each item to {{>workout_exercise/set_details}}

  # in JS this needs to be rendered in the workout_exercise Object

  render: (workout_exercise) ->
    @workout_exercise = workout_exercise
    @renderer = HoganTemplateBuilder
    @mustache = 'app/templates/workout_exercises/set_detail'
    @addSetDetailsToWorkoutExercise()

  addSetDetailsToWorkoutExercise: ->
    parsed_set_details = $.parseJSON(@workout_exercise.set_details)
    @workout_exercise['javascript_set_details'] = @setDetailsRenderer(parsed_set_details)
    @workout_exercise

  setDetailsRenderer: (set_details) ->
    set_details.map (set_detail) => SetDetailsRenderer.setDetailRenderer(set_detail)

  setDetailRenderer: (set_detail) ->
    @renderer.render(@mustache, set_detail)