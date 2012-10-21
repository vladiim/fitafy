describe "ShowBabyWorkoutForm", ->
  beforeEach ->
    loadFixtures "workout_exercise_form.html"
    baby_form = new WorkoutExerciseForm
    baby_form.init()

  describe "form loaded", ->
    beforeEach ->
      @$abs_exercise   = $(".abs.exercise_list_item")
      @$back_exercise  = $(".back.exercise_list_item")
      @$chest_exercise = $(".chest.exercise_list_item")

    it "defaults to showing all the exercises", ->
      expect(@$abs_exercise).not.toHaveClass("hidden")
      expect(@$back_exercise).not.toHaveClass("hidden")
      expect(@$chest_exercise).not.toHaveClass("hidden")

    describe "filter with abs", ->
      beforeEach ->
        @$abs_link = $(".abs.tag_link")
        @$abs_link.click()

      it "hides the other exercises", ->
        expect(@$abs_exercise).not.toHaveClass("hidden")
        expect(@$back_exercise).toHaveClass("hidden")
        expect(@$chest_exercise).toHaveClass("hidden")

      it "changes the list title to abs", ->
        expect($("h3.list_title")).toHaveText("Abs Exercises")