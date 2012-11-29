class window.TagLinkSorter
  constructor: (@loader = new WorkoutLoader) ->
    @tagLinks        = $(".tag_link")
    @inactiveTags    = $("#inactive_tags")
    @activeTags      = $("#active_tags")
    @activeTagNames  = new Array
    @showTagsButton  = $("#show_tags_button")

  init: ->

    $(@showTagsButton).on "click", (event) =>
      $(@inactiveTags).toggleClass("hidden")
      event.preventDefault()

    $(@tagLinks).on "click", (event) =>
      $tag_link = $(event.target)
      @moveTag($tag_link)
      event.preventDefault()

  workouts: ->
    $("li.workout_item")

  getTag: (tag_link) ->
    tag_link.text().toLowerCase()

  moveTag: (tag_link) ->
    if $(tag_link).hasClass("inactive")
      @moveToActiveTags(tag_link)
    else
      @moveToInactiveTags(tag_link)

  moveToActiveTags: (tag_link) ->
    @makeTagLinkActive(tag_link)
    $(@activeTags).append(tag_link)
    @addTagToActive(@getTag(tag_link))
    @showActiveTagWorkouts()

  moveToInactiveTags: (tag_link) ->
    @makeTagLinkInactive(tag_link)
    $(@inactiveTags).append(tag_link)
    @removeTagFromActive(@getTag(tag_link))
    @showActiveTagWorkouts()

  makeTagLinkActive: (tag_link) ->
    $(tag_link).removeClass("inactive").addClass("active")

  makeTagLinkInactive: (tag_link) ->
    $(tag_link).removeClass("active").addClass("inactive")

  showActiveTagWorkouts: ->
    if @activeTagNames.length is 0
      @showAllWorkouts()
    else
      @hideWorkouts()
      @showActiveWorkouts()

  addTagToActive: (tag) ->
    @activeTagNames.push(tag)

  removeTagFromActive: (tag) ->
    index = @activeTagNames.indexOf(tag)
    @activeTagNames.splice(index, 1)

  showAllWorkouts: ->
    $(@workouts()).removeClass("hidden")

  showActiveWorkouts: ->
    $("ul#workout_list > li").remove()
    @loader.reloadWorkouts(@activeTagNames)
    # tags = ""
    # for tag in @activeTagNames
    #   tags += ".#{tag}"
    # $("article#{tags}").parent("li").removeClass("hidden")

  hideWorkouts: ->
    $(@workouts()).addClass("hidden")

$ ->
  sorter = new TagLinkSorter
  sorter.init()