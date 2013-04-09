describe "InviteFriendsCtrl", ->
  beforeEach ->
    @scope = {}
    @ctrl  = new InviteFriendsCtrl(@scope)

  describe "friends", ->
    it "defaults to an empty friend list", ->
      expect(@scope.friends).toEqual([])

  describe "addFriend()", ->
    it "adds a friend to the friends", ->
      friend = { "name": "NAME" }
      @scope.addFriend(friend)
      expect(@scope.friends[0]).toEqual(friend)