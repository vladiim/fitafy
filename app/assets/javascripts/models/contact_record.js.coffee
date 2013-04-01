FitafyInvites.ContactRecord = DS.Model.extend({
  email:   DS.attr 'string',
  invitor: DS.attr 'FitafyInvites.UserRecord'
})