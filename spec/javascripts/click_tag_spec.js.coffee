describe("Click tag", ->

  beforeEach ->
    loadFixtures "one_muscle_tag.html"
    init()

  describe("sort by tags button", ->
    it("defaults to hiding the muscle tags", ->
      expect($(".muscle_tags")).toHaveClass("hidden")
    )
  )

  describe("click sort by tags button", ->
    it("removes the hidden class from .muscle_tags", ->
      $(".sort_by_tags").click()
      expect($(".muscle_tags")).not.toHaveClass("hidden")
    )
  )

  describe("clicking a muscles tag", ->
  	beforeEach ->
      $(".tag_link").click()

    it("removes the hidden class from the remove_tag_link", ->
      # $remove_link = $(this).siblings(".remove_tag_link")
      expect($(".remove_tag_link")).not.toHaveClass("hidden")
    )

    it("adds the hidden class to the tag_link", ->
      expect($(".tag_link")).toHaveClass("hidden")
    )
  )

  describe("click tag link then remove tag link", ->
    beforeEach ->
      $(".tag_link").click()
      $(".remove_tag_link").click()

    it("adds the hidden class to remove_tag_link", ->
      expect($(".remove_tag_link")).toHaveClass(".hidden")
    )

    it("removes the hidden class from tag_link", ->
      expect($(".tag_link")).not.toHaveClass(".hidden")
    )
  )
)