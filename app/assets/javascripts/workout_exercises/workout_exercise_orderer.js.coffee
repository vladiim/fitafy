@WorkoutExerciseOrderer =

  init: ->
    @links    = $( 'a.change_workout_exercise_order i' )    
    @mustache = 'app/templates/workout_exercises/show'
    @renderer = HoganTemplateBuilder
    @linkListener()

  linkListener: ->
    @links.on 'click', (event) =>
      @link = $( event.target ).parent('a')
      WorkoutExerciseOrderer.linkClicked()
      event.preventDefault()

  linkClicked: ->
    @setAttributes()
    @findCounterPart()
    @swapWorkoutExercises()

  setAttributes: ->
    @order     = @link.data('order')
    @direction = @link.data('move')
    @new_order = if @direction is 'down' then @order + 1 else @order - 1
    @parent    = @link.parents('li.workout_exercise')
    @tbody     = @parent.find('tbody')
    @url       = @link.attr('href')
    @param     = @setParam(@new_order)
    @workout_exercise = @link.data('workout-exercise')

  findCounterPart: ->
    @counterpart       = $("li.workout_exercise.#{@new_order}")
    @counterpart_url   = @counterpart.find('a').attr('href')
    @counterpart_order = @order
    @counterpart_param = @setParam(@counterpart_order)
    @counterpart_workout_exercise = @counterpart.data('workout-exercise')

  swapWorkoutExercises: ->
    @updateWorkoutExercise()
    @updateCounterpart()

  updateWorkoutExercise: ->
    @putViaAjax(@url, @param)

  updateCounterpart: ->
    @putViaAjax(@counterpart_url, @counterpart_param, 'counterpart')

  putViaAjax: (url, param, type) ->
    $.ajax {
      url:      "#{url}?#{param}",
      type:     'PUT',
      dataType: 'json',

      success: (workout_exercise) => WorkoutExerciseOrderer.renderWorkoutExercise(workout_exercise, type)
      failure: => alert("Something went wrong updating the exercise order, try again.")
    }

  renderWorkoutExercise: (workout_exercise, type) ->
    # if type is 'counterpart' then @tbody = $("tbody[data-workout-exercise='#{@counterpart_workout_exercise}'") else $("tbody[data-workout-exercise='#{@workout_exercise}'")
    if type is 'counterpart' then @replace(@parent, workout_exercise) else @replace(@counterpart, workout_exercise)

  replace: (node, workout_exercise) ->
    parsed_set_details = $.parseJSON(workout_exercise.set_details)
    workout_exercise['javascript_set_details'] = parsed_set_details.map (set_detail) => HoganTemplateBuilder.render('app/templates/workout_exercises/set_detail', set_detail)
    node.replaceWith(@renderer.render(@mustache, workout_exercise))
    # @renderSetDetails(workout_exercise.set_details)

  # renderSetDetails: (set_details) ->
  #   parsed_set_details = $.parseJSON(set_details)
  #   @renderSetDetail(set_detail) for set_detail in parsed_set_details

  # renderSetDetail: (set_detail) ->
  #   @tbody.append("FUCK OOFFF")
  #   # console.log(@tbody)
  #   @tbody.append(@renderer.render('app/templates/workout_exercises/set_detail', set_detail))


  # renderSetDetails: (set_details) ->
  #   # console.log(set_details)
  #   parsed_set_details = $.parseJSON(set_details)
  #   console.log(parsed_set_details)
  #   @renderSetDetails(set_detail) for set_detail in parsed_set_details

  # renderSetDetail: (set_detail) ->
  #   # console.log(@tbody)
  #   $('tbody').append(@renderer.render('app/templates/workout_exercises/set_detail', set_detail))
    # console.log(workout_exercise.set_details)
    # console.log($(node).find('article > table > tbody').length)

  setParam: (order_number) ->
    $.param({ workout_exercise: { order_number: order_number } })

ready = ->
  workout_exercise = $( 'li.workout_exercise' )
  if workout_exercise.length > 0 then WorkoutExerciseOrderer.init()

  document.body.addEventListener 'DOMNodeInserted', (event) =>
    element = $( event.target )
    if element.hasClass('workout_exercise') then WorkoutExerciseOrderer.init()

# $(document).on 'page:load', ready
$ -> ready()