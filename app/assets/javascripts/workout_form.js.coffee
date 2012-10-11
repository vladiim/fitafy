class window.WorkoutForm
  constructor: ->
     @links = $(".edit_workout")

  init: ->
    $( @links ).on "click", (event) =>
      $link = $(event.target)
      tag   =  @getTag ($link)
      @toggleForm(tag)

  getTag: (link) ->
    link.attr("class").split(' ')[1]

  toggleForm: (type) ->
    $(".edit_workout_form.#{type}").toggleClass("hidden")

$ ->
  workout_form = new WorkoutForm
  workout_form.init()