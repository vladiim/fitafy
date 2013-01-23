@WorkoutExerciseSetDetailsForm =

  init: ->
    @links = $( '.workout_exercise_set_details > tbody > tr > td > a' )
    @linkListener()

  linkListener: ->
    @links.on 'click', (event) =>
      @link = $( event.target )
      WorkoutExerciseSetDetailsForm.linkClicked()
      event.preventDefault()

  linkClicked: ->
    @links.unbind 'click'
    # REMEMBER TO REBIND AFTER AJAX POSTED

    @setVariables()
    @changeLinkValue()
    @findAllSetDetails()
    @updateAttributes()

  setVariables: ->
    @url         = @link.attr('href')
    @direction   = @link.data('direction')
    @value       = @link.data('value')
    @type        = @link.data('type')
    @parent      = @links.parents('li.workout_exercise')
    @sets        = @parent.find('tr.set')

  changeLinkValue: ->
    new_value = @value + 1
    # new_value = if @direction == 'up'
    #   @value + 1
    # else if @direction == 'down'
    #   @value -1
    @link.parents("td.#{@type}").data('value', new_value)

  findAllSetDetails: ->
    @set_details = {}
    @findEachSetDetails(set) for set in @sets

  findEachSetDetails: (set) ->
    number = $(set).data('value')
    reps   = $(set).find('td.reps').data('value')
    weight = $(set).find('td.weight').data('value')
    @set_details[number] = {reps: reps, weight: weight}

  updateAttributes: ->