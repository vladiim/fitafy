describe 'DeleteWorkoutExercise', ->
  beforeEach ->
    loadFixtures 'delete_workout_exercise.html'
    DeleteWorkoutExercise.init()
    @delete_button          = $( 'a.delete_workout_exercise' )
    @right_workout_exercise = $( 'li.workout_exercise.right' )

  describe 'click delete', ->
    beforeEach ->
      # sinon.stub(DeleteWorkoutExercise, 'confirmationAlert')
      @delete_button.click()

    # afterEach -> DeleteWorkoutExercise.confirmationAlert.restore()

    it 'sets the delete button locally', ->
      expect(DeleteWorkoutExercise.delete_button).toBe(@delete_button)

    it 'sets the workout exercise locally', ->
      expect(DeleteWorkoutExercise.workout_exercise).toBe(@right_workout_exercise)

    # it 'triggers a confirmation alert', ->
    #   expect(DeleteWorkoutExercise.confirmationAlert).toHaveBeenCalled()

    it 'sets the url', ->
      expect(DeleteWorkoutExercise.url).toEqual('/workout_exercises/1071')

    describe 'delete', ->
      beforeEach ->
        sinon.spy($, 'ajax')
        DeleteWorkoutExercise.delete()

      afterEach -> $.ajax.restore()

      it 'uses ajax for the request', ->
        expect($.ajax).toHaveBeenCalled()

      it 'posts to the right url', ->
        expect($.ajax.getCall(0).args[0].url).toEqual("/workout_exercises/1071")

      it 'posts the info to the server', ->
        expect($.ajax.getCall(0).args[0].type).toEqual("DELETE")

      it 'uses json as the data type', ->
        expect($.ajax.getCall(0).args[0].dataType).toEqual("json")

  # describe 'confirmationAlert', ->
  #   beforeEach ->
  #     sinon.stub(window, 'confirm')
  #     DeleteWorkoutExercise.confirmationAlert()

  #   afterEach -> window.confirm.restore()

  #   it 'asks the user to confirm', ->
  #     expect(window.confirm).toHaveBeenCalledWith('Are you sure you want to delete this Exercise from the Workout?')

  describe 'reloadExercises', ->
    beforeEach ->
      @renderer          = { render: -> '' }
      @renderer_stub     = sinon.stub(@renderer, 'render', -> "<li>WORKOUT EXERCISES FROM SERVER</li>" )
      @workout_exercises = [ workout_exercise: { name: 'one' } ]
      sinon.spy(DeleteWorkoutExercise, 'removeExercises')
      DeleteWorkoutExercise.renderer = @renderer
      DeleteWorkoutExercise.reloadExercises(@workout_exercises)

    afterEach -> DeleteWorkoutExercise.removeExercises.restore()

    it 'removes the exsisting exercises', ->
      expect(DeleteWorkoutExercise.removeExercises).toHaveBeenCalled()

    it 'uses the template renderer to render the exercises', ->
      expect(@renderer_stub).toHaveBeenCalledWith('app/templates/workout_exercises/show', @workout_exercises[0])

    it 'loads the new workout exercise on the page', ->
      expect($( 'ul.workout_exercises > li' ).text()).toEqual('WORKOUT EXERCISES FROM SERVER')

# describe 'DeleteWorkoutExercise', ->
#   beforeEach ->
#     loadFixtures 'delete_workout_exercise.html'
#     @fake_renderer = { render: -> '' }
#     @rendered = sinon.stub(@fake_renderer, 'render', -> "<li>WORKOUT EXERCISES FROM SERVER</li>" )
#     @delete = new DeleteWorkoutExercise @fake_renderer
#     @delete.init()
#     @delete_button = $( 'a.delete_workout_exercise' )
#     @right_workout_exercise = $( 'li.workout_exercise.right' )
#     @wrong_workout_exercise = $( 'li.workout_exercise.wrong' )

#   describe 'click button', ->
#     beforeEach ->
#       # sinon.stub(@delete, 'confirmationAlert')
#       sinon.spy(@delete, 'unbindAndCreateNew')
#       @delete_button.click()

#     it 'sets the delete button locally', ->
#       expect(@delete.delete_button).toBe(@delete_button)

#     it 'sets the workout exercise locally', ->
#       expect(@delete.workout_exercise).toBe(@right_workout_exercise)

#     # it 'triggers a confirmation alert', ->
#     #   expect(@delete.confirmationAlert).toHaveBeenCalled()

#     it 'unbinds and creates a new version', ->
#       expect(@delete.unbindAndCreateNew).toHaveBeenCalled()

#     it 'sets the url', ->
#       expect(@delete.url).toEqual('/workout_exercises/1071')

#   # describe 'confirmationAlert', ->
#   #   beforeEach ->
#   #     sinon.stub(window, 'confirm')
#   #     @delete.confirmationAlert()

#   #   afterEach -> window.confirm.restore()

#   #   it 'asks the user to confirm', ->
#   #     expect(window.confirm).toHaveBeenCalledWith('Are you sure you want to delete this Exercise from the Workout?')

#     describe 'deleteWorkoutExercise', ->
#       beforeEach ->
#         sinon.spy($, 'ajax')
#         @delete_button.click()
#         @delete.deleteWorkoutExercise()

#       afterEach -> $.ajax.restore()

#       it 'uses ajax for the request', ->
#         expect($.ajax).toHaveBeenCalled()

#       it 'posts to the right url', ->
#         expect($.ajax.getCall(0).args[0].url).toEqual("/workout_exercises/1071")

#       it 'posts the info to the server', ->
#         expect($.ajax.getCall(0).args[0].type).toEqual("DELETE")

#       it 'uses json as the data type', ->
#         expect($.ajax.getCall(0).args[0].dataType).toEqual("json")

#   describe 'reloadExercises', ->
#     beforeEach ->
#       sinon.spy(@delete, 'removeExercises')
#       @workout_exercises = [ workout_exercise: { name: 'one' } ]
#       @delete.reloadExercises(@workout_exercises)

#     it 'removes the exsisting exercises', ->
#       expect(@delete.removeExercises).toHaveBeenCalled()

#     it 'uses the template renderer to render the exercises', ->
#       expect(@rendered).toHaveBeenCalledWith('app/templates/workout_exercises/show', @workout_exercises[0])

#     it 'loads the new workout exercise on the page', ->
#       expect($( 'ul.workout_exercises > li' ).text()).toEqual('WORKOUT EXERCISES FROM SERVER')

#   describe 'removeExercises', ->
#     beforeEach -> @delete.removeExercises()

#     it 'removes the exercises from the page', ->
#       expect($( 'ul.workout_exercises > li' )).not.toExist()