describe("Click tag", ->

  describe("clicking a muscles tag", ->
  	beforeEach ->
      loadFixtures "one_muscle_tag.html"
      init()
      $(".tag_link").click()

    it("removes the hidden class from the remove_tag_link", ->
      # $remove_link = $(this).siblings(".remove_tag_link")
      expect(".remove_tag_link").not.toHaveClass("hidden")
    )

    it("only removes the hidden class from this remove_tag_link", ->
    )

    it("adds the hidden class to the tag_link", ->
      expect(".tag_link").toHaveClass("hidden")
    )
  )
)