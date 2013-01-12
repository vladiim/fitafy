class window.TagLinkSorter
  constructor: (@loader = new WorkoutLoader) ->
    @tagLinks        = $(".tag_link")
    @inactiveTags    = $("#inactive_tags")
    @activeTags      = $("#active_tags")
    @activeTagNames  = new Array
    @showTagsButton  = $("#show_tags_button")

  init: =>

    @loader.windowScrollCheck()

    $(@showTagsButton).on "click", (event) =>
      $(@inactiveTags).toggleClass("hidden")
      event.preventDefault()

    $(@tagLinks).on "click", (event) =>
      @tag_link = $(event.target)
      @setVariables()
      @moveTag()
      event.preventDefault()

  setVariables: =>
    @tag_text = @tag_link.text().toLowerCase().replace(/\s+/g, '_')

  workouts: => $("li.workout_item")

  moveTag: =>
    if @tag_link.hasClass("inactive") then @moveToActiveTags() else @moveToInactiveTags()

  moveToActiveTags: =>
    @makeTagLinkActive()
    $(@activeTags).append(@tag_link)
    @addTagToActive()
    @showActiveTagWorkouts()

  moveToInactiveTags: =>
    @makeTagLinkInactive()
    $(@inactiveTags).append(@tag_link)
    @removeTagFromActive()
    @showActiveTagWorkouts()

  makeTagLinkActive: =>
    @tag_link.removeClass("inactive").addClass("active")

  makeTagLinkInactive: =>
    @tag_link.removeClass("active").addClass("inactive")

  showActiveTagWorkouts: =>
    $(@workouts()).remove()
    @loader.reloadWorkouts(@activeTagNames, @url)

  addTagToActive: =>
    @activeTagNames.push(@tag_text)

  removeTagFromActive: =>
    index = @activeTagNames.indexOf(@tag_text)
    @activeTagNames.splice(index, 1)