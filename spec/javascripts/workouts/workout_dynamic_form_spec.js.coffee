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

    describe 'then notes clicked', ->
      beforeEach -> $( 'a#notes_link ').click()

      it 'hides the name form', ->
        

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

    it 'stores the form node', ->
      expect(DynamicForm.form_node).toBe($( 'form.workout_form.name' ))

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