class window.WorkoutExerciseForm
  contstructor: ->
    @tag_links = $(".tag_link")

  init: ->
    $(@tag_links).on "click", =>
      alert('fuck off cunt')

    # $(@tag_links_selector).on "click", (event) ->
    #   # $tag_link = $(event.target)
    #   # $tag = $tag_link.id()
    #   alert("boom #{event}")
    #   # $(".exercise_list_element").addClass("hidden")
    #   # $exercises.removeClass("hidden") if $exercises.id == $tag
    #   event.preventDefault()

$ ->
  workout_exercise_form = new WorkoutExerciseForm
  workout_exercise_form.init()