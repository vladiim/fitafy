describe "WorkoutForm", ->

  beforeEach ->
    loadFixtures "workout_name_form.html"
    @form = new WorkoutForm
    @form.init()

  describe "workout name form", ->
    beforeEach ->
      @show_name   = $("a.show_link[data-tag=name]")
      @form_name   = $(".workout_form.name")
      @form_other  = $(".workout_form.instructions")
      @value_name  = $(".workout_value.name")
      @value_other = $(".workout_value.instructions")
      @cancel_name = $("a.hide_link[data-tag=name]")

    it "is hidden by default", ->
      expect(@form_name).toHaveClass("hidden")

    describe "click 'Edit workout name'", ->
      beforeEach ->
        @show_name.click()

      it "shows the workout name form", ->
        expect(@form_name).not.toHaveClass("hidden")

      it "hides the associated value", ->
        expect(@value_name).toHaveClass("hidden")

      it "doesn't affect other workout elements", ->
        expect(@form_other).toHaveClass("hidden")
        expect(@value_other).not.toHaveClass("hidden")

      describe "click 'Cancel' within the form", ->
        beforeEach ->
          @cancel_name.click()

        it "hides the workout name form", ->
          expect(@form_name).toHaveClass("hidden")

        it "shows the workout name value", ->
          expect(@value_name).not.toHaveClass("hidden")

      describe "form submitted", ->
        beforeEach ->
          @form.formSubmitted()

        it "shows all values", ->
          expect( @value_name ).not.toHaveClass("hidden")
          expect( @value_other ).not.toHaveClass("hidden")

        it "hides all forms", ->
          expect( @form_name ).toHaveClass("hidden")
          expect( @form_other ).toHaveClass("hidden")