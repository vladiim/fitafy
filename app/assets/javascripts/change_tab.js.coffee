jQuery ($) ->

  $('p#tab_sort_by a').live 'click', ChangeTab

  # choose the first muscle tab by default
  $("p#tab_sort_by a:eq(0)").click()

class @ChangeTab
  constructor: ->
    $tab = $(@)
    # $tab.preventDefault()
    $('p#tab_sort_by a.active').removeClass('active')
    $tab.addClass 'active'

    $("tbody#workout_exercises").hide()

    activeTab = $tab.attr("id")
    # activeTab.show()