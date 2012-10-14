describe "Autocomplete widget", ->
  beforeEach ->
    loadFixtures "autocomplete_form.html"
    # affix("form div#autodiv")
    # autocomplete_data = { "workout": 1, "exercises": { 1: "Alpha", 2: "Beta", 3: "Gamma", 4: "Delta" } }
    autocomplete_data = { 1: "Alpha", 2: "Beta", 3: "Gamma", 4: "Delta" }

    initAutocompleteSelector({
      parentSelector: "#autodiv",
      field: "[workout][exercise_ids]",
      initialValue: "1,3",
      data: autocomplete_data
    })

  describe "sets up the hidden form element", ->
    beforeEach ->
      @.hiddenField = $("#autodiv #workout_exercise_ids")

    it "gives the hidden field the correct type", ->
      expect(@.hiddenField).toHaveAttr "type", "hidden"

    it "gives the hidden field the corrrect name", ->
      expect(@.hiddenField).toHaveAttr "name", "[workout][exercise_ids]"

    it "gives the hidden field the correct value", ->
      expect(@.hiddenField).toHaveAttr "value", "1,3"

  describe "sets up expected input element", ->
    beforeEach ->
      @.inputElement = $("#autodiv #workout_exercise_ids_autocomplete")

    it "gives the input element the proper type", ->
      expect(@.inputElement).toHaveAttr "type", "text"

    it "givens the input element the proper value", ->
      expect(@.inputElement).toHaveAttr "value", ""

    it "gives the input element an add button", ->
      addbutton = $("#autodiv a#workout_exercise_ids_add_button")
      expect(addbutton).toHaveClass("selector_add_button")