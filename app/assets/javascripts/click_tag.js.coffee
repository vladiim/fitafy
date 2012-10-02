# window.toggler =
#   sort_by_selector: ".sort_by_tags"
#   tag_links_selector: ".tag_link"
#   primary_tags_selector: ".primary_tags > .remove_tag_link"
#   remove_tag_links_selector: ".muscle_tags > .remove_tag_link"

#   init: ->
#     toggler = this
#     $(@sort_by_selector).on("click", ->
#       $(".muscle_tags").toggleClass("hidden")
#     $(@tag_links_selector).on "click", (event) ->
#       toggler.toggleOnClick(event)
#     $(@primary_tags_selector).on "click", (event) ->
#       toggler.toggleOnClick(event)
#     $(@remove_tag_links_selector).on "click", (event) ->
#       toggler.toggleOnClick(event)

  # toggleOnClick: (event) ->
  #   @$link = $(event.target)
  #   tag = event.text()
  #   @tag_name = (if @isRemoveTag(tag) ? @editText(tag) : tag)
  #   @toggleLinks()
  #   event.preventDefault()
  
  # toggleLinks: ->
  #   $(".primary_tags > .remove_tag_link:contains(#{@tag_name})").toggleClass("hidden")
  #   $(".muscle_tags > .tag_link:contains(#{@tag_name})").toggleClass("hidden")
  #   $(".muscle_tags > .remove_tag_link:contains(#{@tag_name})").toggleClass("hidden")
  
  # isRemoveTag: (orginal_name) ->
  #   if orginal_name.match(/x$/) then true else false
  
  # editText: (orginal_name) ->
  #   orginal_name.slice(0, -2)
  
  # $tag_links.click (event) ->
  #   tag_name = $(@).text();
  #   toggleLinks(tag_name)
  #   event.preventDefault()
  
  # $primary_tags.click (event) ->
  #   tag_name = $(@).text();
  #   toggleLinks(tag_name)
  #   event.preventDefault()
  
  # $remove_tag_links.click (event) ->
  #   orginal_name = $(@).text()
  #   length       = orginal_name.length
  #   tag_name     = orginal_name.slice(0, length - 2) # get rid of 'x' at the end of tag_name
  #   toggleLinks(tag_name)
  #   event.preventDefault()
  
  # toggleLinks = (tag_name) ->
  #   $(".primary_tags > .remove_tag_link:contains(#{tag_name})").toggleClass("hidden")
  #   $(".muscle_tags > .tag_link:contains(#{tag_name})").toggleClass("hidden")
  #   $(".muscle_tags > .remove_tag_link:contains(#{tag_name})").toggleClass("hidden")

# $ ->
#   toggler.init()


#----------- PRE REFACTOR ------------# 

window.init = ->
  $sort_by          = $(".sort_by_tags")
  $tag_links        = $(".tag_link")
  $primary_tags     = $(".primary_tags > .remove_tag_link")
  $remove_tag_links = $(".muscle_tags > .remove_tag_link")

  $sort_by.click (event) ->
    $(".muscle_tags").toggleClass("hidden")

  $tag_links.click (event) ->
    tag_name = $(@).text();
    toggleLinks(tag_name)
    event.preventDefault()

  $primary_tags.click (event) ->
    tag_name = $(@).text();
    toggleLinks(tag_name)
    event.preventDefault()

  $remove_tag_links.click (event) ->
    orginal_name = $(@).text()
    length       = orginal_name.length
    tag_name     = orginal_name.slice(0, length - 2) # get rid of 'x' at the end of tag_name
    toggleLinks(tag_name)
    event.preventDefault()

  toggleLinks = (tag_name) ->
    $(".primary_tags > .remove_tag_link:contains(#{tag_name})").toggleClass("hidden")
    $(".muscle_tags > .tag_link:contains(#{tag_name})").toggleClass("hidden")
    $(".muscle_tags > .remove_tag_link:contains(#{tag_name})").toggleClass("hidden")

$ ->
  init()