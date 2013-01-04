class window.ExerciseModalLoader extends ExerciseLoader

  checkForModal: ->
    @modal.on 'show', =>
      # @changeURLs()
      @removeAndRenderExercises()
      @modal.unbind 'show'

  checkForClickedTags: ->
    @tags.on  'click', (event) =>
      event.preventDefault()
      @tag = $( event.target )
      @removeAndRenderExercises()

  changeTitle: =>
    $( 'h3.list_title' ).text("#{@tag.text()} EXERCISES")

  changeURLs: =>
    @changeURL(tag) for tag in @tags

  # changeURL: (tag) =>
  #   new_url = $(tag).attr('href').replace('exercises', 'add_exercise_to_workout')
  #   $(tag).attr('href', new_url)

$ ->
  exercise_modal = $( 'div.modal#add_workout_exercise' )
  if exercise_modal.length > 0
    exercise_modal_loader = new ExerciseModalLoader
    exercise_modal_loader.checkForModal()
    exercise_modal_loader.checkForClickedTags()