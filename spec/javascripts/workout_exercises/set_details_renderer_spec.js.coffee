describe 'SetDetailsRenderer', ->
  beforeEach ->
    @set_details      = [{ own_workout: true, reps: 1, set: 1, set_details_url: "/workout_exercise_set_details/2610", weight: 10 }]
    @workout_exercise = {down_link: "down_link", set_details: JSON.stringify(@set_details), url: "url"}
    @return_workout_exercise = {down_link: "down_link", set_details: JSON.stringify(@set_details), url: "url", "javascript_set_details": "<tr>SET DETAILS</tr>"}
    @subject = SetDetailsRenderer
    @renderer = {render: -> ''}
    @stub_renderer = sinon.stub(@renderer, 'render', -> "<tr>SET DETAILS</tr>")
    @subject.renderer = @renderer

  describe 'addSetDetailsToWorkoutExercise', ->
    beforeEach ->
      @subject.workout_exercise = @workout_exercise

    it 'returns the return_workout_exercise', ->
      expect(@subject.addSetDetailsToWorkoutExercise()).toEqual(@return_workout_exercise)