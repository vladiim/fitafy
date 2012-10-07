describe "WorkoutExerciseForm", ->
  beforeEach ->
    loadFixtures "workout_exercise_form.html"
    workout_exercise_form = new WorkoutExerciseForm
    workout_exercise_form.init()
    @$show_link  = $(".add_workout_exercise_form")
    @$modal_form = $("#add_workout_exercise")
    @$show_link.click()

  describe "form loaded", ->
    beforeEach ->
      @$abs_exercise = $(".exercise_list > #abs")
      @$back_exercise = $(".exercise_list > #back")

    it "defaults to showing all the exercises", ->
      expect(@$abs_exercise).not.toHaveClass("hidden")
      expect(@$back_exercise).not.toHaveClass("hidden")

    describe "filter with abs", ->
      beforeEach ->
        @$abs_link = $("#add_workout_exercise > a #abs")
        @$abs_link.click()

    it "hides the other exercises", ->
      expect(@$abs_exercise).not.toHaveClass("hidden")
      expect(@$back_exercise).toHaveClass("hidden")