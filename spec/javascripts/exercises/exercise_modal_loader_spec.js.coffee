describe 'ExerciseModalLoader', ->
  beforeEach ->
    loadFixtures 'exercise_modal_index.html'
    @modal_loader = new ExerciseModalLoader
    @modal = $( '.modal#add_workout_exercise' )
    @link  = $( 'ul > li > a').first()

  describe 'changeTitle', ->
    it 'uses changes the title to the tag name', ->
      @modal_loader.changeTitle()
      expect($( 'h3.list_title' ).text()).toEqual('BACK EXERCISES')

  # describe 'changeURLs', ->
  #   it 'changes the url paths to add_exercise_to_workout', ->
  #     @modal_loader.changeURLs()
  #     expect(@link.attr('href')).toEqual('/add_exercise_to_workout?muscle=back')
  #     expect($(' ul > li > a ').slice(1, 2).attr('href')).toEqual('/add_exercise_to_workout?muscle=chest')