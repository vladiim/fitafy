@TagLinkSorter =

  init: ->
    @loader            = WorkoutLoader
    @loader.init()
    @tag_links         = $(".tag_link")
    @inactiveTags      = $("#inactive_tags")
    @activeTags        = $("#active_tags")
    @activeTagNames    = new Array
    @show_tags_button  = $("#show_tags_button")
    @tagLinkListener()
    @showTagsButtonListener()

  tagLinkListener: ->
    @tag_links.on 'click', (event) =>
      @tag_link = $(event.target)
      @tag_text = @tag_link.text().toLowerCase().replace(/\s+/g, '_')
      TagLinkSorter.moveTag()
      event.preventDefault()

  showTagsButtonListener: ->
    @show_tags_button.on "click", (event) =>
      $("#inactive_tags").toggleClass('hidden')
      event.preventDefault()

  moveTag: ->
    if @tag_link.hasClass("inactive") then @moveToActiveTags() else @moveToInactiveTags()

  moveToActiveTags: ->
    @makeTagLinkActive()
    $(@activeTags).append(@tag_link)
    @addTagToActive()
    @showActiveTagWorkouts()

  moveToInactiveTags: ->
    @makeTagLinkInactive()
    $(@inactiveTags).append(@tag_link)
    @removeTagFromActive()
    @showActiveTagWorkouts()

  makeTagLinkActive: ->
    @tag_link.removeClass("inactive").addClass("active")

  makeTagLinkInactive: ->
    @tag_link.removeClass("active").addClass("inactive")

  addTagToActive: -> @activeTagNames.push(@tag_text)

  removeTagFromActive: ->
    index = @activeTagNames.indexOf(@tag_text)
    @activeTagNames.splice(index, 1)

  showActiveTagWorkouts: ->
    $(@workouts()).remove()
    @loader.reloadWorkouts(@activeTagNames)

  workouts: -> $("li.workout_item")