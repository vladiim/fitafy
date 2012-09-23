window.init = ->
  $tag_links = $(".tag_link")
  $tag_links.click (event) ->
    $remove_link = $(@).siblings(".remove_tag_link")
    $remove_link.toggleClass("hidden")
    $tag_links.toggleClass("hidden")
    event.preventDefault()

$ ->
  init()