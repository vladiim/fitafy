describe 'ExercisePopover', ->
  beforeEach ->
    loadFixtures 'exercise_listed_in_workout.html'
    @popover = new ExercisePopover
    @link    = $( 'a.exercise_ajax_popover' )
    @popover.init()

  describe 'click popover link', ->
    afterEach ->
      @popover.target_link.popover( 'hide' )

    it 'shows the popover with options', ->
      sinon.spy(@popover, 'showPopoverWithOptions')
      @link.click()
      expect( @popover.showPopoverWithOptions ).toHaveBeenCalled()

  describe 'link clicked', ->
    beforeEach ->
      @popover.target_link = @link

    describe 'showPopover', ->
      it 'calls popover on the link', ->
        sinon.spy(@link, 'popover')
        @popover.showPopover()
        expect( @link.popover ).toHaveBeenCalledWith('show')

    describe 'options', ->
      it 'adds the options to the popover', ->
        sinon.spy(@link, 'popover')
        @popover.title       = "TITLE"
        @popover.content     = "CONTENT"
        @popover.target_link = @link
        @popover.options()
        expect( @link.popover ).toHaveBeenCalledWith({title: 'TITLE', content: 'CONTENT'})

    describe 'set options', ->
      beforeEach ->
        sinon.spy($, 'ajax')
        @popover.setOptions()

      afterEach -> $.ajax.restore()

      describe 'title', ->
        it 'sets the title from the target link text', ->
          expect( @popover.title ).toEqual( 'Chest Press' )

      describe 'content', ->
        it 'fetches the content from the server', ->
          call = $.ajax.getCall( 0 ).args[0].url
          expect( call ).toEqual( '/exercises/chest-press' ) 

    describe 'render', ->
      it 'renders a HoganTemplate', ->
        exercise = '{"description":"Lie down on your side with both your knees and hips bent at 90 degrees. whilst keeping your heels together and your hips vertically aligned, rotate your top knee as high as possible and slowly return to the start position.","tips":"Prevent the hips from rolling forwards or backwards and perform the exercise in a slow and controlled manner.","muscle":"Glutes","category":"Muscle","equipment":""}'
        expect(@popover.render(exercise)).toEqual('blah')

# $ ->
#   $('#testy').on 'click', ->
#     $(@).popover({
#       title: 'fuck off',
#       content: 'fuck off again'
#     }).popover('show')

# http://blog.2doconsulting.com/blog/2012/03/15/loading-the-content-for-a-bootstrap-popover-via-ajax/
# http://stackoverflow.com/questions/8130069/load-bootstrap-js-popover-content-with-ajax