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

# class SelectExercises
#   constructor: (@fetchExercises=null) ->
#     $('p#tab_sort_by a').bind
#       click: @changeTab
#     # if flights fail to load give reload options
#     $('p#tab_sort_by a #error').click (event) =>
#       event.preventDefault()
#       @showFlights $("p#tab_sort_by a").attr("id")
#     showFlights : (activeDiv) ->
#     changeTab : (event) =>

# @selectExercises = new SelectExercises()