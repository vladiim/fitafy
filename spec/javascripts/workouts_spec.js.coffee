describe "WorkoutLoader", ->
  beforeEach ->
    loadFixtures "workout_list.html"
    @loader = new WorkoutLoader
    @incomingJSON = {
      responseText: {
        url:            "/users/1/workouts/1"
        muscles:        "back",
        name:           "workout",
        client_level:   "beginer",
        difficulty:     "easy",
        username:       "rza",
        exercise_count: "5"
      }
    }

  describe "acquires JSON data from server", ->
    beforeEach ->
      @template = $("li.workout_item").text("{{url}}") # mock mustache template
      spyOn($, "getJSON").andCallFake -> @incomingJSON

    it "knows its url", ->
      expect(@loader.url()).toEqual("/workouts.json")

    it "can get its template", ->
      spyOn(HoganTemplates['workouts_index'], "r").andCallFake ->
        @template
      expect(@loader.template()).toEqual("{{url}}")

    it "can acquire the right data", ->
      json = @loader.JSON()
      json = json[0]
      expect(json.ursername).toEqual("rza")
    