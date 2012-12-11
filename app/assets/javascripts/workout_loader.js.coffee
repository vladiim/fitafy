class window.WorkoutLoader
  constructor: (@template_renderer = new HoganTemplateBuilder) ->
    @ul          = $("#workout_list")
    @mustache    = "app/templates/workouts/workouts_index"
    @muscles     = []
    @old_muscles = []
    @resetPage()

  windowScrollCheck: => $(window).bind "scroll", => @check()
  # windowScrollCheck: => $(window).scroll(@check)

  check: =>
    console.log("muscles from scroll: #{@muscles}")
    if @nearBottom()
      @reloadWorkouts(@muscles)
    else false

  reloadWorkouts: (muscles) =>
    @resetMuscles(muscles)
    @incrementOrResetPage()
    @getAndRenderWorkouts()
    $(window).unbind("scroll")
    @windowScrollCheck() # unless @noMoreWorkouts()

  resetMuscles: (muscles) =>
    @old_muscles = @muscles
    @muscles     = muscles
    console.log("muscles: #{@muscles} -- old_muscles: #{@old_muscles}")

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
    console.log("Page pre #: #{@page}")
    if @sameMuscles() then @page++ else @resetPage()
    console.log("Page post #: #{@page}")

  resetPage: => @page = 0

  # return true if both are empty or 
  # each item in the array is equal
  sameMuscles: =>
    return true if @old_muscles is @muscles
    if @old_muscles.length is @muscles.length and for index in @muscles.length
      @muscles[index] is @old_muscles[index]
    then true else false

  noMoreWorkouts: =>
    @page--
    $(".end_of_workouts > p").text("No more workouts!")

  nearBottom: =>
    $(window).scrollTop() > $(document).height() - $(window).height() - 30

$ ->
  loader = new WorkoutLoader
  loader.windowScrollCheck()