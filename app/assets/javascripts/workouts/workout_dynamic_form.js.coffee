@WorkoutDynamicForm =

  init: ->
    @show_forms = $( 'a.show_workout_form' )
    @formListener()

  formListener: ->
    @show_forms.on 'click', (event) =>
      @show_form            = $( event.target )    
      DynamicForm.collaborater = WorkoutDynamicForm
      DynamicForm.form_type    = 'workout'
      DynamicForm.hideCurrentForm()
      @storeVariables()
      @showForm()
      event.preventDefault()

  storeVariables: ->
    DynamicForm.show_form     = @show_form
    DynamicForm.tag           = @show_form.data('tag')
    DynamicForm.url           = @show_form.attr('href')
    DynamicForm.group         = $( ".workout_form_group.#{DynamicForm.tag}" )
    DynamicForm.value         = if @onName() then $( 'h1' ) else @show_form.prev('p')
    DynamicForm.form_node     = $( "div.workout_form.#{DynamicForm.tag}" )
    DynamicForm.input         = $( ".workout_form[data-tag=#{DynamicForm.tag}]")
    DynamicForm.update_button = $( "button.update_workout_form.#{DynamicForm.tag}")
    DynamicForm.hide_form     = $( "a.hide_workout_form[data-tag=#{DynamicForm.tag}]")
    DynamicForm.initial_text  = @removeWhiteSpace(DynamicForm.value.text()).toLowerCase()

  showForm: ->
    @init()
    DynamicForm.triggerListeners()
    DynamicForm.hideValues()
    DynamicForm.showForm()

  onName: -> DynamicForm.tag is 'name'

  removeWhiteSpace: (s) ->
    words = s.match(/\S+/g)         # returns an array of words & whitespace
    words = $.grep(words, (w) -> w) # returns only the words in the array
    words.join(' ').trim()

  updateFormItem: (data) ->
    new_text = data[DynamicForm.tag]
    if @onName() then new_text = new_text.toUpperCase()
    DynamicForm.value.text(new_text)
    DynamicForm.showValues()
    DynamicForm.hideForm()

$ ->
  workout_form = $( '.workout_form_group' )
  if workout_form.length > 0
    WorkoutDynamicForm.init()