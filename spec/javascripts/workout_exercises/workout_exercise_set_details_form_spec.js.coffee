describe 'WorkoutExerciseSetDetailsForm', ->
  beforeEach ->
    loadFixtures 'workout_exercise_dynamic_form.html'
    @subject = WorkoutExerciseSetDetailsForm
    WorkoutExerciseSetDetailsForm.init()

  describe 'rep_up', ->
    beforeEach ->
      @rep_up  = $('a#reps_up')
      WorkoutExerciseSetDetailsForm.link = @rep_up
      WorkoutExerciseSetDetailsForm.linkClicked()

    it 'increases the rep parents value', ->
      rep_parent_val = $('#rep_parent').data('value')
      expect(rep_parent_val).toEqual(13)

    it 'increases the rep parents text', ->
      rep_text = $('p#rep_text').text()
      expect(rep_text).toEqual('13')

    it 'shows the update button', ->
       expect($( '#update_button' )).not.toHaveClass('hidden')
       expect($( '#update_button' )).toHaveClass('show_update_button')

    describe 'click update button', ->
      beforeEach ->
        sinon.stub($, 'ajax')
        @data   = { 1: { reps: 13, weight: 80 }, 2: { reps: 10, weight: 100 } }
        @update = $( 'a#update_button' )
        @update.click()

      afterEach -> $.ajax.restore()

      it 'uses ajax for the request', ->
        expect($.ajax).toHaveBeenCalled()

      it 'sets the data based on the new values', ->
        expect(@subject.data).toEqual(@data)

      it 'posts to the right url', ->
        expect($.ajax.getCall(0).args[0].url).toEqual("/workout_exercise_set_details/1")

      it 'posts the data', ->
        expect($.ajax.getCall(0).args[0].data).toEqual(@data)

      it 'posts the info to the server', ->
        expect($.ajax.getCall(0).args[0].type).toEqual("PUT")

      it 'uses json as the data type', ->
        expect($.ajax.getCall(0).args[0].dataType).toEqual("json")    

  describe 'rep_down', ->
    beforeEach ->
      @rep_down  = $('a#reps_down')
      WorkoutExerciseSetDetailsForm.link =@rep_down
      WorkoutExerciseSetDetailsForm.linkClicked()

    it 'decreases the rep parents value', ->
      rep_parent_val = $('#rep_parent').data('value')
      expect(rep_parent_val).toEqual(11)

    it 'decreases the rep parents text', ->
      rep_text = $('p#rep_text').text()
      expect(rep_text).toEqual('11')

  describe 'weight_up', ->
    beforeEach ->
      @weight_up = $('a#weight_up')
      WorkoutExerciseSetDetailsForm.link = @weight_up
      WorkoutExerciseSetDetailsForm.linkClicked()

    it 'increases the weight parents value by 2.5', ->
      weight_parent_val = $('#weight_parent').data('value')
      expect(weight_parent_val).toEqual(82.5)

    it 'increases the weight parents text by 2.5', ->
      weight_text = $('p#weight_text').text()
      expect(weight_text).toEqual('82.5kg')