class window.ExerciseLoader

  constructor: (@renderer = new HoganTemplateBuilder) ->
    @tags     = $( '.exercise_tags > ul > li > a' )
    @body     = $( 'article.exercise_list' )
    @mustache = 'app/templates/exercises/index'

  init: ->
    @tags.on 'click', (event) =>
      @tag = $( event.target )
      @tagClicked()
      event.preventDefault()

  tagClicked: =>
    url = @tag.attr('href')
    @removeExercises()
    @activateTag()
    @changeTitle()
    $.getJSON(url, @renderExercises)

  renderExercises: (exercises) =>
    @renderExercise(exercise) for exercise in exercises

  renderExercise: (exercise) =>
    @body.append(@renderer.render(@mustache, exercise))

  removeExercises: =>
    $( 'article.exercise_list > article.exercise' ).remove()

  activateTag: =>
    @tags.parent().removeClass('active').addClass('disabled')
    @tag.parent().removeClass('disabled').addClass('active')

  changeTitle: =>
    $( 'h1' ).text(@tag.text().toUpperCase() + " EXERCISES")

$ ->
  exercise_tags = $( 'aside.exercise_tags > ul > li')
  if exercise_tags.length > 0
    loader = new ExerciseLoader
    loader.init()