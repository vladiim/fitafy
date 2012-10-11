describe "WorkoutForm", ->

  beforeEach ->
    loadFixtures "workout_name_form.html"
    form = new WorkoutForm
    form.init()

  describe "workout name form", ->
    beforeEach ->
      @$show_link   = $(".workout_name > .edit_workout.name")
      @$form        = $(".edit_workout_form.name")
      @$cancel_link = $(".edit_workout_form > .edit_workout")

    it "is hidden by default", ->
      expect(@$form).toHaveClass("hidden")

    describe "click 'Edit workout name'", ->
      beforeEach ->
        @$show_link.click()

      it "shows the workout name form", ->
        expect(@$form).not.toHaveClass("hidden")

      describe "click 'Edit workout name' again", ->
        it "hides the workout name form", ->
          @$show_link.click()
          expect(@$form).toHaveClass("hidden")

      # describe "click 'Cancel' within the form", ->
      #   it "hides the workout name form", ->
      #     @$cancel_link.click()
      #     expect(@$form).toHaveClass("hidden")