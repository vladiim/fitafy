window.init = ->
  $sort_by = $(".sort_by_tags")
  $tag_links = $(".tag_link")
  $remove_tag_links = $(".remove_tag_link")

  $sort_by.click (event) ->
    $remove_link = $(@).siblings(".muscle_tags")
    $remove_link.toggleClass("hidden")

  $tag_links.click (event) ->
    $remove_link = $(@).next(".remove_tag_link")
    $remove_link.toggleClass("hidden")
    $(@).toggleClass("hidden")
    event.preventDefault()

  $remove_tag_links.click (event) ->
    $tag_link = $(@).prev(".tag_link")
    $tag_link.toggleClass("hidden")
    $(@).toggleClass("hidden")
    event.preventDefault()

$ ->
  init()