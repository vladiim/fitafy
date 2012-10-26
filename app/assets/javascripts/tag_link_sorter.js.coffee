class window.TagLinkSorter
  constructor: ->
    @tagLinks       = $(".tag_link")
    @inactiveTags   = $("#inactive_tags")
    @activeTags     = $("#active_tags")
    @workouts       = $("li.workout_list")
    @showTagsButton = $("#show_tags_button")

  init: ->

    $(@showTagsButton).on "click", (event) =>
      $(@inactiveTags).toggleClass("hidden")
      event.preventDefault()

    $(@tagLinks).on "click", (event) =>
      $tag_link = $(event.target)
      @tag      = $tag_link.text().toLowerCase()
      @moveTag($tag_link)
      event.preventDefault()

  moveTag: (tag_link) ->
    if $(tag_link).hasClass("inactive")
      @moveToActiveTags(tag_link)
    else
      @moveToInactiveTags(tag_link)

  moveToActiveTags: (tag_link) ->
    $(tag_link).removeClass("inactive").addClass("active")
    $(@activeTags).append(tag_link)
    @hideOtherWorkouts()

  moveToInactiveTags: (tag_link) ->
    $(tag_link).removeClass("active").addClass("inactive")
    $(@inactiveTags).append(tag_link)
    @showOtherWorkouts()

  hideOtherWorkouts: ->
    $(@workouts).addClass("hidden")
    tagWorkouts = $(@workouts).find("##{@tag}")
    tagWorkouts.removeClass("hidden")

  showOtherWorkouts: ->
    $(@workouts).removeClass("hidden")

$ ->
  sorter = new TagLinkSorter
  sorter.init()