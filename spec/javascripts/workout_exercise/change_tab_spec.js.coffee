#= require jquery

describe 'ChangeTab', ->

  beforeEach ->
      @with_link = new Object
      @with_link.preventDefault = null
      spyOn @with_link, 'preventDefault'

  describe 'preventDefault', ->
    it 'should prevent the default on the link', ->
      ChangeTab @with_link
      expect( @with_link.preventDefault ).toHaveBeenCalled()

  describe 'removeClass', ->
  	it 'should remove class from active', ->
      removeClass = spyOn $.fn, 'removeClass'
      ChangeTab @with_link
      expect( removeClass ).toHaveBeenCalledWith('active')

  describe 'addClass', ->
    it 'should add the active class to the passed in link', ->
      addClass = spyOn $.fn, 'addClass'
      ChangeTab @with_link
      expect( addClass ).toHaveBeenCalledWith('active')

  describe 'hide tab content', ->
    it 'should hide the current tabs content', ->
      hideContent = spyOn $.fn, 'hide'
      ChangeTab @with_link
      expect( hideContent ).toHaveBeenCalled()