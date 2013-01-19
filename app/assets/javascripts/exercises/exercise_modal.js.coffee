@ExerciseModal =

  init: -> @renderer = new HoganTemplateBuilder

  showExerciseListener: ->
    $( 'a[data-target=#exercise_ajax_modal]' ).on 'click', (event) =>
      @link = $( event.target )
      @showModal()
      event.preventDefault()

  showModal: ->
    @showTitle()
    @showBody()
    $( '#exercise_ajax_modal' ).on 'hide', => @hideModal()

  hideModal: ->
    @clearTitle()
    @removeBody()

  showTitle: -> @changeTitle(@getText())

  clearTitle: -> @changeTitle('')

  changeTitle: (text) ->
    $( '#exercise_ajax_modal > .modal-header > h3' ).text(text)

  showBody: -> $.getJSON(@getUrl(), @renderExercise)

  renderExercise: (exercise) =>
    $( '#exercise_ajax_modal > .modal-body' ).append(ExerciseModal.renderer.render('app/templates/exercises/show', exercise))

  removeBody: ->
    $( '#exercise_ajax_modal > .modal-body > article' ).remove()

  getText: -> @link.text()

  getUrl: -> @link.attr('href')

$ ->
  workout_exercise_present = $( 'ul.workout_exercises' )
  if workout_exercise_present.length > 0
    ExerciseModal.init()
    ExerciseModal.showExerciseListener()

    document.body.addEventListener "DOMNodeInserted", (event) =>
      @element = $( event.target )

      if element.hasClass('workout_exercise')
        ExerciseModal.showExerciseListener()