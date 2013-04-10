@InviteFriendsCtrl = ($scope) ->
  $scope.friends = []

  $scope.addFriend = (friend) ->
    $scope.friends.push(friend)

  $scope.removeFriend = (index) ->
    $scope.friends.splice(index, 1)