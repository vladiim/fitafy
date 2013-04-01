FitafyInvites.UserRecord = DS.Store.extend({
  email:                    DS.attr 'string',
  contact_importer_records: DS.hasMany 'FitafyInvites.ContactImporterRecords' 
  contact_records:          DS.hasMany 'FitafyInvites.ContactRecords' 
})