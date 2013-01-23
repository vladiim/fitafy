@WorkoutExerciseDynamicForm =

  init: ->
    @renderer   = HoganTemplateBuilder
    @show_forms = $( 'a.show_workout_exercise_form' )
    @formListener()

  formListener: ->
    @show_forms.on 'click', (event) =>
      WorkoutExerciseDynamicForm.show_form = $( event.target )
      DynamicForm.hideCurrentForm()
      @storeVariables()
      @showForm()
      event.preventDefault()

  storeVariables: ->
    DynamicForm.collaborater = WorkoutExerciseDynamicForm
    DynamicForm.form_type    = 'workout_exercise'
    @workout_exercise_item    = @show_form.parents('li.workout_exercise')
    DynamicForm.show_form     = @show_form
    DynamicForm.tag           = @show_form.data('tag')
    DynamicForm.url           = @show_form.attr('href')
    DynamicForm.form_group    = @show_form.parents('.workout_form_group')
    DynamicForm.value         = @show_form.prev('p')
    DynamicForm.form_node     = @show_form.next(".workout_exercise_form.#{DynamicForm.tag}")
    DynamicForm.input         = $( DynamicForm.form_node ).find('input')
    DynamicForm.hide_form     = $( DynamicForm.form_node ).find('a.hide_workout_exercise_form')
    DynamicForm.update_button = $( DynamicForm.form_node ).find("button.update_workout_exercise_form.#{DynamicForm.tag}")
    DynamicForm.initial_text  = DynamicForm.value.text()

  showForm: ->
    DynamicForm.triggerListeners()
    DynamicForm.hideValues()
    DynamicForm.showForm()
    @init()

  updateFormItem: (data) ->
    @workout_exercise_item.replaceWith(@renderer.render("app/templates/workout_exercises/show", data))
    @init()

ready = ->
  workout_exercise_present = $( 'ul.workout_exercises' )
  if workout_exercise_present.length > 0 then WorkoutExerciseDynamicForm.init()

  document.body.addEventListener "DOMNodeInserted", (event) =>
    element = $( event.target )
    if element.hasClass('workout_exercise') then WorkoutExerciseDynamicForm.init()

# $(document).on 'page:load', ready
$ -> ready()