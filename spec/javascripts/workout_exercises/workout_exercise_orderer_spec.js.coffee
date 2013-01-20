# describe 'WorkoutExerciseOrderer', ->
#   beforeEach ->
#     loadFixtures 'workout_exercise_orderer.html'
#     @fake_template = { render: -> '' }
#     @rendered = sinon.stub(@fake_template, 'render', ->'<li class="workout_exercise">WORKOUT EXERCISE FROM SERVER</li>')
#     @orderer = new WorkoutExerciseOrderer @fake_template
#     @orderer.init()

#     @one           = $( 'li.workout_exercise.1' )
#     @one_down      = $(@one).find('i.move_workout_exercise_down')
#     @one_down_link = @one_down.parent('a')

#     @two           = $( 'li.workout_exercise.2' )
#     @two_up        = $(@two).find('i.move_workout_exercise_up')
#     @two_up_link   = @two_up.parent('a')
#     @two_down      = $(@two).find('i.move_workout_exercise_down')
#     @two_down_link = @two_down.parent('a')

#     @three         = $( 'li.workout_exercise.3' )
#     @three_up      = $(@three).find('i.move_workout_exercise_up')
#     @three_up_link = @three_up.parent('a')

#   describe 'click one down', ->
#     beforeEach ->
#       sinon.stub(window, 'alert')
#       sinon.spy(@orderer, 'findCounterPart')
#       sinon.spy(@orderer, 'swapWorkoutExercises')
#       @one_down.click()

#     afterEach -> window.alert.restore()

#     describe 'setAttributes', ->

#       it 'sets the link', ->
#         expect(@orderer.link).toBe(@one_down_link)

#       it 'sets the order', ->
#         expect(@orderer.order).toEqual(1)

#       it 'sets the direction', ->
#         expect(@orderer.direction).toEqual('down')

#       it 'sets the new_order', ->
#         expect(@orderer.new_order).toEqual(2)

#       it 'sets the parent', ->
#         expect(@orderer.parent).toBe(@one)

#       it 'sets the url', ->
#         expect(@orderer.url).toBe('/workout_exercises/1')

#       it 'sets the param', ->
#         param = $.param({ workout_exercise: { order_number: 2 } })
#         expect(@orderer.param).toEqual(param)

#       it 'finds its counterpart', ->
#         expect(@orderer.findCounterPart).toHaveBeenCalled()

#       it 'swaps the workout exercises', ->
#         expect(@orderer.swapWorkoutExercises).toHaveBeenCalled()

#   describe 'click link', ->
#     beforeEach ->
#       sinon.stub(window, 'alert')
#       @one_down.click()

#     afterEach -> window.alert.restore()

#     describe 'findCounterPart', ->
#       beforeEach -> @orderer.findCounterPart()

#       it 'sets the counterpart to two', ->
#         expect(@orderer.counterpart).toBe(@two)

#       it 'sets the counterpart_url', ->
#         expect(@orderer.counterpart_url).toEqual('/workout_exercises/2')

#       it 'sets the counterpart_order', ->
#         expect(@orderer.counterpart_order).toEqual(1)

#       it 'sets the counterpart_param', ->
#         param = $.param({ workout_exercise: { order_number: 1 } })
#         expect(@orderer.counterpart_param).toEqual(param)

#       describe 'swapWorkoutExercises', ->
#         beforeEach -> @orderer.swapWorkoutExercises()

#     describe 'updateWorkoutExercise', ->
#       beforeEach ->
#         sinon.stub($, 'ajax')
#         @orderer.updateWorkoutExercise()

#       afterEach -> $.ajax.restore()

#       it 'uses ajax for the request', ->
#         expect($.ajax).toHaveBeenCalled()

#       it 'posts to the right url', ->
#         expect($.ajax.getCall(0).args[0].url).toEqual("/workout_exercises/1?#{@orderer.param}")

#       it 'posts the info to the server', ->
#         expect($.ajax.getCall(0).args[0].type).toEqual("PUT")

#       it 'uses json as the data type', ->
#         expect($.ajax.getCall(0).args[0].dataType).toEqual("json")

#     describe 'renderWorkoutExercise', ->
#       beforeEach ->
#         @data = { name: 'NAME' }

#       it 'uses the template renderer to load the workout exercise', ->
#         @orderer.renderWorkoutExercise(@data)
#         expect(@rendered).toHaveBeenCalledWith("app/templates/workout_exercises/show", @data)

#       describe 'render the original workout exercise', ->

#         beforeEach -> @orderer.renderWorkoutExercise(@data)

#         it 'replaces the counterpart', ->
#           expect($( 'li.workout_exercise:nth-child(2)' ).text()).toEqual('WORKOUT EXERCISE FROM SERVER')

#       describe 'render the original counterpart', ->
#         beforeEach -> @orderer.renderWorkoutExercise(@data, 'counterpart')

#         it 'replaces the original', ->
#           expect($( 'li.workout_exercise:nth-child(1)' ).text()).toEqual('WORKOUT EXERCISE FROM SERVER')

#   describe 'click two up', ->
#     beforeEach ->
#       sinon.stub(window, 'alert')
#       @two_up.click()

#     afterEach -> window.alert.restore()

#     it 'sets no counterpart to one', ->
#       expect(@orderer.counterpart).toBe(@one)