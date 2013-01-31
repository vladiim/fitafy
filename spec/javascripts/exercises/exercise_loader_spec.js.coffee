describe 'ExerciseLoader', ->
  beforeEach ->
    loadFixtures 'exercise_index.html'
    ExerciseLoader.init()
    @back  = $( 'a#back_tag' )
    @chest = $( 'a#chest_tag' )

  it 'defaults with the first tag as the tag', ->
    expect(ExerciseLoader.tag).toBe(@back)

  describe 'click chest tag', ->
    beforeEach ->
      sinon.stub(ExerciseLoader, 'removeAndRenderExercises', -> '')
      @chest.click()

    afterEach -> ExerciseLoader.removeAndRenderExercises.restore()

    it 'sets the local tag', ->
      expect(ExerciseLoader.tag).toBe(@chest)

    it 'removes and renders the exercises', ->
      expect(ExerciseLoader.removeAndRenderExercises).toHaveBeenCalled()

  describe 'removeAndRenderExercises', ->
    beforeEach ->
      sinon.stub(ExerciseLoader, 'getAndRenderExercises')
      ExerciseLoader.removeAndRenderExercises()

    afterEach -> ExerciseLoader.getAndRenderExercises.restore()

    it 'makes the tags parent active', ->
      expect(@back.parent()).toHaveClass('active')
      expect(@back.parent()).not.toHaveClass('disabled')

    it 'ensures the other tags are disabled', ->
      expect(@chest.parent()).not.toHaveClass('active')
      expect(@chest.parent()).toHaveClass('disabled')

    it 'removes the exercises from the page', ->
      expect($( 'article.exercise_list > article.exercise' )).not.toExist()

    it 'changes the title', ->
      expect($( 'h3#exercise_modal_title' ).text()).toEqual('BACK EXERCISES')

  describe 'getAndRenderExercises', ->
    beforeEach ->
      @renderer = { render: -> '' }
      @render_stub = sinon.stub(@renderer, 'render', -> '<article>BACK EXERCISE</article>')
      ExerciseLoader.renderer = @renderer
      @incomingJSON = [{ name: 'EXERCISE' }]
      @server = sinon.fakeServer.create()
      @server.respondWith 'GET', '/exercises?muscle=back',
                           [200, { 'Content-Type': 'application/json' },
                            JSON.stringify(@incomingJSON)]
      ExerciseLoader.getAndRenderExercises()
      @server.respond()

    afterEach -> @server.restore()

    it 'renders the template on the page', ->
      expect($( 'article.exercise_list > article' )).toHaveText('BACK EXERCISE')

    it 'calls the template renderer with the data from the server', ->
      expect(@render_stub).toHaveBeenCalledWith('app/templates/exercises/index', @incomingJSON[0])