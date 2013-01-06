class window.WorkoutDynamicForm extends DynamicForm
  constructor: ->
    @show_forms = $( 'a.show_workout_form' )

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
    @tag           = @show_form.data('tag')
    @url           = @show_form.attr('href')
    @group         = $( ".workout_form_group.#{@tag}" )
    @value         = if @onName() then $( 'h1' ) else @show_form.prev('p')
    @form_node     = $( "div.workout_form.#{@tag}" )
    @input         = $( "input.workout_form[data-tag=#{@tag}]")
    @update_button = $( "button.update_workout_form.#{@tag}")
    @hide_form     = $( "a.hide_workout_form[data-tag=#{@tag}]")
    @initial_text  = @value.text()

  onName: => @tag is 'name'

  updateFormItem: (data) =>
    new_text = data[@tag]
    @value.text(new_text)
    @showValues()
    @hideForm()

  unbindAndCreateNew: =>
    @show_forms.unbind 'click'
    form = new WorkoutDynamicForm
    form.init()

  # updateValue: =>
  #   if @tag is 'instructions' then @instructionParams() else @setsParams()
  #   $.ajax {
  #     url: "#{@url}?#{@param}",
  #     type: 'PUT',
  #     dataType: 'json',

  #     success: (data) => @replaceWorkoutExercise(data)

  #     failure: => alert('Something went wrong o_0 try again')
  #   }

  # replaceWorkoutExercise: (data) =>
  #   @workout_exercise_item.replaceWith(@template_renderer.render(@mustache, data))
  #   @unbindAndCreateNew()

  # instructionParams: =>
  #   @param = $.param( { workout_exercise: { instructions: @input.val() }} )

  # setsParams: =>
  #   @param = $.param( { workout_exercise: { sets: @input.val() }} )

$ ->
  workout_form = $( '.workout_form_group' )
  if workout_form.length > 0
    form = new WorkoutDynamicForm
    form.init()