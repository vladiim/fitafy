class window.ExerciseLoader
  constructor: (@renderer = new HoganTemplateBuilder) ->
    @modal    = $( '.modal#add_workout_exercise' )
    @tag      = $( 'ul#exercise_loader_tags > li > a' ).first()
    @tags     = $( 'ul#exercise_loader_tags > li > a' )
    @body     = $( 'article.exercise_list' )
    @mustache = 'app/templates/exercises/index'

  init: ->
    @removeAndRenderExercises()

    @tags.on  'click', (event) =>
      event.preventDefault()
      @tag = $( event.target )
      @removeAndRenderExercises()
  
  removeAndRenderExercises: =>
    @tagClicked()
    @removeExercises()
    @findURL()
    @getAndRenderExercises()
    @changeTitle()

  tagClicked: =>
    @tags.parent().removeClass('active').addClass('disabled')
    @tag.parent().removeClass('disabled').addClass('active')

  findURL: =>
    @url = @tag.attr('href').replace(' ', '_')

  getAndRenderExercises: =>
    $.getJSON(@url, @renderExercises)

  renderExercises: (exercises) =>
    @renderExercise(exercise) for exercise in exercises

  renderExercise: (exercise) =>
    @body.append(@renderer.render(@mustache, exercise))    

  removeExercises: =>
    $( 'article.exercise_list > article.exercise' ).remove()

  changeTitle: =>
    $( 'h1' ).text(@tag.text().toUpperCase() + " EXERCISES")

$ ->
  exercise_tags = $( '#exercise_index_tags')
  if exercise_tags.length > 0
    loader = new ExerciseLoader
    loader.init()