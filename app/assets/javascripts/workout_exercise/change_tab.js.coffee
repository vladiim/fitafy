jQuery ($) ->

  window.ChangeTab = class ChangeTab
    constructor: (@tab) ->
    $('p#workout_exercise_sort_by a').removeClass("active")

  # window.ChangeTab = class ChangeTab
  #   constructor: (e) ->
  	  # e.preventDefault()
  	  # $('p#workout_exercise_sort_by a').removeClass("active")
  	  # 								 .bind("click", changeTab)
  	  # $(@).addClass("active")
  	  #     .unbind("click", changeTab)
  	  # showExercises $(@).attr("id")

  # showExercises = (activeDiv) ->
  #   $("div#workout_exercises_form table").hide()
  #   $(activeDiv).show()
  #   fetchExercises activeDiv

  # change_tab = new ChangeTab

  # $('p#workout_exercise_sort_by a').bind
  #   click: change_tab

  # select the first tab by default
  # $('p#workout_exercise_sort_by a:eq(2)').click() not working