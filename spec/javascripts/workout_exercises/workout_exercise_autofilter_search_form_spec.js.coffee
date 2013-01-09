describe 'WorkoutExerciseAutofilterSearchForm', ->
  beforeEach ->
    loadFixtures 'workout_exercise_autofilter_search_form.html'
    @search = new WorkoutExerciseAutofilterSearchForm
    @search.init()
    @input  = $('input#workout_exercise_autofilter_search')
    @terms  = ['Assisted Blah', 'Assomething Blah', 'Dirrerent Blah']
    # @terms = {'Assisted Blah': 1, 'Assomething Blah': 2, 'Dirrerent Blah': 3}

  it 'loads the terms locally', ->
    expect(@search.terms).toEqual(@terms)

  it 'sets the input field locally', ->
    expect(@search.input).toBe(@input)

  describe 'focus on input', ->
    beforeEach ->
      sinon.spy(@search, 'searchListener')
      @input.focus()

    it 'triggers the search listener', ->
      expect(@search.searchListener).toHaveBeenCalled()

  describe 'blur off input', ->
    beforeEach ->
      sinon.spy(@search, 'searchIgnore')
      @input.blur()

    it 'removes the search listener', ->
      expect(@search.searchIgnore).toHaveBeenCalled()

  describe 'searchListener', ->
    describe 'user types in as', ->
      beforeEach ->
        @search.input.val('as')
        sinon.spy(@search, 'filterResults')
        @search.searchListener()
        @input.trigger('keyup')

      afterEach -> @search.filterResults.restore()

      it 'sets the search term to the input value', ->
        expect(@search.search_term).toEqual('as')

      it 'filters the results', ->
        expect(@search.filterResults).toHaveBeenCalled()

    describe 'searchIgnore', ->
      beforeEach ->
        sinon.spy(@search, 'filterResults')
        @search.searchListener()
        @search.searchIgnore()
        @input.trigger('keyup')

      it 'doesnt filter the results', ->
        expect(@search.filterResults).not.toHaveBeenCalled()

  describe 'filterResults', ->
    beforeEach ->
      @search.search_term = 'as'
      @search.terms = @terms
      @search.filterResults()

    it 'creates a regex out of the search term', ->
      expect(@search.test_term).toEqual(/as/i)

    it 'matches the first two terms', ->
      expect(@search.matches).toEqual([@terms[0].replace(' ', '-'), @terms[1].replace(' ', '-')])

    it 'hides the none matching nodes', ->
      expect($('article.exercise_list_item.3')).toBeHidden()

    it 'doesnt hide the matching nodes', ->
      expect($('article.exercise_list_item.1')).not.toBeHidden()
      expect($('article.exercise_list_item.2')).not.toBeHidden()