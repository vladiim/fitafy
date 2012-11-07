describe "ExerciseOrderer", ->
  beforeEach ->
    loadFixtures "show_exercise.html"
    @orderer = new ExerciseOrderer
    @orderer.init()
    @up_icon_1   = $("#exercise_1 > .w_e_order > i.up_icon")
    @down_icon_1 = $("#exercise_1 > .w_e_order > i.down_icon")
    @up_icon_2   = $("#exercise_2 > .w_e_order > i.up_icon")
    @down_icon_2 = $("#exercise_2 > .w_e_order > i.down_icon")

  describe "click exercise 2 up icon", ->
    beforeEach ->
      $(".up_icon#2").click()

    it "exercise 2 and 1 swap ids", ->
      expect(@up_icon_2).toHaveId("1")
      expect(@down_icon_2).toHaveId("1")
      expect(@up_icon_1).toHaveId("2")
      expect(@down_icon_1).toHaveId("2")

    # it "exercise 2 and 1 swap text", ->
      # expect($("#exercise_2 > .w_e_order > h1")).toHaveText("1")
      # expect($("#exercise_1 > .w_e_order > h1")).toHaveText("2")

  describe "click exercise 1 down icon", ->
    beforeEach ->
      console.log($(".down_icon#1").attr("id"))
      console.log($(".up_icon#1").attr("id"))
      $(".down_icon#1").click()

    it "exercise 1 and 2 swap ids", ->
      expect(@up_icon_2).toHaveId("1")
      expect(@down_icon_2).toHaveId("1")
      expect(@up_icon_1).toHaveId("2")
      expect(@down_icon_1).toHaveId("2")