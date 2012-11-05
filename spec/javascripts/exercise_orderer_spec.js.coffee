describe "ExerciseOrderer", ->
  beforeEach ->
    loadFixtures "show_exercise.html"
    @orderer = new ExerciseOrderer
    @orderer.init()

  describe "click exercise 2 up", ->
    beforeEach ->
      # spyOn(@orderer, "updateOrder").andCallThrough()
      # spyOn($, "ajax").andCallFake (ajaxParams) ->
      #   ajaxParams.success "ORDER NUMBER"
      $(".exercise_up#2").click()

    it "exercise 2 and 1 swap ids", ->
      expect($("#exercise_2 > .w_e_order > i:nth-child(1)")).toHaveId("1")
      # expect($("#exercise_2 > .w_e_order > i:nth-child(2)")).toHaveId("1")
      expect($("#exercise_1 > .w_e_order > i:nth-child(1)")).toHaveId("2")
      # expect($("#exercise_1 > .w_e_order > i:nth-child(1)")).toHaveId("2")