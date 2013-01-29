@WorkoutExerciseSetDetailsForm =

  init: ->
    @template   = HoganTemplateBuilder
    @mustache   = 'app/templates/workout_exercises/set_detail'
    @links      = $( 'a.change_workout_exercise_set_details' )
    @icons      = $( 'a.change_workout_exercise_set_details > i' )
    @set_adders = $( 'a.workout_exercise_set_details_update_button' )
    @linkListener()
    @setListener()

  reinit: ->
    @links.unbind 'click'
    @icons.unbind 'click'
    @set_adders.unbind 'click'
    @init()

  linkListener: ->
    @links.on 'click', (event) =>
      event.preventDefault()
      @link = $( event.target ).parent('a')
      WorkoutExerciseSetDetailsForm.linkClicked()

    @icons.on 'click', (event) => event.preventDefault()

  setListener: ->
    @set_adders.on 'click', (event) =>
      event.preventDefault()
      @set = $( event.target )
      WorkoutExerciseSetDetailsForm.addSet()      

  updateButtonListener: ->
    @update_button.unbind 'click'
    @update_button.on 'click', (event) =>
      WorkoutExerciseSetDetailsForm.collectData()
      WorkoutExerciseSetDetailsForm.save()
      event.preventDefault()

  linkClicked: ->
    @setVariables()
    @showUpdateButton()
    @showAddSet()
    @updateButtonListener()
    @updateValues()

  setVariables: ->
    @url           = @link.attr('href')
    @table_data    = @link.parents('td')
    @text          = @table_data.children('p')
    @value         = @table_data.data('value')
    @type          = @table_data.data('type')
    @direction     = @link.data('direction')
    @set_details   = @link.parents('div.set_details')
    @sets          = @set_details.find('tr.set')
    @tbody         = @sets.parent()
    @update_button = @set_details.children('a.workout_exercise_set_details_update_button')

  showAddSet: ->
    set_adder = @set_details.children('a.workout_exercise_set_details_update_button')
    set_adder.removeClass('hidden')

  showUpdateButton: ->
    @update_button.removeClass('hidden')
    @update_button.addClass('show_update_button')

  hideUpdateButton: ->
    @update_button.addClass('hidden')
    @update_button.removeClass('show_update_button')

  updateValues: ->
    @new_value = @changeValue()
    @table_data.data('value', @new_value)
    @text.text(@newText())

  changeValue: ->
    change_ammount = if @onWeight() then 5 else 1
    if @direction == 'up' then @value + change_ammount else if @direction == 'down' then @value - change_ammount

  newText: ->
    if @onWeight() then "#{@new_value}kg" else String(@new_value)

  collectData: ->
    @data = { "set_details": {} }
    @findSetDetails(set) for set in @sets

  findSetDetails: (set) ->
    number        = $(set).data('value')
    reps          = $(set).find('td.reps').data('value')
    weight        = $(set).find('td.weight').data('value')
    @data["set_details"][String(number)] = {"set": number, "reps": reps, "weight": weight}

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
    @addSetDetail(set_detail) for set_detail in set_details

  removeSets: -> @sets.remove()

  addSetDetail: (set_detail) ->
    @tbody.append(@template.render(@mustache, set_detail))

  addSet: ->
    @addSetToTable()
    @resetUpdateButton()
    @set.addClass('hidden')
    @reinit()

  addSetToTable: ->
    tbody      = @getTBody()
    set_number = tbody.children('tr.set').length + 1
    url        = @set.attr('href')
    tbody.append(@template.render(@mustache, @newSetData(set_number, url)))

  newSetData: (set_number, url) -> {"set": set_number, "reps": 1, "weight": 10, "own_workout": true, "set_details_url": url}

  getTBody: -> @set.parents($('div.set_details')).find('table > tbody')

  resetUpdateButton: ->
    @update_button = @set.parents('div.set_details').children('a.workout_exercise_set_details_update_button')
    @showUpdateButton()

  onWeight: -> @type == 'weight'

WorkoutExerciseSetDetailsForm.init()