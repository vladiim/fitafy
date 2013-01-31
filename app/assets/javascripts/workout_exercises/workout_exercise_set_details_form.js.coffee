@WorkoutExerciseSetDetailsForm =

  #----- initializers -------#

  init: ->
    @template     = HoganTemplateBuilder
    @mustache     = 'app/templates/workout_exercises/set_detail'
    @links        = $( 'a.change_workout_exercise_set_details' )
    @icons        = $( 'a.change_workout_exercise_set_details > i' )
    @set_adders   = $( 'a.new_workout_exercise_set_details' )
    @set_deleters = $( 'a.delete_workout_exercise_set_details' )
    @linkListener()
    @addSetListener()
    @deleteSetListener()

  reinit: ->
    @links.unbind 'click'
    @icons.unbind 'click'
    @set_adders.unbind 'click'
    @set_deleters.unbind 'click'
    @init()

  #----- listeners -------#

  linkListener: ->
    @links.on 'click', (event) =>
      event.preventDefault()
      @link = $( event.target ).parent('a')
      WorkoutExerciseSetDetailsForm.linkClicked()

    @icons.on 'click', (event) => event.preventDefault()

  addSetListener: ->
    @set_adders.on 'click', (event) =>
      event.preventDefault()
      @set = $( event.target )
      WorkoutExerciseSetDetailsForm.addSet()      

  deleteSetListener: ->
    @set_deleters.on 'click', (event) =>
      event.preventDefault()
      @deleter = $( event.target )
      WorkoutExerciseSetDetailsForm.deleteLinkClicked()

  #----- action takers -------#

  linkClicked: ->
    @setVariables()
    # @showAddSet()
    @updateValues()
    @collectData()
    @save()

  deleteLinkClicked: ->
    @url         = @findUrl(@deleter)
    @set_details = @findDivSetDetails(@deleter)
    @deleter.parents('tr.set').remove()
    @sets        = @findTrSetDetails()
    @tbody       = @findTBody()
    @collectData()
    @save()

  #----- variable setters -------#

  setVariables: ->
    @url           = @findUrl(@link)
    @table_data    = @link.parents('td')
    @text          = @table_data.children('p')
    @value         = @table_data.data('value')
    @type          = @table_data.data('type')
    @direction     = @link.data('direction')
    @set_details   = @findDivSetDetails(@link)
    @sets          = @findTrSetDetails()
    @tbody         = @findTBody()

  findUrl: (node) -> node.attr('href')

  findDivSetDetails: (node) -> node.parents('div.set_details')

  findTrSetDetails: -> @set_details.find('tr.set')

  findTBody: -> @sets.parent()

  getTBody: -> @set.parents($('div.set_details')).find('table > tbody').first()

  onWeight: -> @type == 'weight'

  #----- data managers -------#

  updateValues: ->
    @new_value = @changeValue()
    @table_data.data('value', @new_value)
    @text.text(@newText())

  changeValue: ->
    @change_ammount = if @onWeight() then 5 else 1
    if @direction == 'up' then @value + @change_ammount else if @direction == 'down' then @decreaseValue()

  decreaseValue: ->
    if @smallestValue() then @value - @change_ammount else @value

  smallestValue: ->
    if @onWeight() then @value > 5 else @value > 1

  newText: ->
    if @onWeight() then "#{@new_value}kg" else String(@new_value)

  collectData: ->
    @data = { "set_details": {} }
    @findSetDetails(set, number) for set, number in @sets

  findSetDetails: (set, number) ->
    reps          = $(set).find('td.reps').data('value')
    weight        = $(set).find('td.weight').data('value')
    @data["set_details"][String(number + 1)] = {"set": number + 1, "reps": reps, "weight": weight}

  newSetData: (set_number, url) -> {"set": set_number, "reps": 1, "weight": 10, "own_workout": true, "set_details_url": url}

  #----- server -------#

  save: ->
    $.ajax {
      url:      @url,
      type:     'PUT',
      data:     @data,
      dataType: 'json',

      success: (set_details) => WorkoutExerciseSetDetailsForm.updateSuccess(set_details)
      failure: => alert("Dang! Something went wront, try again.")
    }

  #----- view editors -------#

  updateSuccess: (set_details) ->
    @removeSets()
    @addSetDetail(set_detail) for set_detail in set_details
    @reinit()

  removeSets: -> @sets.remove()

  addSetDetail: (set_detail) ->
    @tbody.append(@template.render(@mustache, set_detail))

  addSet: ->
    @addSetToTable()
    # @set.addClass('hidden')
    @reinit()

  addSetToTable: ->
    tbody      = @getTBody()
    set_number = tbody.children('tr.set').length + 1
    url        = @set.attr('href')
    tbody.append(@template.render(@mustache, @newSetData(set_number, url)))

  # showAddSet: ->
  #   set_adder = @set_details.children('a.new_workout_exercise_set_details')
  #   set_adder.removeClass('hidden')

ready = ->
  set_details = $( '.workout_exercise_set_details' )
  if set_details.length > 0
    WorkoutExerciseSetDetailsForm.init()

    document.body.addEventListener 'DOMNodeInserted', (event) =>
      element = $( event.target )
      if element.hasClass('workout_exercise')
        WorkoutExerciseSetDetailsForm.reinit()

# $(document).on 'page:load', ready
$ -> ready()