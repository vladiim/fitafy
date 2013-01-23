describe 'WorkoutExerciseSetDetailsForm', ->
  beforeEach ->
    loadFixtures 'workout_exercise_dynamic_form.html'
    @subject = WorkoutExerciseSetDetailsForm
    WorkoutExerciseSetDetailsForm.init()
    @rep_up   = $( 'a#reps_up' )
    @rep_down = $( 'a#reps_down' )

  describe 'click reps_up', ->
    beforeEach ->
      sinon.stub(@subject, 'updateAttributes', -> '')
      @hash = {1: {reps: 13, weight: 80}, 2: {reps: 10, weight: 100}}
      @rep_up.click()

    afterEach -> @subject.updateAttributes.restore()

    it 'sets the link', ->
      expect(@subject.link).toBe(@rep_up)

    it 'sets the url', ->
      expect(@subject.url).toEqual('/workout_exercises/1')

    it 'sets the parent', ->
      expect(@subject.parent).toBe($('li#parent'))

    it 'sets the set_details hash with the new rep value', ->
      expect(@subject.set_details).toEqual(@hash)

  describe 'clicks reps_down', ->
    beforeEach ->
      sinon.stub(@subject, 'updateAttributes', -> '')
      @hash = {1: {reps: 11, weight: 80}, 2: {reps: 10, weight: 100}}
      @rep_down.click()

    it 'sets the set_details hash with the new rep value', ->
      expect(@subject.set_details).toEqual(@hash)