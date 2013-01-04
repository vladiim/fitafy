describe 'ExerciseModal', ->
  beforeEach ->
    loadFixtures "exercise_modal.html"
    @fake_template = { render: -> "" }
    @renderer      = sinon.stub(@fake_template, 'render', -> "<article>THE MUSTACHE TEMPLATE</article>" )
    @modal = new ExerciseModal @fake_template
    @modal.init()
    @link = $( 'a[data-target=#exercise_ajax_modal]' )
    @exercise = {
      description: 'DESCRIPTION',
      tips:        'TIPS',
      muscle:      'MUSCLE',
      category:    'CATEGORY',
      equipment:   'EQUIPMENT'
    }

  afterEach -> @renderer.restore()

  describe 'link clicked', ->
    beforeEach -> @modal.target_link = @link

    describe 'showTitle', ->
      beforeEach -> @modal.showTitle()

      it 'sets the modal header title', ->
        expect($( '.modal-header > h3' ).text()).toEqual('Chest Press')

    describe 'showBody', ->
      beforeEach ->
        @server = sinon.fakeServer.create()
        @server.respondWith 'GET', '/exercises/chest-press',
                            [200, { 'Content-Type': 'application/json' },
                            JSON.stringify(@exercise)]
        @modal.showBody()
        @server.respond()

      afterEach -> @server.restore()

      it 'uses the template to render the content', ->
        expect(@renderer).toHaveBeenCalledWith('app/templates/exercises/show', @exercise)

      it 'appends the modal-body with the rendered content', ->
        expect($( '.modal-body > article' ).text()).toEqual('THE MUSTACHE TEMPLATE')

    describe 'modal hidden', ->
      beforeEach ->
        @modal.showModal()
        $( '.modal-body' ).append("<article></article>")
        @modal.hideModal()

      describe 'hideModal', ->
        it 'removes the title', ->
          expect($( '.modal-header > h3' )).not.toExist()

        it 'removes the content', ->
          expect($( '.modal-body > article' )).not.toExist()