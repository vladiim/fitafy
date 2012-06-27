#= require jquery

describe 'ChangeTab', ->

  describe 'click sort by', ->

  	it 'should remove class from active', ->
  	  # i've got all this clumped in one test because jasmine doesn't
  	  # recognise the tests otherwise?!
  	  with_link				   = new Object
  	  with_link.preventDefault = null
  	  removeClass			   = spyOn $.fn, 'removeClass'
  	  addClass				   = spyOn $.fn, 'addClass'
  	  hideContent			   = spyOn $.fn, 'hide'

  	  spyOn with_link, 'preventDefault'
  	  ChangeTab with_link

  	  # prevent default
  	  expect( with_link.preventDefault ).toHaveBeenCalled

  	  # remove active class
  	  expect( removeClass ).toHaveBeenCalledWith('active')

  	  # add active class to this
  	  expect( addClass ).toHaveBeenCalledWith('active')

  	  # hide content in tab
  	  expect( hideContent ).toHaveBeenCalled()