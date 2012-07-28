# jQuery ($) ->

# $ ->
#   $('p#tab_sort_by a').click changeTab

#   changeTab = (e) ->
#     e.preventDefault()
#     $('p#tab_sort_by a.active').removeClass "active"
#     $(this).addClass "active"

# $("p#tab_sort_by").live 'click', ->
#   type = $('p#tab_sory_by a').text();


#   $('p#tab_sort_by a').live 'click', ChangeTab

# class @ChangeTab
#   constructor: ->
#     $tab = $(@)
#     $tab.preventDefault()
#     $('p#tab_sort_by a.active').removeClass('active')
#     $tab.addClass 'active'

#   # choose the first muscle tab by default
#   $("p#tab_sort_by a:eq(0)").click()

#     # $("tbody#workout_exercises").hide()
#     showExercises $tab.attr("id")

# @showExercises = (e) ->
#   $('tbody#workout_exercises').html("<p>#{e}</p>")