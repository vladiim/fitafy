class window.TagLinkSorter
  constructor: ->
    @allTags = $(".all_tags")
    @showTagsButton = $("#show_tags_button")

  init: ->
    $(@showTagsButton).on "click", (event) =>
      $(@allTags).toggleClass("hidden")
      event.preventDefault()

$ ->
  sorter = new TagLinkSorter
  sorter.init()