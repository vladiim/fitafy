class window.WorkoutExerciseDynamicForm
  constructor: ->
    @show_forms = $( 'a.show_form' )

  init: ->
    @show_forms.on 'click', (event) =>
      event.preventDefault()
      @show_form = $( event.target )
      @storeVariables()
      @hideValues()
      @showForm()

  storeVariables: =>
    @tag          = @show_form.data('tag')
    @value        = @show_form.data('value')
    @form_group   = @show_form.parents('.workout_form_group')
    @text_node    = @show_form.prev('p')
    @form_node    = @show_form.siblings('.workout_exercise_instructions_form')
    @input        = $(@form_node).find('input')
    @initial_text = @text_node.text()

  hideValues: =>
    @text_node.addClass('hidden')
    @show_form.addClass('hidden')

  showForm: =>
    @form_node.removeClass('hidden')
    @input.val(@initial_text)
    @input.focus()

$ ->
  workout_exercise_present = $( 'ul.workout_exercises' )
  if workout_exercise_present.length > 0
    form = new WorkoutExerciseDynamicForm
    form.init()