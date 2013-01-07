describe 'DeleteWorkoutExercise', ->
  beforeEach ->
    loadFixtures 'delete_workout_exercise.html'
    @delete = new DeleteWorkoutExercise
    @delete.init()
    @delete_button = $( 'a.delete_workout_exercise' )
    @right_workout_exercise = $( 'li.workout_exercise.right' )
    @wrong_workout_exercise = $( 'li.workout_exercise.wrong' )

  describe 'click button', ->
    beforeEach ->
      sinon.stub(@delete, 'confirmationAlert')
      sinon.spy(@delete, 'unbindAndCreateNew')
      @delete_button.click()

    it 'sets the delete button locally', ->
      expect(@delete.delete_button).toBe(@delete_button)

    it 'sets the workout exercise locally', ->
      expect(@delete.workout_exercise).toBe(@right_workout_exercise)

    it 'triggers a confirmation alert', ->
      expect(@delete.confirmationAlert).toHaveBeenCalled()

    it 'unbinds and creates a new version', ->
      expect(@delete.unbindAndCreateNew).toHaveBeenCalled()

    it 'sets the url', ->
      expect(@delete.url).toEqual('/workout_exercises/1071')

  describe 'confirmationAlert', ->
    beforeEach ->
      sinon.stub(window, 'confirm')
      @delete.confirmationAlert()

    afterEach -> window.confirm.restore()

    it 'asks the user to confirm', ->
      expect(window.confirm).toHaveBeenCalledWith('Are you sure you want to delete this Exercise from the Workout?')

    describe 'deleteWorkoutExercise', ->
      beforeEach ->
        sinon.spy($, 'ajax')
        @delete_button.click()
        @delete.deleteWorkoutExercise()

      afterEach -> $.ajax.restore()

      it 'uses ajax for the request', ->
        expect($.ajax).toHaveBeenCalled()

      it 'posts to the right url', ->
        expect($.ajax.getCall(0).args[0].url).toEqual("/workout_exercises/1071")

      it 'posts the info to the server', ->
        expect($.ajax.getCall(0).args[0].type).toEqual("DELETE")

      it 'uses json as the data type', ->
        expect($.ajax.getCall(0).args[0].dataType).toEqual("json")

    describe 'manages order numbers', ->
      it 'need to set up other workout_exercises and manage their order numbers', ->
        expect(false).toEqual(true)