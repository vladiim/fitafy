class window.WorkoutLoader
  constructor: (@template_renderer = new HoganTemplateBuilder) ->
    @ul          = $("#workout_list")
    @mustache    = "app/templates/workouts/workouts_index"
    @old_muscles = []
    @resetPage()

  windowScrollCheck: => $(window).scroll(@check)

  # need to keep a local copy of muscles
  # otherwise this will just keep reloading
  # all the workouts when no arg is passed in
  reloadWorkouts: (muscles=[]) =>
    @resetMuscles(muscles)
    @incrementOrResetPage()
    @getAndRenderWorkouts()

  resetMuscles: (muscles) =>
    @old_muscles = @muscles if @muscles
    @muscles     = muscles

  getAndRenderWorkouts: =>
    if @muscles.length == 0
      $.getJSON(@url(), @render)
    else
      param = $.param( { muscles: @muscles } )
      $.getJSON("workouts?#{param}", @render)

  render: (workouts) => @addWorkout(workout) for workout in workouts

  addWorkout: (workout) => @ul.append(@template_renderer.render(@mustache, workout))

  incrementOrResetPage: =>
    if @sameMuscles() then @page++ else @resetPage()

  resetPage: => @page = 0

  sameMuscles: =>
    return false if @old_muscles == undefined
    @old_muscles.length is @muscles.length and @old_muscles.every = (elem, i) ->
      elem is @muscles[i]

  check: => @reloadWorkouts() if @nearBottom()

  nearBottom: => $(window).scrollTop() > $(document).height() - $(window).height() - 30

  url: => @ul.data("json-url")

# TODO: on @reloadWorkouts() need to resetParams() 
# If they're the same, increment @page else @resetPage()

$ ->
  loader = new WorkoutLoader
  loader.windowScrollCheck()