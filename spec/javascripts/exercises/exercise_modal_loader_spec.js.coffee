describe 'ExerciseModalLoader', ->
  beforeEach ->
    loadFixtures 'exercise_modal_index.html'
    @modal = $(' .modal#add_workout_exercise ')
    ExerciseModalLoader.init()

  describe 'show modal', ->
    beforeEach ->
      sinon.spy(ExerciseModalLoader, 'changeTitle')
      sinon.stub(ExerciseLoader, 'removeAndRenderExercises', -> '')
      @modal.trigger('show')

    afterEach ->
      ExerciseModalLoader.changeTitle.restore()
      ExerciseLoader.removeAndRenderExercises.restore()

    it 'removes and renders the exercises', ->
      expect(ExerciseLoader.removeAndRenderExercises).toHaveBeenCalled()

    it 'changes the title', ->
      expect(ExerciseModalLoader.changeTitle).toHaveBeenCalled()


  describe 'changeTitle', ->
    beforeEach ->
      ExerciseLoader.tag = $( 'ul > li > a' ).first()
      ExerciseModalLoader.changeTitle()

    it 'uses changes the title to the tag name', ->
      expect($( 'h3#exercise_modal_title' ).text()).toEqual('BACK EXERCISES')