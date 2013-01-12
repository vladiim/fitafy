class window.WorkoutExerciseOrderer
  constructor: (@template_renderer = new HoganTemplateBuilder) ->
    @mustache = "app/templates/workout_exercises/show"

  init: ->
    @links = $( 'a.change_workout_exercise_order i' )

    @links.on 'click', (event) =>
      @icon = $( event.target )
      @link = @icon.parent('a')
      @setAttributes()
      @findCounterPart()
      @swapWorkoutExercises()
      @unbindAndCreateNew()
      event.preventDefault()

  setAttributes: =>
    @order     = @link.data('order')
    @direction = @link.data('move')
    @new_order = if @direction is 'down' then @order + 1 else @order - 1
    @parent    = @link.parents('li.workout_exercise')
    @url       = @link.attr('href')
    @param     = @setParam(@new_order)

  findCounterPart: =>
    @counterpart       = $("li.workout_exercise.#{@new_order}")
    @counterpart_url   = @counterpart.find('a').attr('href')
    @counterpart_order = @order
    @counterpart_param = @setParam(@counterpart_order)

  swapWorkoutExercises: =>
    @updateWorkoutExercise()
    @updateCounterpart()

  updateWorkoutExercise: =>
    @putViaAjax(@url, @param)

  updateCounterpart: =>
    @putViaAjax(@counterpart_url, @counterpart_param, 'counterpart')

  putViaAjax: (url, param, type) =>
    $.ajax {
      url:      "#{url}?#{param}",
      type:     'PUT',
      dataType: 'json',

      success: (workout_exercise) => @renderWorkoutExercise(workout_exercise, type)
      failure: => alert("Something went wrong updating the exercise order, try again.")
    }

  renderWorkoutExercise: (workout_exercise, type) =>
    if type is 'counterpart' then @replace(@parent, workout_exercise) else @replace(@counterpart, workout_exercise)

  replace: (node, workout_exercise) =>
    node.replaceWith(@template_renderer.render(@mustache, workout_exercise))

  setParam: (order_number) =>
    $.param({ workout_exercise: { order_number: order_number } })

  unbindAndCreateNew: =>
    @links.unbind 'click'
    orderer = new WorkoutExerciseOrderer
    orderer.init()

$ ->
  workout_exercise = $( 'li.workout_exercise' )
  if workout_exercise.length > 0
    @orderer = new WorkoutExerciseOrderer
    @orderer.init()

    document.body.addEventListener 'DOMNodeInserted', (event) =>
      @element = $( event.target )

      if element.hasClass('workout_exercise')
        # orderer = new WorkoutExerciseOrderer
        @orderer.init()