#= require jquery

describe 'ChangeTab', ->

  beforeEach ->
  	@caller = new Object
  	@subject = new ChangeTab @caller

  describe 'active class', ->
  	it 'should remove active from the current class', ->
  	  loadFixtures 'workout_exercise_sort_by_active'
  	  spyOn($.fn, "removeClass")
  	  expect($.fn.removeClass).toHaveBeenCalled
