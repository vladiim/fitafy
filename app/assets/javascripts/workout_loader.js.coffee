class window.WorkoutLoader
  constructor: (@template_renderer = new HoganTemplateBuilder) ->
    @ul  = $("#workout_list")
    @mustache = "app/templates/workouts/workouts_index"

  url: => @ul.data("json-url")

  fetchAndAddWorkouts: => $.getJSON(@url(), @render)

  text: => @workouts.responseText

  render: (workouts) => @addWorkout(workout) for workout in workouts

  addWorkout: (workout) => @ul.append(@template_renderer.render(@mustache, workout))

# class window.WorkoutLoader
#   constructor: (@page=1) ->
#     @windowScrollCheck()

#   windowScrollCheck: =>
#     $(window).scroll(@check)

#   check: =>
#     @addMoreWorkouts() if @nearBottom()

#   nearBottom: =>
#     $(window).scrollTop() > $(document).height() - $(window).height() - 30