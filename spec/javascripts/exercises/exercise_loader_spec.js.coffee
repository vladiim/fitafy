describe 'ExerciseLoader', ->
  beforeEach ->
    loadFixtures 'exercise_index.html'
    @fake_renderer = { render: -> "" }
    @render_stub   = sinon.stub(@fake_renderer, 'render', ->'<article>BACK EXERCISE</article>')
    @loader        = new ExerciseLoader @fake_renderer
    @loader.init()
    @back = $( 'ul > li > a' ).first()
    @incomingJSON = [
      {
        id:          '1',
        name:        'NAME',
        description: 'DESCRIPTION',
        muscle:      'BACK',
        url:         'URL',
        edit_url:    'EDIT URL'
      }
    ]

  describe 'click back tag', ->
    beforeEach ->
      sinon.spy(@loader, 'tagClicked')
      @back.click()

    it 'sets the local tag', ->
      expect( @loader.tag ).toBe(@back)

    it 'calls tagClicked', ->
      expect( @loader.tagClicked ).toHaveBeenCalled()

  describe 'removeAndRenderExercises', ->
    beforeEach ->
      @loader.tag = @back
      @server = sinon.fakeServer.create()
      @server.respondWith 'GET', '/exercises?muscle=back',
                           [200, { 'Content-Type': 'application/json' },
                            JSON.stringify(@incomingJSON)]
      @loader.removeAndRenderExercises()
      @server.respond()

    afterEach -> @server.restore()

    # it 'uses a template renderer to load the workouts', ->
    #   expect( @render_stub ).toHaveBeenCalledWith('/app/templates/exercises/index', @incomingJSON[0])

    it 'renders the template on the page', ->
      expect($( 'article.exercise_list > article' )).toHaveText('BACK EXERCISE')

  describe 'unit test post clicked tag', ->
    beforeEach -> @loader.tag = @back

    describe 'removeExercises', ->
      it 'removes existing page exercises', ->
        @loader.removeExercises()
        expect($( 'article.exercise_list > article.exercise' )).not.toExist()

    describe 'tagClicked', ->
      it 'adds the active class to the active tag', ->
        @loader.tagClicked()
        expect( @back.parent() ).toHaveClass('active')
        expect( @back.parent() ).not.toHaveClass('disabled')

      it 'removes the active class from all other tags', ->
        other_tag = $( 'a[href$="/exercises?muscle=chest"]')
        other_tag.parent().removeClass('disabled').addClass('active')
        @loader.tagClicked()
        expect( other_tag.parent() ).not.toHaveClass('active')
        expect( other_tag.parent() ).toHaveClass('disabled')

    describe 'changeTitle', ->
      it 'changes the title to BACK EXERCISES', ->
        @loader.changeTitle()
        expect($( 'h1').text() ).toEqual('BACK EXERCISES')