describe "ExerciseOrderer", ->
  beforeEach ->
    loadFixtures "show_exercise.html"
    @orderer = new ExerciseOrderer
    @orderer.init()

  describe "click exercise 2 up icon", ->
    beforeEach ->
      $(".up_icon#2").click()

    it "exercise 2 and 1 swap ids", ->
      expect($("#exercise_2 > .w_e_order > i.up_icon")).toHaveId("1")
      # expect($("#exercise_2 > .w_e_order > i.down_icon")).toHaveId("1")
      expect($("#exercise_1 > .w_e_order > i.up_icon")).toHaveId("2")
      expect($("#exercise_1 > .w_e_order > i.down_icon")).toHaveId("2")