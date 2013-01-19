describe 'WorkoutDynamicForm on name', ->
  beforeEach ->
    loadFixtures 'workout_dynamic_form.html'
    WorkoutDynamicForm.init()
    @show_name = $( 'a.show_workout_form[data-tag=name]')
    @h1        = $('h1')

  describe 'show name clicked', ->
    beforeEach ->
      sinon.stub(WorkoutDynamicForm, 'storeVariables', -> '')
      sinon.stub(WorkoutDynamicForm, 'showForm', -> '')
      WorkoutDynamicForm.formListener()
      @show_name.click()

    afterEach ->
      WorkoutDynamicForm.storeVariables.restore()
      WorkoutDynamicForm.showForm.restore()

    it 'sets the show_form', ->
      expect(WorkoutDynamicForm.show_form).toBe(@show_name)

    it 'stores the rest of the variables', ->
      expect(WorkoutDynamicForm.storeVariables).toHaveBeenCalled()

    it 'shows the form', ->
      expect(WorkoutDynamicForm.showForm).toHaveBeenCalled()

  describe 'name storeVariables', ->
    beforeEach ->
      WorkoutDynamicForm.show_form = @show_name
      WorkoutDynamicForm.storeVariables()

    it 'stores the tag', ->
      expect(DynamicForm.tag).toBe(@show_name.data('tag'))

    it 'stores the url', ->
      expect(DynamicForm.url).toEqual('/workouts/1')

    it 'stores the h1 text_node', ->
      expect(DynamicForm.value).toBe(@h1)

    it 'stores the group', ->
      expect(DynamicForm.group).toBe($( '.workout_form_group.name' ))

    it 'stores the form node', ->
      expect(DynamicForm.form_node).toBe($( 'div.workout_form.name' ))

    it 'stores the update button', ->
      expect(DynamicForm.update_button).toEqual($( 'button.update_workout_form.name' ))

    it 'stores the initial value', ->
      expect(DynamicForm.initial_text).toEqual('h1 initial value')

    it 'stoes the input', ->
      expect(DynamicForm.input).toBe($( 'input.workout_form[data-tag=name]' ))

    it 'stores the hide_form', ->
      expect(DynamicForm.hide_form).toBe($( 'a.hide_workout_form[data-tag=name]'))

    it 'onName returns true', ->
      expect(WorkoutDynamicForm.onName()).toEqual(true)

  describe 'upDateFormItem', ->
    beforeEach ->
      @show_name.click()
      @data = { name: "NEW SERVER VALUE", notes: "fuck notes" }
      WorkoutDynamicForm.updateFormItem(@data)
  
    it 'updates the value with the data', ->
      expect(@h1.text()).toEqual('NEW SERVER VALUE')

    it 'shows the value', ->
      expect(@h1).not.toHaveClass('hidden')

    it 'hides the form', ->
      expect($( 'div.workout_form.name' )).toHaveClass('hidden')

describe 'WorkoutDynamicForm on notes', ->
  beforeEach ->
    loadFixtures 'workout_dynamic_form.html'
    @show_notes = $( 'a.show_workout_form[data-tag=notes]')
    @value      = $( '.workout_form_group.notes > div > p' )
    WorkoutDynamicForm.show_form = @show_notes
    WorkoutDynamicForm.storeVariables()

    it 'stores the p text_node', ->
      expect(DynamicForm.value).toBe(@value)

    it 'onName returns false', ->
      expect(WorkoutDynamicForm.onName()).toEqual(false)

# describe 'WorkoutDynamicForm on name', ->
#   beforeEach ->
#     loadFixtures 'workout_dynamic_form.html'
#     @form = new WorkoutDynamicForm
#     @form.init()
#     @show_name          = $( 'a.show_workout_form[data-tag=name]')
#     @name_tag           = @show_name.data('tag')
#     @h1                 = $( 'h1' )
#     @name_group         = $( '.workout_form_group.name' )
#     @name_form_node     = $( 'div.workout_form.name' )
#     @name_update_button = $( 'button.update_workout_form.name' )
#     @name_input         = $( 'input.workout_form[data-tag=name]' )
#     @name_hide_form     = $( 'a.hide_workout_form[data-tag=name]')

#   describe 'show name clicked', ->
#     beforeEach ->
#       sinon.spy(@form, 'storeVariables')
#       sinon.spy(@form, 'unbindAndCreateNew')
#       @show_name.click()

#     it 'sets the show_form', ->
#       expect(@form.show_form).toBe(@show_name)

#     it 'stores the rest of the variables', ->
#       expect(@form.storeVariables).toHaveBeenCalled()

#     it 'unbinds itelf and re-instantiates itself', ->
#       expect(@form.unbindAndCreateNew).toHaveBeenCalled()

#   describe 'name storeVariables', ->
#     beforeEach ->
#       @form.show_form = @show_name
#       @form.storeVariables()

#     it 'stores the tag', ->
#       expect(@form.tag).toBe(@name_tag)

#     it 'stores the url', ->
#       expect(@form.url).toEqual('/workouts/1')

#     it 'stores the h1 text_node', ->
#       expect(@form.value).toBe(@h1)

#     it 'stores the group', ->
#       expect(@form.group).toBe(@name_group)

#     it 'stores the form node', ->
#       expect(@form.form_node).toBe(@name_form_node)

#     it 'stores the update button', ->
#       expect(@form.update_button).toEqual(@name_update_button)

#     it 'stores the initial value', ->
#       expect(@form.initial_text).toEqual('h1 initial value')

#     it 'stoes the input', ->
#       expect(@form.input).toBe(@name_input)

#     it 'stores the hide_form', ->
#       expect(@form.hide_form).toBe(@name_hide_form)

#     it 'onName returns true', ->
#       expect(@form.onName()).toEqual(true)

#   describe 'upDateFormItem', ->
#     beforeEach ->
#       @show_name.click()
#       @data = { name: "NEW SERVER VALUE", notes: "fuck notes" }
#       @form.updateFormItem(@data)
  
#     it 'updates the value with the data', ->
#       expect(@h1.text()).toEqual('NEW SERVER VALUE')

#     it 'shows the value', ->
#       expect(@h1).not.toHaveClass('hidden')

#     it 'hides the form', ->
#       expect(@name_form_node).toHaveClass('hidden')

#   describe 'removeWhiteSpace', ->
#     it 'removes white space from a string', ->
#       expect(@form.removeWhiteSpace('  HEADING   BLAH   BLAH   ')).toBe('HEADING BLAH BLAH')

# describe 'WorkoutDynamicForm on notes', ->
#   beforeEach ->
#     loadFixtures 'workout_dynamic_form.html'
#     @form = new WorkoutDynamicForm
#     @show_notes = $( 'a.show_workout_form[data-tag=notes]')
#     @value      = $( '.workout_form_group.notes > div > p' )
#     @form.show_form = @show_notes
#     @form.storeVariables()

#     it 'stores the p text_node', ->
#       expect(@form.value).toBe(@value)

#     it 'onName returns false', ->
#       expect(@form.onName()).toEqual(false)