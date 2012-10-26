describe "TagLinkSorter", ->
  beforeEach ->
    loadFixtures "tag_link_bar.html"
    sorter = new TagLinkSorter
    sorter.init()
    @$inactiveTags = $("#inactive_tags")

  it "hides all tags", ->
    expect(@$inactiveTags).toHaveClass("hidden")

  describe "click 'SORT BY TAGS'", ->
    beforeEach ->
      @$showTagsButton = $("#show_tags_button")
      @$showTagsButton.click()

    it "shows all tags", ->
      expect(@$inactiveTags).not.toHaveClass("hidden")

    describe "click 'SORT BY TAGS' again", ->
      beforeEach ->
        @$showTagsButton.click()

      it "hides all tags", ->
        expect(@$inactiveTags).toHaveClass("hidden")

    describe "click 'CHEST'", ->
      beforeEach ->
        @$backWorkout  = $(".workout_list#back")
        @$chestWorkout = $(".workout_list#chest")
        @$chestLink    = $("a.chest")
        @$chestLink.click()

      it "moves the chest link tag to active_tags", ->
        expect($("#active_tags > a.chest")).toExist()
        expect($("#inactive_tags > a.chest")).not.toExist()

      it "only shows workouts with a chest id", ->
        expect(@$backWorkout).toHaveClass("hidden")
        expect(@$chestWorkout).not.toHaveClass("hidden")

      describe "click 'CHEST' again", ->
        beforeEach ->
          @$chestLink.click()

        it "moves the chest link tag to inactive_tags", ->
          expect($("#inactive_tags > a.chest")).toExist()
          expect($("#active_tags > a.chest")).not.toExist()

        it "shows all the workouts", ->
          expect(@$backWorkout).not.toHaveClass("hidden")
          expect(@$chestWorkout).not.toHaveClass("hidden")