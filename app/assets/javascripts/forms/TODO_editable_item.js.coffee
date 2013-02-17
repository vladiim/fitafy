# @EditableItem =

#   init: ->
#     @items = $( '.workout_form_group' )
#     @title = $( 'h1' )
#     @showItemsListener()

#   showItemsListener: ->
#     @items.on 'mouseover', (event) =>
#       @item = $( event.target )
#       EditableItem.editItem()

#     @title.on 'mouseover', =>
#       @item = $( '.workout_form_group.name' )
#       EditableItem.titleEditable()
#       EditableItem.editItem()

#    hideItemListener: ->
#      @item.on  'mouseleave', => EditableItem.normalizeItem()
#      # @title.on 'mouseleave', => EditableItem.normalizeItem()

#   editItem: ->
#     @setVariables()
#     @itemIsEditable()
#     @showEditLink()
#     @hideItemListener()

#   normalizeItem: ->
#     @itemNotEditable()
#     @hideEditLink()

#   setVariables: ->
#     @edit_link = @item.find('a.show_workout_form')

#   itemIsEditable: ->
#     @item.addClass('editable')

#   itemNotEditable: ->
#     @item.removeClass('editable')
#     if @title_editable then @titleNotEditable()

#   showEditLink: ->
#     @edit_link.removeClass('hidden')

#   hideEditLink: ->
#     @edit_link.addClass('hidden')

#   titleEditable: ->
#     @title.addClass('editable')
#     @title_editable = true

#   titleNotEditable: ->
#     @title.removeClass('editable')
#     @title_editable = false

# ready = ->
#   editable_workout = $( '#can_manage_workout' )
#   if editable_workout.length > 0 then EditableItem.init()

# # $(document).on 'page:load', ready
# $ -> ready()