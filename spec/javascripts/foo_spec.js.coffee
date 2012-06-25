describe "Foo", ->
  it "foo foo foo", ->
    subject = new Foo
    expect(subject.baz()).toEqual("bar")