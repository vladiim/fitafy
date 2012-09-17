describe("Workout detail", ->

  describe("hovering over a workout tag", ->
    it("shows how many workouts are in the tag", ->
      loadFixtures "one_muscle_tag.html"
      init()
      $(".tag_link").mouseover()
      expect($(".detail")).not.toHaveClass("hidden")
    )
  )
)