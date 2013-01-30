describe 'WorkoutExerciseSetDetailsForm', ->
  beforeEach ->
    loadFixtures 'workout_exercise_dynamic_form.html'
    @rep_up  = $('a#reps_up')
    @subject = WorkoutExerciseSetDetailsForm
    @subject.init()

  describe 'rep_up', ->
    beforeEach ->
      @data    = { "set_details": { "1": { "set": 1, "reps": 13, "weight": 80 }, "2": { "set": 2, "reps": 10, "weight": 100 } }}
      sinon.stub($, 'ajax')
      sinon.stub(@subject, 'updateSuccess', -> '')
      WorkoutExerciseSetDetailsForm.link = @rep_up
      WorkoutExerciseSetDetailsForm.linkClicked()

    afterEach ->
      $.ajax.restore()
      @subject.updateSuccess.restore()

    it 'increases the rep parents value', ->
      rep_parent_val = $('#rep_parent').data('value')
      expect(rep_parent_val).toEqual(13)

    it 'increases the rep parents text', ->
      rep_text = $('p#rep_text').text()
      expect(rep_text).toEqual('13')

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

    describe 'addSetDetail', ->
      beforeEach ->
        @fake_template = { render: ->'' }
        @rendered      = sinon.stub(@fake_template, 'render', -> '<tr class="set"><td>NEW SET</td></tr>')
        @subject.template = @fake_template
        @subject.removeSets()
        @subject.addSetDetail(1, { reps: 4, weight: 200 })
 
      it 'renders the new template on the page', ->
        expect($( 'tr.set > td' )).toHaveText('NEW SET')

  describe 'click rep_down 10 times', ->
    beforeEach ->
      WorkoutExerciseSetDetailsForm.link = $('a#reps_down')
      WorkoutExerciseSetDetailsForm.linkClicked() for i in [1..12]

    it 'rep_parent doesnt go below 1', ->
      rep_parent_val = $('#rep_parent').data('value')
      expect(rep_parent_val).toEqual(1)

    it 'rep_text  doesnt go below 1', ->
      rep_text = $('p#rep_text').text()
      expect(rep_text).toEqual('1')

  describe 'click weight_down 18 times', ->
    beforeEach ->
      WorkoutExerciseSetDetailsForm.link = $('a#weight_down')
      WorkoutExerciseSetDetailsForm.linkClicked() for i in [1..18]

    it 'weight_parent doesnt go below 5', ->
      rep_parent_val = $('#weight_parent').data('value')
      expect(rep_parent_val).toEqual(5)

    it 'weight_text  doesnt go below 1', ->
      rep_text = $('p#weight_text').text()
      expect(rep_text).toEqual('5kg')

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
      @subject.link = @weight_up
      @subject.linkClicked()

    it 'increases the weight parents value by 2.5', ->
      weight_parent_val = $('#weight_parent').data('value')
      expect(weight_parent_val).toEqual(85)

    it 'increases the weight parents text by 2.5', ->
      weight_text = $('p#weight_text').text()
      expect(weight_text).toEqual('85kg')

  describe 'add set', ->
    beforeEach ->
      @fake_template    = { render: -> ''}
      @renderer         = sinon.stub(@fake_template, 'render', ->'<tr id="new_set" class="set"><td><p>NEW SET</p></td></tr>')
      @subject.template = @fake_template
      sinon.spy(@subject, 'reinit')
      @add_set = $( '.new_workout_exercise_set_details' )
      @add_set.click()

    afterEach -> @subject.reinit.restore()

    it 'renders the new set', ->
      expect($('tr#new_set > td > p')).toHaveText('NEW SET')

    it 'adds a new set to the workout exercise', ->
      expect($( 'tr.set' ).length).toEqual(3)

    it 'hides the add set button', ->
      expect(@add_set).toHaveClass('hidden')

    it 'reinitializes itself', ->
      expect(@subject.reinit).toHaveBeenCalled()

    describe 'interact with new set', ->
      beforeEach ->
        @subject.link = @rep_up
        @subject.linkClicked()
        @set  = $( 'tr#new_set' )
        @link = @set.find('a.change_workout_exercise_set_details').first()
        @link.click()

      it 'shows the add button', ->
        expect(@add_set).not.toHaveClass('hidden')

  describe 'delete first set', ->
    beforeEach ->
      sinon.spy(@subject, 'deleteLinkClicked', ->'')
      @delete = $(' a#delete_first_set ')
      @delete.click()

    afterEach -> @subject.deleteLinkClicked.restore()

    it 'removes the first set', ->
      expect($( 'tr#first_we_set_details' )).not.toExist()

    it 'updates the workout', ->
      expect(@subject.deleteLinkClicked).toHaveBeenCalled()