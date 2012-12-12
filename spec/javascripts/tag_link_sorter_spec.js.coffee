describe "TagLinkSorter", ->
  beforeEach ->
    loadFixtures "tag_link_bar.html"
    @reloadWorkouts = sinon.stub()
    @loader = { reloadWorkouts: @reloadWorkouts, windowScrollCheck: sinon.stub() }
    @sorter = new TagLinkSorter(@loader)
    @sorter.init()
    @$inactiveTags = $("#inactive_tags")
    @$chestLink    = $("a.chest")

  it "hides all tags", ->
    expect(@$inactiveTags).toHaveClass("hidden")

  describe "click 'CHEST'", ->
    beforeEach -> @$chestLink.click()

    it "moves the chest link tag to active_tags", ->
      expect($("#active_tags > a.chest")).toExist()
      expect($("#inactive_tags > a.chest")).not.toExist()

    it "removes the workouts from the page", ->
      expect($("ul#workout_list > li")).not.toBe()

    it "reloads the workouts with the 'chest' tag", ->
      expect(@loader.reloadWorkouts).toHaveBeenCalledWith(['chest'])

    describe "click 'CHEST' again", ->
      beforeEach -> @$chestLink.click()

      it "moves the chest link tag to inactive_tags", ->
        expect($("#inactive_tags > a.chest")).toExist()
        expect($("#active_tags > a.chest")).not.toExist()

      it "reloads the workouts with no tags", ->
        expect(@loader.reloadWorkouts).toHaveBeenCalledWith([])

  describe "click 'SORT BY TAGS'", ->
    beforeEach ->
      @$showTagsButton = $("#show_tags_button")
      @$showTagsButton.click()

    it "shows all tags", ->
      expect(@$inactiveTags).not.toHaveClass("hidden")

    describe "click 'SORT BY TAGS' again", ->
      beforeEach -> @$showTagsButton.click()

      it "hides all tags", ->
        expect(@$inactiveTags).toHaveClass("hidden")

# describe "TagLinkSorter", ->
#   beforeEach ->
#     loadFixtures "tag_link_bar.html"
#     sorter = new TagLinkSorter
#     sorter.init()
#     @$inactiveTags = $("#inactive_tags")
#     @$chestLink    = $("a.chest")

#   it "hides all tags", ->
#     expect(@$inactiveTags).toHaveClass("hidden")

#   describe "click 'SORT BY TAGS'", ->
#     beforeEach ->
#       @$showTagsButton = $("#show_tags_button")
#       @$showTagsButton.click()

#     it "shows all tags", ->
#       expect(@$inactiveTags).not.toHaveClass("hidden")

#     describe "click 'SORT BY TAGS' again", ->
#       beforeEach ->
#         @$showTagsButton.click()

#       it "hides all tags", ->
#         expect(@$inactiveTags).toHaveClass("hidden")

#     describe "click 'CHEST'", ->
#       beforeEach ->
#         @$legsWorkout  = $("article.legs").parent("li")
#         @$chestWorkout = $("article.chest").parent("li")
#         @$chestLink.click()

#       it "moves the chest link tag to active_tags", ->
#         expect($("#active_tags > a.chest")).toExist()
#         expect($("#inactive_tags > a.chest")).not.toExist()

#       it "only shows workouts with a chest class", ->
#         expect(@$legsWorkout).toHaveClass("hidden")
#         expect(@$chestWorkout).not.toHaveClass("hidden")

#       describe "click 'CHEST' again", ->
#         beforeEach ->
#           @$chestLink.click()

#         it "moves the chest link tag to inactive_tags", ->
#           expect($("#inactive_tags > a.chest")).toExist()
#           expect($("#active_tags > a.chest")).not.toExist()

#         it "shows all the workouts", ->
#           expect(@$legsWorkout).not.toHaveClass("hidden")
#           expect(@$chestWorkout).not.toHaveClass("hidden")

#   describe "click 'CHEST' and 'LEGS'", ->
#     beforeEach ->
#       $("a.legs").click()
#       $("a.back").click()

#     it "shows the workout with back and legs", ->
#       expect($("article.back.legs").parent("li")).not.toHaveClass("hidden")

#     it "hides every other workout", ->
#       # expect($("article.chest.back").parent("li")).toHaveClass("hidden")
#       # expect($("article[class$='back']").parent("li")).toHaveClass("hidden")


