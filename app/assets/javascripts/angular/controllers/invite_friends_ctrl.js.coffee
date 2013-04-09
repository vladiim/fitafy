@InviteFriendsCtrl = ($scope) ->
  $scope.friends = []

  $scope.addFriend = (friend) ->
    $scope.friends.push(friend)