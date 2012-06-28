jQuery ($) ->

  ChangeTab = (e) ->
    e.preventDefault()
    $('p#tab_sort_by a.active').removeClass('active')
    $(@).addClass('active')

    # hide the current tab's content
    $('div#workout_exercises_form table').hide()

  $('p#tab_sort_by a').bind
    click: ChangeTab

  # choose the first muscle tab by default
  $("p#tab_sort_by a:eq(0)").click()

  root = exports ? window # exports for node.js global
  root.ChangeTab = ChangeTab