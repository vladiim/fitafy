class window.WorkoutLoader
  constructor: (@template_renderer = new HoganTemplateBuilder) ->
    @ul       = $("#workout_list")
    @mustache = "app/templates/workouts/workouts_index"

  windowScrollCheck: => $(window).scroll(@check)

  check: => @addMoreWorkouts() if @nearBottom()

  nearBottom: => $(window).scrollTop() > $(document).height() - $(window).height() - 30

  addMoreWorkouts: =>
    # @page++
    $.getJSON(@url(), @render)

  reloadWorkouts: (muscles) =>
    param = $.param( { muscles: muscles } )
    $.getJSON("workouts?#{param}", @render)    

  url: => @ul.data("json-url")

  render: (workouts) => @addWorkout(workout) for workout in workouts

  addWorkout: (workout) => @ul.append(@template_renderer.render(@mustache, workout))

$ ->
  loader = new WorkoutLoader
  loader.windowScrollCheck()