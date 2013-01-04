class window.WorkoutLoader
  constructor: (@template_renderer = new HoganTemplateBuilder) ->
    @ul          = $("#workout_list")
    @mustache    = "app/templates/workouts/index"
    @muscles     = []
    @page        = 0
    @allWorkoutsLoaded = false

  windowScrollCheck: => $(window).bind "scroll", => @check()

  check: => if @nearBottom() then @loadMoreWorkouts() else false

  nearBottom: => $(window).scrollTop() > $(document).height() - $(window).height() - 30

  loadMoreWorkouts: =>
    return if @allWorkoutsLoaded
    @page++
    @getAndRenderWorkouts()
    @resetScrollChecker()

  reloadWorkouts: (muscles) =>
    @allWorkoutsLoaded = false
    @page    = 0
    @muscles = muscles
    @getAndRenderWorkouts()

  resetScrollChecker: =>
    $(window).unbind("scroll")
    @windowScrollCheck()

  getAndRenderWorkouts: =>
    param = $.param( { muscles: @muscles, page: @page } )
    $.getJSON("/workouts?#{param}", @render)

  render: (workouts) =>
    if workouts.length
      @addWorkout(workout) for workout in workouts
    else
      @noMoreWorkouts()

  addWorkout: (workout) => @ul.append(@template_renderer.render(@mustache, workout))

  noMoreWorkouts: =>
    $(".end_of_workouts > p").text("No more workouts!")
    @allWorkoutsLoaded = true