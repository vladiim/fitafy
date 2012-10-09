class window.SortWorkouts
  constructor: ->
    @tags = $(".tag")

  init: ->
    $(@tags).on "click", (event) =>
      $tag_link = $(event.target)
      tag       = @getTag($tag_link)
      @hideListItems(tag)
      @markClicked($tag_link)


  getTag: (tag_link) ->
    tag_link.attr("class").split(' ')[0]

  hideListItems: (tag) ->
    $(".workout_item").addClass("hidden")
    $(".#{tag}.workout_item").removeClass("hidden")

  markClicked: (tag_link) ->
    $(tag_link).toggleClass("clicked")

$ ->
  sorter = new SortWorkouts
  sorter.init()