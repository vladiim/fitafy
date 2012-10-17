describe "Autocomplete widget", ->
  beforeEach ->
    loadFixtures "autocomplete_form.html"
    autocomplete_data = { 1: "Alpha", 2: "Beta", 3: "Gamma", 4: "Delta" }

    initAutocompleteSelector({
      parentSelector: "#autodiv",
      field: "[workout][exercise_ids]",
      initialValue: "1,3",
      data: autocomplete_data
    })

  describe "sets up the hidden form element", ->
    beforeEach ->
      @hiddenField = $("#autodiv #workout_exercise_ids")

    it "gives the hidden field the correct type", ->
      expect(@hiddenField).toHaveAttr "type", "hidden"

    it "gives the hidden field the corrrect name", ->
      expect(@hiddenField).toHaveAttr "name", "[workout][exercise_ids]"

    it "gives the hidden field the correct value", ->
      expect(@hiddenField).toHaveAttr "value", "1,3"

  describe "sets up expected input element", ->
    beforeEach ->
      @inputElement = $("#autodiv #workout_exercise_ids_autocomplete")

    it "gives the input element the proper type", ->
      expect(@inputElement).toHaveAttr "type", "text"

    it "givens the input element the proper value", ->
      expect(@inputElement).toHaveAttr "value", ""

    it "gives the input element an add button", ->
      addbutton = $("#autodiv #workout_exercise_ids_2 a")
      expect(addbutton).toHaveClass("add-button")

  describe "creates the list elements with the right button", ->
    beforeEach ->
      @ul = $("#autodiv #workout_exercise_ids_list")

    it "sets the exsisting elements to remove", ->
      expect(@ul.find("li#workout_exercise_ids_1")).toHaveText("Alpha Remove")
      expect(@ul.find("#workout_exercise_ids_1.remove-button")).toExist()
      expect(@ul.find("li#workout_exercise_ids_3")).toHaveText("Gamma Remove")
      expect(@ul.find("#workout_exercise_ids_3.remove-button")).toExist()

    it "sets the rest of the elements to add", ->
      expect(@ul.find("li#workout_exercise_ids_2")).toHaveText("Beta Add")
      expect(@ul.find("#workout_exercise_ids_2 .add-button")).toExist()
      expect(@ul.find("li#workout_exercise_ids_4")).toHaveText("Delta Add")
      expect(@ul.find("#workout_exercise_ids_4 .add-button")).toExist()

  describe "click 'Beta Add'", ->
    beforeEach ->
      @ul        = $("#autodiv #workout_exercise_ids_list")
      $addButton = $("#workout_exercise_ids_2 a.add-button")
      $addButton.click()

    it "switches Beta to a remove-button", ->
      expect($("#autodiv ul li a.remove-button").size()).toEqual(3)

    it "switches Beta from an add-button", ->
      expect($("#autodiv ul li a.add-button").size()).toEqual(1)

    it "changes 'Beta Add' to 'Beta Remove'", ->
      expect(@ul.find("li#workout_exercise_ids_2")).toHaveText("Beta Remove")

    it "changes the Beta link's class to 'remove-button'", ->
      expect(@ul.find("#workout_exercise_ids_2 a.remove-button")).toExist()

    it "adds Beta's id to the hidden field", ->
      expect($("input:hidden")).toHaveAttr("value", "1,3,2")

    describe "click 'Beta Remove'", ->
      beforeEach ->
        $removeButton = $("#workout_exercise_ids_2 a.remove-button")
        $removeButton.click()

      it "switches Beta to a add-button", ->
        expect($("#autodiv ul li a.add-button").size()).toEqual(2)

      it "switches Beta from a remove-button", ->
        expect($("#autodiv ul li a.remove-button").size()).toEqual(2)

      it "changes 'Beta Remove' to 'Beta Add'", ->
        expect(@ul.find("li#workout_exercise_ids_2")).toHaveText("Beta Add")

      it "changes the Beta link's class to 'add-button'", ->
        expect(@ul.find("#workout_exercise_ids_2 a.add-button")).toExist()

      it "removea Beta's id from the hidden field", ->
        expect($("input:hidden")).toHaveAttr("value", "1,3")