class window.WorkoutForm
  constructor: ->
    @edit_links = $("a.edit_workout")

  init: ->

    $(@edit_links).on "click", (event) =>
      $edit_link = $(event.target)
      type = @findType($edit_link)
      @toggleForm(type)

  findType: (link) ->
    link.attr('class').split(' ')[1]

  toggleForm: (type) ->
    $(".edit_workout_form.#{type}").toggleClass("hidden")

$ ->
  workout_form = new WorkoutForm
  workout_form.init()