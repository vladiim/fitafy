@ExerciseLoader =

  init: ->
    @tags     = $('ul#exercise_loader_tags > li > a')
    @tag      = @tags.first()
    @mustache = 'app/templates/exercises/index'
    @renderer = HoganTemplateBuilder
    @tagListener()

  tagListener: ->
    @tags.on 'click', (event) =>
      @tag = $( event.target )
      @removeAndRenderExercises()
      event.preventDefault()

  removeAndRenderExercises: ->
    @makeTagActive()
    @removeExercises()
    @getAndRenderExercises()
    @changeTitle()

  makeTagActive: ->
    @tags.parent().removeClass('active').addClass('disabled')
    @tag.parent().removeClass('disabled').addClass('active')

  removeExercises: ->
    $('article.exercise_list > article.exercise').remove()

  changeTitle: ->
    if $( '#exercise_index_tags').length > 0
      $( 'h1' ).text(@tag.text().toUpperCase() + " EXERCISES")

  getAndRenderExercises: ->
    $.getJSON(@findURL(), @renderExercises)

  findURL: ->
    @tag.attr('href').replace(' ', '_')

  renderExercises: (exercises) =>
    ExerciseLoader.renderExercise(exercise) for exercise in exercises

  renderExercise: (exercise) ->
    $( 'article.exercise_list' ).append(@renderer.render(@mustache, exercise))

$ ->
  exercise_tags = $( '#exercise_index_tags')
  if exercise_tags.length > 0
    ExerciseLoader.init()
    ExerciseLoader.getAndRenderExercises()