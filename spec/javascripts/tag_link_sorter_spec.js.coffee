describe "TagLinkSorter", ->
  beforeEach ->
    loadFixtures "tag_link_bar.html"
    sorter = new TagLinkSorter
    sorter.init()
    @$allTags = $(".all_tags")

  it "hides all tags", ->
    expect(@$allTags).toHaveClass("hidden")

  describe "click 'SORT BY TAGS'", ->
    beforeEach ->
      @$showTagsButton = $("#show_tags_button")
      @$showTagsButton.click()

    it "shows all tags", ->
      expect(@$allTags).not.toHaveClass("hidden")