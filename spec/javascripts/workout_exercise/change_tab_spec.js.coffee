#= require jquery

describe 'ChangeTab', ->

  # it 'should prevent the default on the link', ->
  #   new ChangeTab @with_link
  #   expect( @with_link.preventDefault ).toHaveBeenCalled()

  it 'should remove class from active', ->
    remove_klass = spyOn $.fn, 'removeClass'
    new ChangeTab
    expect( remove_klass ).toHaveBeenCalledWith('active')

  it 'should add the active class to this.link', ->
    add_klass = spyOn $.fn, 'addClass'
    new ChangeTab
    expect( add_klass ).toHaveBeenCalledWith('active')