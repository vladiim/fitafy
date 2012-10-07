describe "WorkoutExerciseForm", ->
  beforeEach ->
    loadFixtures "workout_exercise_modal.html"
    workout_exercise_form = new WorkoutExerciseForm
    workout_exercise_form.init()

  describe "form is hidden", ->
    beforeEach ->
      @$workout_exercise_show_link = $(".add_workout_exercise_form")
      @$workout_exercise_form_form = $("#add_workout_exercise")

    it "hides the form by default", ->
      expect(@$workout_exercise_form_form).toHaveClass("hidden")

    describe "click 'ADD EXERCISE' to show form", ->
      beforeEach ->
        @$workout_exercise_show_link.click()

      it "shows the form", ->
        expect(@$workout_exercise_form_form).not.toHaveClass("hidden")

  #   @$abs = $(".exercise_list > #abs")
  #   @$back = $(".exercise_list > #back")
  #   @$chest = $(".exercise_list > #chest")

  # it "defaults to showing all the exercises", ->
  #   expect(@$abs).not.toHaveClass("hidden")
  #   expect(@$back).not.toHaveClass("hidden")
  #   expect(@$chest).not.toHaveClass("hidden")

  # describe "click 'ABS' tag link", ->
  #   beforeEach ->
  #     @$abs_link = $(".exercise_tag_list > .tag_link #abs")
  #     @$abs_link.click()

  #   it "doesn't hide the abs exercise", ->
  #     expect(@$abs).not.toHaveClass("hidden")

  #   it "hides the back exercise", ->
  #     expect(@$back).toHaveClass("hidden")

  #   it "hides the chest exercise", ->
  #     expect(@$chest).toHaveClass("hidden")