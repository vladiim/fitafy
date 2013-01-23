describe 'WorkoutExerciseSetDetailsForm', ->
  beforeEach ->
    loadFixtures 'workout_exercise_dynamic_form.html'
    @subject = WorkoutExerciseSetDetailsForm
    WorkoutExerciseSetDetailsForm.init()

  describe 'rep_up', ->
    beforeEach ->
      @rep_up  = $('a#reps_up')
      @icon_up = $( 'i#rep_icon_up' )
      @rep_up.click()
      @icon_up.click()

    it 'increases the rep parents value', ->
      rep_parent_val = $('#rep_parent').data('value')
      expect(rep_parent_val).toEqual(13)

    it 'increases the rep parents text', ->
      rep_text = $('p#rep_text').text()
      expect(rep_text).toEqual('13')

    it 'shows the update button', ->
       expect($( '#update_button' )).not.toHaveClass('hidden')
       expect($( '#update_button' )).toHaveClass('show_update_button')

  describe 'rep_down', ->
    beforeEach ->
      @rep_down  = $('a#reps_down')
      @icon_down = $( 'i#rep_icon_up' )
      @rep_down.click()
      @icon_down.click()

    it 'decreases the rep parents value', ->
      rep_parent_val = $('#rep_parent').data('value')
      expect(rep_parent_val).toEqual(11)

    it 'decreases the rep parents text', ->
      rep_text = $('p#rep_text').text()
      expect(rep_text).toEqual('11')