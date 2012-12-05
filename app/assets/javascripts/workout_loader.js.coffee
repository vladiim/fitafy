class window.WorkoutLoader
  constructor: (@template_renderer = new HoganTemplateBuilder) ->
    @ul       = $("#workout_list")
    @mustache = "app/templates/workouts/workouts_index"
    @resetPage()

  windowScrollCheck: => $(window).scroll(@check)

  check: => @reloadWorkouts() if @nearBottom()

  nearBottom: => $(window).scrollTop() > $(document).height() - $(window).height() - 30

  resetPage: => @page = 0

  # addMoreWorkouts: =>
    # @page++
    # $.getJSON(@url(), @render)

  reloadWorkouts: (muscles=[]) =>
    if muscles.length == 0
      $.getJSON(@url(), @render)
    else
      param = $.param( { muscles: muscles } )
      $.getJSON("workouts?#{param}", @render)

  url: => @ul.data("json-url")

  render: (workouts) => @addWorkout(workout) for workout in workouts

  addWorkout: (workout) => @ul.append(@template_renderer.render(@mustache, workout))

# TODO: on @reloadWorkouts() need to resetParams() 
# If they're the same, increment @page else @resetPage()

$ ->
  loader = new WorkoutLoader
  loader.windowScrollCheck()