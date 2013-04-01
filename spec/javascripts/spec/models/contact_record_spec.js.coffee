describe 'ContactRecord', ->
  beforeEach -> Ember.testing = true

  describe 'add email', ->
    it 'creates a new record', ->
      Ember.run ->
        record = FitafyInvites.ContactRecord.createRecord({email: 'test@email.com'})
        expect(record.get('email')).toEqual('test@email.com')