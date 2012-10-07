describe "WorkoutExerciseForm", ->
  beforeEach ->
    loadFixtures "workout_exercise_modal.html"
    form = new WorkoutExerciseForm
    form.init()
    @$abs = $(".exercise_list > #abs")
    @$back = $(".exercise_list > #back")
    @$chest = $(".exercise_list > #chest")

  it "defaults to showing all the exercises", ->
    expect(@$abs).not.toHaveClass("hidden")
    expect(@$back).not.toHaveClass("hidden")
    expect(@$chest).not.toHaveClass("hidden")

  describe "click 'ABS' tag link", ->
    beforeEach ->
      @$abs_link = $(".exercise_tag_list > .tag_link #abs")
      @$abs_link.click()

    it "doesn't hide the abs exercise", ->
      expect(@$abs).not.toHaveClass("hidden")

    it "hides the back exercise", ->
      expect(@$back).toHaveClass("hidden")

    it "hides the chest exercise", ->
      expect(@$chest).toHaveClass("hidden")