describe "WorkoutForm", ->

  beforeEach ->
    loadFixtures "workout_name_form.html"
    form = new WorkoutForm
    form.init()

  describe "workout name form", ->
    beforeEach ->
      @$show_link   = $(".edit_workout_value.name > a")
      @$form        = $(".edit_workout_form.name")
      @$other_form  = $(".edit_workout_form.instructions")
      @$value       = $(".edit_workout_value")
      @$other_value = $(".edit_workout_value.instructions")
      @$cancel_link = $(".edit_workout_form > a.cancel_edit_workout")

    it "is hidden by default", ->
      expect(@$form).toHaveClass("hidden")

    describe "click 'Edit workout name'", ->
      beforeEach ->
        @$show_link.click()

      it "shows the workout name form", ->
        expect(@$form).not.toHaveClass("hidden")

      it "hides the associated value", ->
        expect(@$value).toHaveClass("hidden")

      it "doesn't affect other workout elements", ->
        expect(@$other_form).toHaveClass("hidden")
        expect(@$other_value).not.toHaveClass("hidden")

      describe "click 'Edit workout name' again", ->
        it "hides the workout name form", ->
          @$show_link.click()
          expect(@$form).toHaveClass("hidden")

      describe "click 'Cancel' within the form", ->
        beforeEach ->
          @$cancel_link.click()

        it "hides the workout name form", ->
          expect(@$form).toHaveClass("hidden")

        it "shows the workout name value", ->
          expect(@$value).not.toHaveClass("hidden")