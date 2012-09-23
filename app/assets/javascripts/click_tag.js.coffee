window.init = ->
  $tag_links = $(".tag_link")
  $tag_links.click (event) ->
    # $clicked_link = $(this)
    $remove_link = $(this).siblings(".remove_tag_link")
    $remove_link.toggleClass("hidden")
    $tag_links.toggleClass("hidden")
    event.preventDefault()

$ ->
  init()