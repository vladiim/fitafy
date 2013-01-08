class window.ExerciseModal
  constructor: (@template = new HoganTemplateBuilder) ->
    @links    = $( 'a[data-target=#exercise_ajax_modal]' )
    @mustache = 'app/templates/exercises/show'
    @body     = $( '#exercise_ajax_modal > .modal-body' )
    @modal    = $( '#exercise_ajax_modal' )

  init: ->
    $( @links ).on 'click', (event) =>
      @target_link = $( event.target )
      @showModal()
      event.preventDefault()

  showModal: =>
    @showTitle()
    @showBody()
    @modal.on 'hide', => @hideModal()

  showTitle: =>
    @title = @target_link.text()
    $( '#exercise_ajax_modal > .modal-header' ).append("<h3>#{@title}</h3>")

  showBody: =>
    url = @target_link.attr('href')
    $.getJSON(url, @render)

  render: (exercise) =>
    @body.append(@template.render(@mustache, exercise))

  hideModal: =>
    @hideTitle()
    @hideBody()

  hideTitle: =>
    $( '#exercise_ajax_modal > .modal-header > h3' ).remove()

  hideBody: =>
    $( '#exercise_ajax_modal > .modal-body > article' ).remove()

$ ->
  workout_exercise_present = $( 'ul.workout_exercises' )
  if workout_exercise_present.length > 0
    modal = new ExerciseModal
    modal.init()

    document.body.addEventListener "DOMNodeInserted", (event) =>
      @element = $( event.target )

      if element.hasClass('workout_exercise')
        modal = new ExerciseModal
        modal.init()