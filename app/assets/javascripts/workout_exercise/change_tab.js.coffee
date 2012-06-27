jQuery ($) ->

  window.ChangeTab = (e) ->
    e.preventDefault()
    $('p#tab_sort_by a.active').removeClass('active')
    $(@).addClass('active')

  $('p#tab_sort_by a').bind
    click: ChangeTab

  # choose the first muscle tab by default
  $("p#tab_sort_by a#abs").click()