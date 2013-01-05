class window.WorkoutExerciseDynamicForm
  constructor: ->
    @show_forms = $( 'a.show_form' )

  init: ->
    @show_forms.on 'click', (event) =>
      @show_form = $( event.target )
      @storeVariables()
      @unbindAndCreateNew()
      @hideFormListener()
      @hideValues()
      @showForm()
      event.preventDefault()

  hideFormListener: =>
    @hide_form.on 'click', (event) =>
      @hideForm()
      @showValues()
      event.preventDefault()

  storeVariables: =>
    @tag          = @show_form.data('tag')
    # @value        = @show_form.data('value')
    @form_group   = @show_form.parents('.workout_form_group')
    @text_node    = @show_form.prev('p')
    @form_node    = @show_form.next(".workout_exercise_form.#{@tag}")
    @input        = $(@form_node).find('input')
    @hide_form    = $(@form_node).find('a.hide_form')
    @initial_text = @text_node.text()

  showValues: =>
    @text_node.removeClass('hidden')
    @show_form.removeClass('hidden')

  hideValues: =>
    @text_node.addClass('hidden')
    @show_form.addClass('hidden')

  showForm: =>
    @form_node.removeClass('hidden')
    @input.val(@initial_text)
    @input.focus()

  hideForm: =>
    @form_node.addClass('hidden')

  unbindAndCreateNew: =>
    @show_forms.unbind 'click'
    form = new WorkoutExerciseDynamicForm
    form.init()

$ ->
  workout_exercise_present = $( 'ul.workout_exercises' )
  if workout_exercise_present.length > 0
    form = new WorkoutExerciseDynamicForm
    form.init()