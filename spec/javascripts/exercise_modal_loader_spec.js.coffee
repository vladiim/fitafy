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