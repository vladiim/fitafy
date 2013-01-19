describe "TagLinkSorter", ->
  beforeEach ->
    loadFixtures "tag_link_bar.html"
    @chest = $( "a.chest" )
    @reloadWorkouts = sinon.stub()
    @loader = { reloadWorkouts: @reloadWorkouts, windowScrollCheck: sinon.stub() }
    TagLinkSorter.init()
    TagLinkSorter.loader = @loader

  describe 'click chest tag', ->
    beforeEach -> @chest.click()

    it "moves the chest link tag to active_tags", ->
      expect($("#active_tags > a.chest")).toExist()
      expect($("#inactive_tags > a.chest")).not.toExist()

    it "removes the workouts from the page", ->
      expect($("ul#workout_list > li")).not.toBe()

    it "reloads the workouts with the 'chest' tag", ->
      expect(@loader.reloadWorkouts).toHaveBeenCalledWith(['chest'])

    describe "click 'CHEST' again", ->
      beforeEach -> @chest.click()

      it "moves the chest link tag to inactive_tags", ->
        expect($("#inactive_tags > a.chest")).toExist()
        expect($("#active_tags > a.chest")).not.toExist()

      it "reloads the workouts with no tags", ->
        expect(@loader.reloadWorkouts).toHaveBeenCalledWith([])

  describe "click 'SORT BY TAGS'", ->
    beforeEach ->
      @showTagsButton = $("#show_tags_button")
      @inactiveTags   = $( "#inactive_tags" )
      @showTagsButton.click()

    it "shows all tags", ->
      expect(@inactiveTags).not.toHaveClass("hidden")

    describe "click 'SORT BY TAGS' again", ->
      beforeEach -> @showTagsButton.click()

      it "hides all tags", ->
        expect(@inactiveTags).toHaveClass("hidden")