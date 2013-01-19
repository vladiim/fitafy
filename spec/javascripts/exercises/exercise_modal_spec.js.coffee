describe 'ExerciseModal', ->
  beforeEach ->
    loadFixtures "exercise_modal.html"
    @chest_title = $( 'a#chest_press' )

  describe 'showTitle', ->
    beforeEach ->
      ExerciseModal.link = @chest_title
      ExerciseModal.showTitle()

    it 'sets the modal header title', ->
      expect($( '.modal-header > h3' ).text()).toEqual('Chest Press')

  describe 'showBody', ->
    beforeEach ->
      @incomingJSON = { name: 'SERVER EXERCISE' }
      @server = sinon.fakeServer.create()
      @server.respondWith 'GET', '/exercises/chest-press',
                            [200, { 'Content-Type': 'application/json' },
                            JSON.stringify(@incomingJSON)]
      @renderer = { render: -> '' }
      @renderer_stub = sinon.stub(@renderer, 'render', -> '<article>EXERCISE FROM SERVER</article>')
      ExerciseModal.renderer = @renderer
      ExerciseModal.showBody()
      @server.respond()

    afterEach -> @server.restore()

    it 'uses the renderer to render the exercise body', ->
      expect(@renderer_stub).toHaveBeenCalledWith('app/templates/exercises/show', @incomingJSON)

    it 'appends the modal-body with the rendered content', ->
      expect($( '.modal-body > article' ).text()).toEqual('EXERCISE FROM SERVER')

  describe 'modal hidden', ->
    beforeEach ->
      ExerciseModal.showModal()
      $( '.modal-body' ).append("<article></article>")
      ExerciseModal.hideModal()

    describe 'hideModal', ->
      it 'removes the title text', ->
        expect($( '.modal-header > h3' ).text()).toEqual('')

      it 'removes the content', ->
        expect($( '.modal-body > article' )).not.toExist()