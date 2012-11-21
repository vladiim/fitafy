# describe "ExercisePopover", ->
#   beforeEach ->
#     loadFixtures "exercise_listed_in_workout.html"
#     @popover = new ExercisePopover
#     @popover.init()
#     @link = $("a")

#   describe "gets the exercise's data from the server", ->

#     beforeEach ->
#       @server = sinon.fakeServer.create()
#       @link.click()

#     it "calls the correct url", ->
#       expect(@server).toHaveBeenCalledWith("/exercises/chest-press")