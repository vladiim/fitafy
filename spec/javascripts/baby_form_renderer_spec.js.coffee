describe "BabyFormRenderer", ->
  beforeEach ->
    loadFixtures "baby_form.html"
    @renderer = new BabyFormRenderer
    @$group   = $(".baby_form_group")
    @$link    = $("a.baby_form_link")
    @$value   = $(".baby_form_value")
    @renderer.init()
    @server = sinon.fakeServer.create()

  afterEach -> @server.restore()

  describe "click 'edit' link", ->
    beforeEach ->
      sinon.stub(@renderer, 'babyForm', ->  "<form>BABY FORM</form>")
      @$link.click()

    it "hides the current form value", ->
      expect(@$value).not.toHaveText("Current instructions")

    it "adds the baby form to the form_group", ->
      expect($(".baby_form_group > form")).toHaveText('BABY FORM')

    it "removes the current 'baby_form_edit_link' text", ->
      expect(@$link).not.toHaveText("edit")

    it "changes the 'baby_form_edit_link' text", ->
      expect(@$link).toHaveText("cancel")