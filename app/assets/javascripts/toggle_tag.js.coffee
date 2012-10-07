class window.ToggleTag
  constructor: ->

  init: ->
      

$ ->
  toggler = new ToggleTag
  toggler.init()

# class window.ToggleTag
#   constructor: ->
#     @sort_by_selector          = ".sort_by_tags"
#     @tag_links_selector        = ".tag_link"
#     @primary_tags_selector     = ".primary_tags > .remove_tag_link"
#     @remove_tag_links_selector = ".muscle_tags > .remove_tag_link"

#   init: ->
#     $(@sort_by_selector).on "click", ->
#       $(".muscle_tags").toggleClass("hidden")

#     $(@tag_links_selector).on "click", (event) =>
#       @toggleOnClick(event)

#     $(@primary_tags_selector).on "click", (event) =>
#       @toggleOnClick(event)

#     $(@remove_tag_links_selector).on "click", (event) =>
#       @toggleOnClick(event)

#   toggleOnClick: (event) ->
#     $link     = $(event.target)
#     tag       = $link.text()
#     @tag_name = if @isRemoveTag(tag) then @removeX(tag) else tag
#     @toggleLinks()
#     event.preventDefault()

#   isRemoveTag: (original_tag_name) ->
#     if original_tag_name.match(/x$/) then true else false

#   removeX: (original_tag_name) ->
#     original_tag_name.slice(0, -2)

#   toggleLinks: ->
#     $(".primary_tags > .remove_tag_link:contains(#{@tag_name})").toggleClass("hidden")
#     $(".muscle_tags > .tag_link:contains(#{@tag_name})").toggleClass("hidden")
#     $(".muscle_tags > .remove_tag_link:contains(#{@tag_name})").toggleClass("hidden")

# $ ->
#   toggler = new ToggleTag
#   toggler.init()