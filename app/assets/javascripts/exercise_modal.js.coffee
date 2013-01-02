class window.ExerciseModal
  constructor: ->
    @links = $( 'a.exercise_ajax_modal' )

  init: ->
    $( @links ).on 'click', (event) =>
      @target_link = $( event.target )

  # render: (exercise) ->
  #   template = new HoganTemplateBuilder
  #   mustache = "app/templates/exercises/show"
  #   $('div.something').append(template.render(mustache, exercise))
