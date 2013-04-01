//= require jquery
//= require jquery_ujs
//= require h5bp
//= require jquery-ui
//= require bootstrap
//= require handlebars
//= require ember
//= require ember-data
//= require_self
//= require_tree .

FitafyInvites = Ember.Application.create();

FitafyInvites.Store = DS.Store.extend({
  revision: 11,
  adapter:  DS.RESTAdapter.create()
});