@WorkoutExerciseAutofilterSearchForm =

  init: ->
    @workout_exercises = $('article.exercise_list_item')
    @input = $( 'input#workout_exercise_autofilter_search' )
    @terms = @findTerms()
    @formListener()

  formListener: ->
    @input.on 'focus', => WorkoutExerciseAutofilterSearchForm.searchListener()
    @input.on 'blur',  => WorkoutExerciseAutofilterSearchForm.searchIgnore()

  searchListener: ->
    @input.on 'keyup', =>
      WorkoutExerciseAutofilterSearchForm.search_term = @input.val()
      WorkoutExerciseAutofilterSearchForm.filterResults()

    @input.on 'keydown', (event) =>
      if event.which is 13
        WorkoutExerciseAutofilterSearchForm.input.next('p').text("You don't need to hit <enter>").fadeIn(100).delay(1500).fadeOut(2000)
        event.preventDefault()

  searchIgnore: ->
    @input.unbind('keyup')
    @input.unbind('keydown')

  filterResults: ->
    @findMatches()
    @filterWorkoutExercises()

  findMatches: ->
    @matches = []
    @test_term = new RegExp(@search_term, 'i')
    @testMatch(term) for term in @terms
    @matches

  filterWorkoutExercises: ->
    @workout_exercises.hide()
    for match in @matches
      revised_match = match.toLowerCase().replace(/[()]/g, '').replace(/\+/g, '').replace(/\-{2}/g, '-')
      $("article.exercise_list_item[data-title=#{revised_match}]").show()

  testMatch: (term) ->
    if @test_term.test(term) then @matches.push(term.replace(/\s+/g, '-'))

  findTerms: ->
    links = @workout_exercises.find('a.workout_exercise_title')
    @removeWhiteSpace($(link).text()) for link in links

  removeWhiteSpace: (str) ->
    str.replace(/^\s\s*/, '').replace(/\s\s*$/, '')

ready = ->
  we_search_input_present = $( 'input#workout_exercise_autofilter_search' )
  if we_search_input_present.length > 0 then WorkoutExerciseAutofilterSearchForm.init()

  document.body.addEventListener "DOMNodeInserted", (event) =>
    element = $( event.target )
    if element.hasClass('exercise_list_item') then WorkoutExerciseAutofilterSearchForm.init()

# $(document).on 'page:load', ready
$ -> ready()