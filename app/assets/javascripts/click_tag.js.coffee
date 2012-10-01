window.init = ->
  $sort_by          = $(".sort_by_tags")
  $primary_tags     = $(".primary_tags > .remove_tag_link")
  $tag_links        = $(".tag_link")
  $remove_tag_links = $(".muscle_tags > .remove_tag_link")

  $sort_by.click (event) ->
    # $remove_link = $(@).siblings(".muscle_tags")
    $(".muscle_tags").toggleClass("hidden")

  $primary_tags.click (event) ->
    tag_name         = $(@).text();
    $tag_link        = $(".muscle_tags > .tag_link:contains(#{tag_name})")
    $remove_tag_link = $(".muscle_tags > .remove_tag_link:contains(#{tag_name})")
    $tag_link.toggleClass("hidden")
    $remove_tag_link.toggleClass("hidden")
    $(@).toggleClass("hidden")
    event.preventDefault()

  $tag_links.click (event) ->
    $remove_link = $(@).next(".remove_tag_link")
    tag_name     = $(@).text();
    $primary_tag = $(".primary_tags > .remove_tag_link:contains(#{tag_name})")
    $primary_tag.toggleClass("hidden")
    $remove_link.toggleClass("hidden")
    $(@).toggleClass("hidden")
    event.preventDefault()

  $remove_tag_links.click (event) ->
    # $tag_link    = $(@).prev(".tag_link")
    orginal_name = $(@).text()
    length       = orginal_name.length
    tag_name     = orginal_name.slice(0, length - 2)
    $tag_link    = $(".muscle_tags > .tag_link:contains(#{tag_name})")
    $primary_tag = $(".primary_tags > .remove_tag_link:contains(#{tag_name})")
    $primary_tag.toggleClass("hidden")
    $tag_link.toggleClass("hidden")
    $(@).toggleClass("hidden")
    event.preventDefault()

$ ->
  init()