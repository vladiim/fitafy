@InviteFriendsCtrl = ($scope, Invite) ->
  $scope.friends     = []
  $scope.message     = "Hi! I just signed up to a new service that gets fitness professionals new clients. I thought you'd like to check it out!"
  $scope.editMessage = false
  $scope.editSenderEmailMode = true

  $scope.addFriend = (friend) ->
    $scope.friends.push(friend)
    $scope.friend = {}

  $scope.removeFriend = (index) ->
    $scope.friends.splice(index, 1)

  $scope.changeMessage = (message) ->
    $scope.message     = message
    $scope.editMessage = false

  $scope.editMessageMode = ->
    if $scope.editMessage is true then $scope.editMessage = false else $scope.editMessage = true

  $scope.addSenderEmail = (sender) ->
    $scope.inviteFrom = sender.email
    $scope.editSenderEmailMode = false

  $scope.editSenderEmail = ->
    if $scope.editSenderEmailMode is true then $scope.editSenderEmailMode = false else $scope.editSenderEmailMode = true

  $scope.sendInvite = (invite = new Invite()) ->
    invite.sender    = $scope.inviteFrom
    invite.receivers = $scope.friends
    invite.message   = $scope.message
    invite.$save()