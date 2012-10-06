describe "WorkoutForm", ->

  beforeEach ->
    loadFixtures "workout_show_page.html"
    form = new WorkoutForm
    form.init()

  describe "workout name form", ->
    beforeEach ->
      @$show_link   = $(".workout_name > .edit_workout_name")
      @$form        = $(".edit_workout_name_form")
      @$cancel_link = $(".edit_workout_name_form > .edit_workout_name")

    it "is hidden by default", ->
      expect(@$form).toHaveClass("hidden")

    describe "click 'Edit workout name'", ->
      beforeEach ->
        @$show_link.click()

      it "shows the workout form", ->
        expect(@$form).not.toHaveClass("hidden")

      describe "click 'Edit workout name' again", ->
        it "hides the workout form", ->
          @$show_link.click()
          expect(@$form).toHaveClass("hidden")

      describe "click 'Cancel' within the form", ->
        it "hides the workout form", ->
          @$cancel_link.click()
          expect(@$form).toHaveClass("hidden")