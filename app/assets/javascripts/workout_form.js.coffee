class window.WorkoutForm
  constructor: ->
     @edit   = $(".edit_workout")
     @cancel = $(".cancel_edit_workout")

  init: ->
    $( @edit ).on "click", (event) =>
      $link = $(event.target)
      @tag  =  @getTag($link)
      @toggleValue()
      @toggleForm()
      event.preventDefault()

    $( @cancel ).on "click", (event) =>
      $link = $(event.target)
      @tag  =  @getTag($link)
      @toggleValue()
      @toggleForm()
      event.preventDefault()

  getTag: (link) ->
    link.attr("class").split(' ')[1]

  toggleForm: ->
    $(".edit_workout_form.#{@tag}").toggleClass("hidden")

  toggleValue: ->
    console.log($(".edit_workout_value.#{@tag}"))
    $(".edit_workout_value.#{@tag}").addClass("hidden")

$ ->
  workout_form = new WorkoutForm
  workout_form.init()