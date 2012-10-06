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

  describe "workout notes form", ->
    beforeEach ->
      @$show_link   = $(".workout_notes > .edit_workout_notes")
      @$form        = $(".edit_workout_notes_form")
      @$cancel_link = $(".edit_workout_notes_form > .edit_workout_notes")

    it "is hidden by default", ->
      expect(@$form).toHaveClass("hidden")

    describe "click 'Edit workout notes'", ->
      beforeEach ->
        @$show_link.click()

      it "shows the workout name form", ->
        expect(@$form).not.toHaveClass("hidden")

      describe "click 'Edit workout notes' again", ->
        it "hides the workout notes form", ->
          @$show_link.click()
          expect(@$form).toHaveClass("hidden")

      # describe "click 'Cancel' within the form", ->
      #   it "hides the workout notes form", ->
      #     @$cancel_link.click()
      #     expect(@$form).toHaveClass("hidden")

  describe "exercise instructions form", ->
    beforeEach ->
      @$show_link   = $(".workout_exercises > .edit_exercise_instructions")
      @$form        = $(".edit_exercise_instructions_form")
      @$cancel_link = $(".edit_exercise_instructions_form > .edit_exercise_instructions")

    it "is hidden by default", ->
      expect(@$form).toHaveClass("hidden")

    describe "click 'Edit exercise instructions'", ->
      beforeEach ->
        @$show_link.click()

      it "shows the exercise instructions form", ->
        expect(@$form).not.toHaveClass("hidden")

      describe "click 'Edit exercise instructions' again", ->
        it "hides the exercise instructions form", ->
          @$show_link.click()
          expect(@$form).toHaveClass("hidden")

      # describe "click 'Cancel' within the form", ->
      #   it "hides the exercise instructions form", ->
      #     @$cancel_link.click()
      #     expect(@$form).toHaveClass("hidden")