class window.WorkoutLoader
  constructor: ->
    @ul  = $("#workout_list")
    @url = @ul.data("json-url")

# class window.WorkoutLoader
#   constructor: (@page=1) ->
#     @windowScrollCheck()

#   windowScrollCheck: =>
#     $(window).scroll(@check)

#   check: =>
#     @addMoreWorkouts() if @nearBottom()

#   nearBottom: =>
#     $(window).scrollTop() > $(document).height() - $(window).height() - 30

#   addMoreWorkouts: =>
#     $(window).unbind('scroll', @check)
#     @render(@JSON())

#   url: =>
#     $("ul#workout_list").data('json-url')

#   template: =>
#     HoganTemplates['workouts_index']

#   JSON: =>
#     $.parseJSON(@acquireJSON())

#   acquireJSON: =>
#     @page++
#     json = $.getJSON(@url(), page: @page)
#     # json.responseText

#   render: (workouts) =>
#     for workout in workouts
#       $("ul#workout_list").append(@template().render(workout)).html()
#     @windowScrollCheck if workouts.length > 0

$ ->
  new WorkoutLoader