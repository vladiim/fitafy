describe 'ExerciseModalLoader', ->
  beforeEach ->
    loadFixtures 'exercise_modal_index.html'
    @modal = $(' .modal#add_workout_exercise ')
    @modal.addEvent('show')
    ExerciseModalLoader.init()

  describe 'show modal', ->
    beforeEach ->
      sinon.spy(ExerciseModalLoader, 'changeTitle')
      sinon.spy(ExerciseLoader, 'removeAndRenderExercises')
      @modal.trigger.show()

    it 'removes and renders the exercises', ->
      expect(ExerciseLoader.removeAndRenderExercises).toHaveBeenCalled()

    it 'changes the title', ->
      expect(ExerciseModalLoader.changeTitle).toHaveBeenCalled()

# describe 'ExerciseModalLoader', ->
#   beforeEach ->
#     loadFixtures 'exercise_modal_index.html'
#     @modal_loader = new ExerciseModalLoader
#     @modal = $( '.modal#add_workout_exercise' )
#     @link  = $( 'ul > li > a').first()

#   describe 'changeTitle', ->
#     it 'uses changes the title to the tag name', ->
#       @modal_loader.changeTitle()
#       expect($( 'h3.list_title' ).text()).toEqual('BACK EXERCISES')