FitafyInvites.Router.reopen({
  location: 'history'
})

FitafyInvites.Router.map (match) ->
  @route 'index', {path: '/invites'}