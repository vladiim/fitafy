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
    @render($.getJSON($("#workout_list").data('json-url'), page: @page))

  render: (workouts) =>
    for workout in workouts
      # $("#workout_list").append Mustache.to_html($("#workout_list").html(), workout)
      $("ul#workout_list").append(HoganTemplates['workouts_index'], workout).html()
    @windowScrollCheck if workouts.length > 0

$ ->
  new WorkoutLoader