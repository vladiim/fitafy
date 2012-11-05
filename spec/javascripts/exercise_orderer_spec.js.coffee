describe "ExerciseOrderer", ->
  beforeEach ->
    loadFixtures "show_exercise.html"
    orderer = new ExerciseOrderer
    orderer.init()

  describe "click exercise 2 up", ->
    beforeEach ->
      spyOn(orderer, "updateOrder").andCallTrough()
      spyOn($, "ajax").andCallFake((ajaxParams) ->
        ajaxParams.success("ORDER NUMBER")
      )
      $(".exercise_up#2").click()


    it "changes ", ->
      expect(this needs to be revised yo!)