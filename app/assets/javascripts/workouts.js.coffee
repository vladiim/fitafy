class window.WorkoutLoader
  constructor: (@page=1) ->
    @windowScrollCheck()

  windowScrollCheck: =>
    $(window).scroll(@check)

  check: =>
    @addMoreWorkouts() if @nearBottom()

  nearBottom: =>
    $(window).scrollTop() > $(document).height() - $(window).height() - 30

  addMoreWorkouts: =>
    @page++
    $(window).unbind('scroll', @check)
    $.getJSON($("#workout_list").data('json-url'), page: @page, @render)

  render: (workouts) =>
    for workout in workouts
      $("#workout_list").append Mustache.to_html($("#product_template").html(), product)
    @windowScrollCheck if workouts.length > 0

$ ->
  new WorkoutLoader