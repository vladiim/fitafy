@InviteFriendsCtrl = ($scope) ->
  $scope.friends     = []
  $scope.message     = "Hi! I just signed up to a new service that gets fitness professionals new clients. I thought you'd like to check it out!"
  $scope.editMessage = false

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

  $scope.addUser = (user) ->
    $scope.inviteFrom = user.email
    $scope.userAdded  = true
    $scope.user       = {}