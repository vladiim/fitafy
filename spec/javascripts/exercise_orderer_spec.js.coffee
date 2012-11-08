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
      $(".up_icon[data-id=2]").click()

    it "exercise 2 and 1 swap ids", ->
      expect(@up_icon_2).toHaveAttr("data-id" ,"1")
      expect(@down_icon_2).toHaveAttr("data-id" ,"1")
      expect(@up_icon_1).toHaveAttr("data-id" ,"2")
      expect(@down_icon_1).toHaveAttr("data-id" ,"2")

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

    it "exercise 1 and 2 swap ids", ->
      expect(@up_icon_1).toHaveAttr("data-id" ,"2")
      expect(@down_icon_1).toHaveAttr("data-id" ,"2")
      expect(@up_icon_2).toHaveAttr("data-id" ,"1")
      expect(@down_icon_2).toHaveAttr("data-id" ,"1")

  describe "click exercise 2 down icon", ->
    beforeEach ->
      $(".down_icon[data-id=2]").click()

    it "nothing happens", ->
      expect(@up_icon_1).toHaveAttr("data-id" ,"1")
      expect(@down_icon_1).toHaveAttr("data-id" ,"1")
      expect(@up_icon_2).toHaveAttr("data-id" ,"2")
      expect(@down_icon_2).toHaveAttr("data-id" ,"2")