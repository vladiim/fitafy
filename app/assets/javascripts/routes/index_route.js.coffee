FitafyInvites.IndexRoute = Ember.Route.extend({
  model: -> FitafyInvites.ContactImporterRecord.find()
})