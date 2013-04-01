FitafyInvites.IndexController = Ember.ArrayController.extend({
  selectImporter: (importer) ->
    @set 'selectedImporter', importer
})