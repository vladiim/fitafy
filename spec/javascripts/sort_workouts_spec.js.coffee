describe "SortWorkouts", ->

  beforeEach ->
    loadFixtures "workout_index.html"
    sorter = new SortWorkouts
    sorter.init()
    @abs_tag     = $(".abs.tag")
    @back_tag    = $(".back.tag")
    @chest_tag   = $(".chest.tag")
    @abs_item    = $(".workout_list > li.abs")
    @back_item   = $(".workout_list > li.back")
    @chest_item  = $(".workout_list > li.chest")


  it "shows all the elements in the workout list", ->
    expect(@abs_item).not.toHaveClass("hidden")
    expect(@back_item).not.toHaveClass("hidden")
    expect(@chest_item).not.toHaveClass("hidden")

  describe "click on abs tag", ->
    beforeEach ->
      @abs_tag.click()

    it "hides everything but the abs workout", ->
      expect(@abs_item).not.toHaveClass("hidden")
      expect(@back_item).toHaveClass("hidden")
      expect(@chest_item).toHaveClass("hidden")

    it "adds 'clicked' state to the tag link", ->
      expect(@abs_tag).toHaveClass("clicked")
      expect(@back_tag).not.toHaveClass("clicked")
      expect(@chest_tag).not.toHaveClass("clicked")