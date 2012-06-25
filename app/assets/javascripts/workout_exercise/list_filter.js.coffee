jQuery ($) ->

  window.Foo = class Foo
    baz: -> "bar"

  class changeTab
    constructor: (e) ->
  	  e.preventDefault()
  	  $('p#workout_exercise_sort_by a').removeClass("active")
  	  								 .bind("click", changeTab)
  	  $(@).addClass("active")
  	      .unbind("click", changeTab)
  	  showExercises $(@).attr("id")

  showExercises = (activeDiv) ->
    $("div#workout_exercises_form table").hide()
    $(activeDiv).show()
    fetchExercises activeDiv

  $('p#workout_exercise_sort_by a').bind
    click: changeTab

  # select the first tab by default
  # $('p#workout_exercise_sort_by a:eq(2)').click() not working