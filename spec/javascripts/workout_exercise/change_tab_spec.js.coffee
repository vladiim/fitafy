#= require jquery

describe 'ChangeTab', ->

  it 'should remove class from active', ->
    loadFixtures "tab_sort_by_active"
    spyOn $.fn, 'removeClass'
    tab = $('p#tab_sort_by a.active')
    new ChangeTab(tab)
    expect( tab.removeClass ).toHaveBeenCalledWith('active')

  describe 'inactive tab', ->
    beforeEach ->
      loadFixtures "tab_sort_by"

    it 'should add the active class to this.link', ->
      spyOn $.fn, 'addClass'
      tab = $('p#tab_sort_by a')
      new ChangeTab(tab)
      expect( tab.addClass ).toHaveBeenCalledWith('active')
  
    # it 'should hide the table body', ->
    #   spyOn $.fn, 'hide'
    #   tab = $('tbody#workout_exercises')
    #   new ChangeTab
    #   expect( tab.hide ).toHaveBeenCalled()

  it 'should pass the active tab to show exercises', ->
    spyOn(@, 'showExercises').andCallFake ->
    new ChangeTab
    expect( showExercises ).toHaveBeenCalled()