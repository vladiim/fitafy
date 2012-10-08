describe "WorkoutForm", ->

  beforeEach ->
    loadFixtures "workout_show_page.html"
    form = new WorkoutForm
    form.init()

  describe "workout name form", ->
    beforeEach ->
      @$show_link   = $(".workout_name > .edit_workout.name")
      @$form        = $(".edit_workout_form.name")
      @$cancel_link = $(".edit_workout_form.name > .edit_workout.name")

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
      @$show_link   = $(".workout_notes > .edit_workout.notes")
      @$form        = $(".edit_workout_form.notes")
      @$cancel_link = $(".edit_workout_notes_form > .edit_workout.notes")

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

  describe "workout level form", ->
    beforeEach ->
      @$show_link   = $(".workout_level > .edit_workout.level")
      @$form        = $(".edit_workout_form.level")
      @$cancel_link = $(".edit_workout_form.level > .edit_workout_level")

    it "is hidden by default", ->
      expect(@$form).toHaveClass("hidden")

    describe "click 'Edit workout level'", ->
      beforeEach ->
        @$show_link.click()

      it "shows the workout level form", ->
        expect(@$form).not.toHaveClass("hidden")

      describe "click 'Edit workout level' again", ->
        it "hides the workout level form", ->
          @$show_link.click()
          expect(@$form).toHaveClass("hidden")

      # describe "click 'Cancel' within the form", ->
      #   it "hides the workout level form", ->
      #     @$cancel_link.click()
      #     expect(@$form).toHaveClass("hidden")

  describe "exercise instructions form", ->
    beforeEach ->
      @$show_link   = $(".workout_exercises > .edit_workout.instructions")
      @$form        = $(".edit_workout_form.instructions")
      @$cancel_link = $(".edit_workout_instructions_form > .edit_workout.instructions")

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

  describe "exercise sets form", ->
    beforeEach ->
      @$show_link   = $(".workout_exercises > .edit_workout.sets")
      @$form        = $(".edit_workout_form.sets")
      @$cancel_link = $(".edit_workout_form.sets > .edit_workout.sets")

    it "is hidden by default", ->
      expect(@$form).toHaveClass("hidden")

    describe "click 'Edit exercise sets'", ->
      beforeEach ->
        @$show_link.click()

      it "shows the exercise sets form", ->
        expect(@$form).not.toHaveClass("hidden")

      describe "click 'Edit exercise sets' again", ->
        it "hides the exercise sets form", ->
          @$show_link.click()
          expect(@$form).toHaveClass("hidden")

      # describe "click 'Cancel' within the form", ->
      #   it "hides the exercise sets form", ->
      #     @$cancel_link.click()
      #     expect(@$form).toHaveClass("hidden")