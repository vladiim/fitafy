class window.WorkoutExerciseDynamicForm extends DynamicForm
  constructor: (@template_renderer = new HoganTemplateBuilder) ->
    @mustache   = "app/templates/workout_exercises/show"
    @dynamic_form_type = 'workout_exercise'

  init: ->
    @show_forms = $( 'a.show_workout_exercise_form' )

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
    @url           = @show_form.attr('href')
    @form_group    = @show_form.parents('.workout_form_group')
    @value         = @show_form.prev('p')
    @form_node     = @show_form.next(".workout_exercise_form.#{@tag}")
    @input         = $(@form_node).find('input')
    @hide_form     = $(@form_node).find('a.hide_workout_exercise_form')
    @update_button = $(@form_node).find("button.update_workout_exercise_form.#{@tag}")
    @initial_text  = @value.text()

  updateFormItem: (data) =>
    @workout_exercise_item.replaceWith(@template_renderer.render(@mustache, data))
    @unbindAndCreateNew()

  unbindAndCreateNew: =>
    @show_forms.unbind 'click'
    form = new WorkoutExerciseDynamicForm
    form.init()

$ ->
  workout_exercise_present = $( 'ul.workout_exercises' )
  if workout_exercise_present.length > 0
    @form = new WorkoutExerciseDynamicForm
    @form.init()

    document.body.addEventListener "DOMNodeInserted", (event) =>
      @element = $( event.target )

      if element.hasClass('workout_exercise')
        # form = new WorkoutExerciseDynamicForm
        @form.init()