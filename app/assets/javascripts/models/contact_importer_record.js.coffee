FitafyInvites.ContactImporterRecord = DS.Model.extend({
  name:    DS.attr 'string',
  invitor: DS.attr 'FitafyInvites.UserRecord'
})