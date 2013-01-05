class window.WorkoutExerciseDynamicForm
  constructor: (@template_renderer = new HoganTemplateBuilder) ->
    @show_forms = $( 'a.show_form' )
    @mustache   = "app/templates/workout_exercises/show"

  init: ->
    @show_forms.on 'click', (event) =>
      @show_form = $( event.target )
      @storeVariables()
      @unbindAndCreateNew()
      @triggerListeners()
      @hideValues()
      @showForm()
      event.preventDefault()

  storeVariables: =>
    @workout_exercise_item = @show_form.parents('li.workout_exercise')    
    @tag           = @show_form.data('tag')
    @value         = @show_form.data('value')
    @form_group    = @show_form.parents('.workout_form_group')
    @text_node     = @show_form.prev('p')
    @form_node     = @show_form.next(".workout_exercise_form.#{@tag}")
    @input         = $(@form_node).find('input')
    @hide_form     = $(@form_node).find('a.hide_form')
    @update_button = $(@form_node).find("button.update_workout_exercise_form.#{@tag}")
    @initial_text  = @text_node.text()

  triggerListeners: =>
    @hideFormListener()
    @updateFormListener()

  hideFormListener: =>
    @hide_form.on 'click', (event) =>
      @hideForm()
      @showValues()
      event.preventDefault()

  updateFormListener: =>
    @update_button.on 'click', (event) =>
      if @input.val() is @initial_text then @sameText() else @updateValue()
      event.preventDefault()

  enterKeyListener: =>
    @input.on 'keydown', (event) =>
      @updateValue() if event.which is 13

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
    @enterKeyListener()

  hideForm: =>
    @form_node.addClass('hidden')

  unbindAndCreateNew: =>
    @show_forms.unbind 'click'
    form = new WorkoutExerciseDynamicForm
    form.init()

  sameText: =>
    alert("Sheesh! The #{@tag} are alreay #{@initial_text} - try changing 'em!")

  updateValue: =>
    if @tag is 'instructions' then @instructionParams() else @setsParams()
    $.ajax {
      url: "/workout_exercises/#{@value}?#{@param}",
      type: 'PUT',
      dataType: 'json',

      success: (data) => @replaceWorkoutExercise(data)

      failure: => alert('Something went wrong o_0 try again')
    }

  replaceWorkoutExercise: (data) =>
    @workout_exercise_item.replaceWith(@template_renderer.render(@mustache, data))
    @unbindAndCreateNew()

  instructionParams: =>
    @param = $.param( { workout_exercise: { instructions: @input.val() }} )

  setsParams: =>
    @param = $.param( { workout_exercise: { sets: @input.val() }} )

$ ->
  workout_exercise_present = $( 'ul.workout_exercises' )
  if workout_exercise_present.length > 0
    form = new WorkoutExerciseDynamicForm
    form.init()