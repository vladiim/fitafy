@WorkoutLoader =

  init: (url) ->
    @url               = url
    @page              = 0
    @muscles           = []
    @ul                = $("#workout_list")
    @end_workouts      = $(".end_of_workouts > p")
    @allWorkoutsLoaded = false
    @renderer          = HoganTemplateBuilder
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
    if @notHidden() then @end_workouts.addClass('hidden')
    @page    = 0
    @muscles = muscles
    @getAndRenderWorkouts()

  getAndRenderWorkouts: ->
    $.getJSON("#{@url}?#{@generateParam()}", @render)

  generateParam: -> $.param( { muscles: @muscles, page: @page } )

  render: (workouts) =>
    if workouts.length > 0 then WorkoutLoader.addWorkouts(workouts) else WorkoutLoader.noMoreWorkouts()

  addWorkouts: (workouts) ->
    @addWorkout(workout) for workout in workouts

  addWorkout: (workout) -> @ul.append(@renderer.render('app/templates/workouts/index', workout))

  noMoreWorkouts: ->
    @end_workouts.removeClass('hidden')
    @allWorkoutsLoaded = true

  notHidden: ->
    !@end_workouts.hasClass('hidden')