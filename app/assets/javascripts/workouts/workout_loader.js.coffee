@WorkoutLoader =

  init: ->
    @page              = 0
    @muscles           = []
    @ul                = $("#workout_list")
    @allWorkoutsLoaded = false
    @renderer          = new HoganTemplateBuilder
    @windowScrollCheck()

  windowScrollCheck: -> $(window).bind "scroll", -> WorkoutLoader.check()

  check: -> if @nearBottom() then @loadMoreWorkouts() else false

  nearBottom: -> $(window).scrollTop() > $(document).height() - $(window).height() - 30

  resetScrollChecker: ->
    $(window).unbind("scroll")
    @windowScrollCheck()

  loadMoreWorkouts: ->
    return if @allWorkoutsLoaded
    @page++
    @getAndRenderWorkouts()
    @resetScrollChecker()

  reloadWorkouts: (muscles) ->
    @allWorkoutsLoaded = false
    @page    = 0
    @muscles = muscles
    @getAndRenderWorkouts()

  getAndRenderWorkouts: ->
    $.getJSON("#{@url}?#{@generateParam()}", @render)

  generateParam: -> $.param( { muscles: @muscles, page: @page } )

  render: (workouts) =>
    if workouts.length then WorkoutLoader.addWorkouts(workouts) else WorkoutLoader.noMoreWorkouts()

  addWorkouts: (workouts) ->
    @addWorkout(workout) for workout in workouts

  addWorkout: (workout) -> @ul.append(@renderer.render('app/templates/workouts/index', workout))

  noMoreWorkouts: ->
    $(".end_of_workouts > p").text("No more workouts!")
    @allWorkoutsLoaded = true