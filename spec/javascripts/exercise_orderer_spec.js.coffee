describe "ExerciseOrderer", ->
  beforeEach ->
    loadFixtures "show_exercise.html"
    @orderer = new ExerciseOrderer
    @orderer.init()
    @up_icon_1         = $("#exercise_1 > .w_e_order > i.up_icon")
    @down_icon_1       = $("#exercise_1 > .w_e_order > i.down_icon")
    @text_1            = $("#exercise_1 > .w_e_order > h2")
    @ex_order_1        = $("ul.show_exercises li:nth-child(1)")
    @up_icon_2         = $("#exercise_2 > .w_e_order > i.up_icon")
    @down_icon_2       = $("#exercise_2 > .w_e_order > i.down_icon")
    @text_2            = $("#exercise_2 > .w_e_order > h2")
    @ex_order_2        = $("ul.show_exercises li:nth-child(2)")
    @workout_exercises = $(".workout_exercise")

  describe "click exercise 2 up icon", ->
    beforeEach ->
      $(".up_icon[data-id=2]").click()

    it "swaps exercise 2 and 1 data-ids", ->
      expect(@up_icon_2).toHaveAttr("data-id" ,"1")
      expect(@down_icon_2).toHaveAttr("data-id" ,"1")
      expect(@up_icon_1).toHaveAttr("data-id" ,"2")
      expect(@down_icon_1).toHaveAttr("data-id" ,"2")

    it "swaps exercise 2 and 1 h2 text", ->
      expect(@text_2).toHaveText("1")
      expect(@text_1).toHaveText("2")

    it "swaps exercise 2 and 1 h2 data-id", ->
      expect(@text_2).toHaveAttr("data-id", "1")
      expect(@text_1).toHaveAttr("data-id", "2")

    it "moves exercise_2 above exercise_1", ->
      expect(@ex_order_1).toHaveId("exercise_2")
      expect(@ex_order_2).toHaveId("exercise_1")

  describe "click exercise 1 up icon", ->
    beforeEach ->
      $(".up_icon[data-id=1]").click()

    it "nothing happens", ->
      expect(@up_icon_2).toHaveAttr("data-id" ,"2")
      expect(@down_icon_2).toHaveAttr("data-id" ,"2")
      expect(@up_icon_1).toHaveAttr("data-id" ,"1")
      expect(@down_icon_1).toHaveAttr("data-id" ,"1")

  describe "click exercise 1 down icon", ->
    beforeEach ->
      $(".down_icon[data-id=1]").click()

    it "swaps exercise 1 and 2 data-ids", ->
      expect(@up_icon_1).toHaveAttr("data-id" ,"2")
      expect(@down_icon_1).toHaveAttr("data-id" ,"2")
      expect(@up_icon_2).toHaveAttr("data-id" ,"1")
      expect(@down_icon_2).toHaveAttr("data-id" ,"1")

    it "swaps exercise 1 and 2 text", ->
      expect(@text_2).toHaveText("1")
      expect(@text_1).toHaveText("2")

    it "swaps exercise 2 and 1 h2 data-id", ->
      expect(@text_2).toHaveAttr("data-id", "1")
      expect(@text_1).toHaveAttr("data-id", "2")

  describe "click exercise 2 down icon", ->
    beforeEach ->
      $(".down_icon[data-id=2]").click()

    it "nothing happens", ->
      expect(@up_icon_1).toHaveAttr("data-id" ,"1")
      expect(@down_icon_1).toHaveAttr("data-id" ,"1")
      expect(@up_icon_2).toHaveAttr("data-id" ,"2")
      expect(@down_icon_2).toHaveAttr("data-id" ,"2")