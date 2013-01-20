describe 'WorkoutExerciseAutofilterSearchForm', ->
  beforeEach ->
    loadFixtures 'workout_exercise_autofilter_search_form.html'
    WorkoutExerciseAutofilterSearchForm.init()
    @input  = $('input#workout_exercise_autofilter_search')
    @terms  = ['Assisted Blah', 'Assomething Blah', 'Dirrerent Blah']    

  it 'loads the terms locally', ->
    expect(WorkoutExerciseAutofilterSearchForm.terms).toEqual(@terms)

  it 'sets the input field locally', ->
    expect(WorkoutExerciseAutofilterSearchForm.input).toBe(@input)

  describe 'focus on input', ->
    beforeEach ->
      sinon.spy(WorkoutExerciseAutofilterSearchForm, 'searchListener')
      @input.focus()

    it 'triggers the search listener', ->
      expect(WorkoutExerciseAutofilterSearchForm.searchListener).toHaveBeenCalled()

  describe 'blur off input', ->
    beforeEach ->
      sinon.spy(WorkoutExerciseAutofilterSearchForm, 'searchIgnore')
      @input.blur()

    it 'removes the search listener', ->
      expect(WorkoutExerciseAutofilterSearchForm.searchIgnore).toHaveBeenCalled()

  describe 'searchListener', ->
    describe 'user types in "as"', ->
      beforeEach ->
        WorkoutExerciseAutofilterSearchForm.input.val('as')
        sinon.spy(WorkoutExerciseAutofilterSearchForm, 'filterResults')
        WorkoutExerciseAutofilterSearchForm.searchListener()
        @input.trigger('keyup')

      afterEach -> WorkoutExerciseAutofilterSearchForm.filterResults.restore()

      it 'sets the search term to the input value', ->
        expect(WorkoutExerciseAutofilterSearchForm.search_term).toEqual('as')

      it 'filters the results', ->
        expect(WorkoutExerciseAutofilterSearchForm.filterResults).toHaveBeenCalled()

  describe 'searchIgnore', ->
    beforeEach ->
      sinon.spy(WorkoutExerciseAutofilterSearchForm, 'filterResults')
      WorkoutExerciseAutofilterSearchForm.formListener()
      @input.trigger('keyup')

    it 'doesnt filter the results', ->
      expect(WorkoutExerciseAutofilterSearchForm.filterResults).not.toHaveBeenCalled()

  describe 'filterResults', ->
    beforeEach ->
      WorkoutExerciseAutofilterSearchForm.search_term = 'as'
      WorkoutExerciseAutofilterSearchForm.terms = @terms
      WorkoutExerciseAutofilterSearchForm.filterResults()

    it 'creates a regex out of the search term', ->
      expect(WorkoutExerciseAutofilterSearchForm.test_term).toEqual(/as/i)

    it 'matches the first two terms', ->
      expect(WorkoutExerciseAutofilterSearchForm.matches).toEqual([@terms[0].replace(' ', '-'), @terms[1].replace(' ', '-')])

    it 'hides the none matching nodes', ->
      expect($('article.exercise_list_item.3')).toBeHidden()

    it 'doesnt hide the matching nodes', ->
      expect($('article.exercise_list_item.1')).not.toBeHidden()
      expect($('article.exercise_list_item.2')).not.toBeHidden()