@WorkoutExerciseSetDetailsForm =

  init: ->
    @links = $( 'a.change_workout_exercise_set_details' )
    @icons = $( 'a.change_workout_exercise_set_details > i' )
    @linkListener()

  linkListener: ->
    @links.on 'click', (event) =>
      event.preventDefault()
      @link = $( event.target )
      WorkoutExerciseSetDetailsForm.linkClicked()

    @icons.on 'click', (event) =>
      event.preventDefault()
      @icon = $( event.target )

  linkClicked: ->
    @setVariables()
    @showUpdateButton()
    @updateValues()

  setVariables: ->
    @table_data    = @link.parents('td')
    @text          = @table_data.children('p')
    @value         = @table_data.data('value')
    @direction     = @link.data('direction')
    set_details    = @link.parents('div.set_details')
    @update_button = set_details.children('a.workout_exercise_set_details_update_button')

  showUpdateButton: ->
    @update_button.removeClass('hidden')
    @update_button.addClass('show_update_button')

  updateValues: ->
    @new_value = if @direction == 'up' then @value + 1 else if @direction == 'down' then @value - 1
    @table_data.data('value', @new_value)
    @text.text(@new_value)
    console.log("direction: #{@direction}, valu: #{@value}, new_value = #{@new_value}, table_data = #{@table_data.data('value')}, text: #{@text.text()}")


  # changeLinkValue: ->
  #   new_value = @value + 1
  #   # new_value = if @direction == 'up'
  #   #   @value + 1
  #   # else if @direction == 'down'
  #   #   @value -1
  #   @link.parents("td.#{@type}").data('value', new_value)

  # findAllSetDetails: ->
  #   @set_details = {}
  #   @findEachSetDetails(set) for set in @sets

  # findEachSetDetails: (set) ->
  #   number = $(set).data('value')
  #   reps   = $(set).find('td.reps').data('value')
  #   weight = $(set).find('td.weight').data('value')
  #   @set_details[number] = {reps: reps, weight: weight}

  # updateAttributes: ->

WorkoutExerciseSetDetailsForm.init()