@WorkoutExerciseSetDetailsForm =

  init: ->
    @template = HoganTemplateBuilder
    @links    = $( 'a.change_workout_exercise_set_details' )
    @icons    = $( 'a.change_workout_exercise_set_details > i' )
    @linkListener()

  linkListener: ->
    @links.on 'click', (event) =>
      event.preventDefault()
      @link = $( event.target ).parent('a')
      WorkoutExerciseSetDetailsForm.linkClicked()

    @icons.on 'click', (event) => event.preventDefault()

  linkClicked: ->
    @setVariables()
    @showUpdateButton()
    @updateButtonListener()
    @updateValues()

  setVariables: ->
    @url           = @link.attr('href')
    @table_data    = @link.parents('td')
    @text          = @table_data.children('p')
    @value         = @table_data.data('value')
    @type          = @table_data.data('type')
    @direction     = @link.data('direction')
    set_details    = @link.parents('div.set_details')
    @sets          = set_details.find('tr.set')
    @tbody         = @sets.parent()
    @update_button = set_details.children('a.workout_exercise_set_details_update_button')

  showUpdateButton: ->
    @update_button.removeClass('hidden')
    @update_button.addClass('show_update_button')

  hideUpdateButton: ->
    @update_button.addClass('hidden')
    @update_button.removeClass('show_update_button')

  updateButtonListener: ->
    @update_button.unbind 'click'
    @update_button.on 'click', (event) =>
      WorkoutExerciseSetDetailsForm.collectData()
      WorkoutExerciseSetDetailsForm.save()
      event.preventDefault()

  updateValues: ->
    @new_value = @changeValue()
    @table_data.data('value', @new_value)
    @text.text(@newText())

  changeValue: ->
    change_ammount = if @onWeight() then 5 else 1
    if @direction == 'up' then @value + change_ammount else if @direction == 'down' then @value - change_ammount

  newText: ->
    if @onWeight() then "#{@new_value}kg" else @new_value

  collectData: ->
    @data = { 'set_details': {} }
    @findSetDetails(set) for set in @sets

  findSetDetails: (set) ->
    number        = $(set).data('value')
    reps          = $(set).find('td.reps').data('value')
    weight        = $(set).find('td.weight').data('value')
    @data['set_details'][number] = {reps: reps, weight: weight}

  save: ->
    $.ajax {
      url:      @url,
      type:     'PUT',
      data:     @data,
      dataType: 'json',

      success: (data) => WorkoutExerciseSetDetailsForm.updateSuccess(data)
      failure: => alert("Dang! Something went wront, try again.")
    }

  updateSuccess: (set_details) ->
    @hideUpdateButton()
    @removeSets()
    for set, details of set_details then @addSetDetail(set, details)

  removeSets: -> @sets.remove()

  addSetDetail: (set, detail) ->
    @tbody.append(@template.render('app/templates/workout_exercises/set_detail', {set: set, detail}))

  onWeight: -> @type == 'weight'

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