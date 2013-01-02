describe 'ExerciseModal', ->
  beforeEach ->
    loadFixtures "exercise_listed_in_workout.html"
    @modal = new ExerciseModal
    @modal.init()
    @link = $( 'a.exercise_ajax_modal' )

  describe 'click link', ->
    beforeEach -> @link.click()

    it 'sets the target_link', ->
      expect( @modal.target_link ).toEqual( @link )