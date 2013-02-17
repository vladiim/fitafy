# describe 'EditableItem', ->
#   beforeEach ->
#     loadFixtures 'workout_show.html'
#     @subject = EditableItem
#     @subject.init()

#   describe 'hover over the title', ->
#     beforeEach ->
#       @title       = $( 'h1' )
#       @title_group = $( '.workout_form_group.name')
#       @title_edit  = $( '.show_workout_form[data-tag="name"]')
#       @title.trigger('mouseover')

#     it 'shows the edit link', ->
#       expect(@title_edit).not.toHaveClass('hidden')

#     it 'changes the titles appearance', ->
#       expect(@title).toHaveClass('editable')

#     it 'changes the title groups appearance', ->
#       expect(@title_group).toHaveClass('editable')

#     describe 'mouse leave title', ->
#       beforeEach -> @title.trigger('mouseleave')

#       it 'normalizes the title', ->
#         expect(@title).not.toHaveClass('editable')

#   describe 'hover over notes group', ->
#     beforeEach ->
#       @notes_group = $( '.workout_form_group.notes' )
#       @notes_edit  = $( '.show_workout_form[data-tag="notes"]')
#       @notes_group.trigger('mouseover')

#     it 'sets the notes group as the local item', ->
#       expect(@subject.item).toBe(@notes_group)

#     it 'sets the edit link', ->
#       expect(@subject.edit_link).toBe(@notes_edit)

#     it 'shows the edit link', ->
#       expect(@notes_edit).not.toHaveClass('hidden')

#     it 'changes the notes group appearance', ->
#       expect(@notes_group).toHaveClass('editable')

#     describe 'mouse leaves the notes group', ->
#       beforeEach -> @notes_group.trigger('mouseleave')

#       it 'hides the edit link', ->
#         expect(@notes_edit).toHaveClass('hidden')

#       it 'changes the notes group appearance back', ->
#         expect(@notes_group).not.toHaveClass('editable')

#   