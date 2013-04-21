app = angular.module("Fitafy", ["ngResource"])

app.config ($httpProvider) ->
  $httpProvider.defaults.headers.common['X-CSRF-Token'] = $('meta[name=csrf-token]').attr('content')

app.factory "Invite", ($resource) ->
  $resource("/invites", 'save': { method: 'POST' })