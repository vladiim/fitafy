@SetDetailsRenderer =

  # used to render {{set_details}} within workout_exercises/show.mustache
  # as HoganTemplates doesn't render in js the same as it renders in Ruby

  # in Ruby {{#set_details}} iterates through the array and yields
  # each item to {{>workout_exercise/set_details}}

  # in JS this needs to be rendered in the workout_exercise Object

  render: (workout_exercise) ->
    parsed_set_details = $.parseJSON(workout_exercise.set_details)
    workout_exercise['javascript_set_details'] = @setDetailRenderer(parsed_set_details)
    workout_exercise

  setDetailRenderer: (set_details) ->
    set_details.map (set_detail) =>
      mustache = 'app/templates/workout_exercises/set_detail'
      HoganTemplateBuilder.render(mustache, set_detail)