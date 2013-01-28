describe 'WorkoutExerciseSetDetailsForm', ->
  beforeEach ->
    loadFixtures 'workout_exercise_dynamic_form.html'
    @subject = WorkoutExerciseSetDetailsForm
    WorkoutExerciseSetDetailsForm.init()

  describe 'rep_up', ->
    beforeEach ->
      @rep_up  = $('a#reps_up')
      @data    = { 'set_details': { 1: { reps: 13, weight: 80 }, 2: { reps: 10, weight: 100 } } }
      @update  = $( 'a#update_button' )
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
        sinon.stub(@subject, 'updateSuccess', -> '')
        @update.click()

      afterEach ->
       $.ajax.restore()
       @subject.updateSuccess.restore()

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

    describe 'updateSuccess', ->
      beforeEach ->
        @new_data = { 1: { reps: 4, weight: 200 } }
        sinon.stub(@subject, 'addSetDetail')
        @subject.updateSuccess(@new_data)

      afterEach -> @subject.addSetDetail.restore()

      it 'hides the update button', ->
        expect(@update).toHaveClass('hidden')

      # it 'replaces the set_details with the data', ->
      #   expect($( 'tr.set' ).length).toEqual(1)

    describe 'addSetDetail', ->
      beforeEach ->
        @fake_template = { render: ->'' }
        @rendered      = sinon.stub(@fake_template, 'render', -> '<tr class="set"><td>NEW SET</td></tr>')
        @subject.template = @fake_template
        @subject.removeSets()
        @subject.addSetDetail(1, { reps: 4, weight: 200 })
 
      it 'renders the new template on the page', ->
        expect($( 'tr.set > td' )).toHaveText('NEW SET')

  describe 'rep_down', ->
    beforeEach ->
      @rep_down  = $('a#reps_down')
      WorkoutExerciseSetDetailsForm.link = @rep_down
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
      expect(weight_parent_val).toEqual(85)

    it 'increases the weight parents text by 2.5', ->
      weight_text = $('p#weight_text').text()
      expect(weight_text).toEqual('85kg')

  describe 'add set', ->
    beforeEach ->
      @fake_template = { render: -> ''}
      @renderer      = sinon.stub(@fake_template, 'render', ->'<tr class="set">NEW SET <a class="change_workout_exercise_set_details">LINK</a></tr>')
      @subject.template = @fake_template
      @add_set = $( '.new_workout_exercise_set_details' )
      @add_set.click()

    it 'adds a new set to the workout exercise', ->
      expect($( 'tr.set' ).length).toEqual(3)

    it 'hides the add set button', ->
      expect(@add_set).toHaveClass('hidden')

    describe 'interact with new set', ->
      beforeEach ->
        @set  = $( 'tr.set' )[2]
        @link = @set.find('a.change_workout_exercise_set_details').first()
        @link.click()

      it 'shows the add button', ->
        expect(@add_set).not.toHaveClass('hidden')