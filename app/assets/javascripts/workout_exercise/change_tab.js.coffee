jQuery ($) ->

  window.ChangeTab = (e) ->
    e.preventDefault()
    $('p#tab_sort_by a.active').removeClass('active')
    $(@).addClass('active')

  $('p#tab_sort_by a').click(ChangeTab)