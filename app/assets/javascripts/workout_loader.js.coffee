class window.WorkoutLoader
  constructor: (@template_renderer = new HoganTemplateBuilder) ->
    @ul          = $("#workout_list")
    @mustache    = "app/templates/workouts/workouts_index"
    @old_muscles = []
    @resetPage()

  windowScrollCheck: => $(window).scroll(@check)

  # need to stop calling server once all the workouts are loaded
  # give message - no more workouts with back & chest
  # maybe put title @ top - workouts 20 to 40 of 80

  reloadWorkouts: (muscles=[]) =>
    @resetMuscles(muscles)
    @incrementOrResetPage()
    @getAndRenderWorkouts()

  resetMuscles: (muscles) =>
    @old_muscles = @muscles if @muscles
    @muscles     = muscles

  getAndRenderWorkouts: =>
    param = $.param( { muscles: @muscles, page: @page } )
    $.getJSON("/workouts?#{param}", @render)

  render: (workouts) =>
    if workouts.length
      @addWorkout(workout) for workout in workouts
    else
      @noMoreWorkouts()

  addWorkout: (workout) => @ul.append(@template_renderer.render(@mustache, workout))

  incrementOrResetPage: =>
    if @sameMuscles() then @page++ else @resetPage()

  resetPage: => @page = 0

  sameMuscles: =>
    return false if @old_muscles == undefined
    @old_muscles.length is @muscles.length and @old_muscles.every = (elem, i) ->
      elem is @muscles[i]

  noMoreWorkouts: =>
    @page--
    $(".end_of_workouts > p").text("No more workouts!")

  check: => @reloadWorkouts() if @nearBottom()

  nearBottom: =>
    $(window).scrollTop() > $(document).height() - $(window).height() - 30

$ ->
  loader = new WorkoutLoader
  loader.windowScrollCheck()