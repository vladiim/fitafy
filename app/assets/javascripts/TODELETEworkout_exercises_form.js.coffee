# class window.ShowBabyWorkoutForm
#   constructor: ->
#     @tag_links = $(".tag_link")

#   init: ->

#     $(@tag_links).on "click", (event) =>
#       $tag_link = $(event.target)
#       tag = @getTagName($tag_link)
#       @hideListItems(tag)

#   getTagName: (tag_link) ->
#     tag_link.attr('class').split(' ')[0]

#   hideListItems: (tag) ->
#     $(".exercise_list_item").toggleClass("hidden")
#     $(".#{tag}.exercise_list_item").toggleClass("hidden")

# $ ->
#   baby_form = new ShowBabyWorkoutForm
#   baby_form.init()