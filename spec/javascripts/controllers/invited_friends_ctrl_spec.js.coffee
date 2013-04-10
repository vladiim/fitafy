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

  describe "changeMessage()", ->
    it "changes the message", ->
      @scope.changeMessage('MESSAGE')
      expect(@scope.message).toBe('MESSAGE')

  describe "editMessageMode()", ->
    it "goes to edit mode", ->
      @scope.editMessageMode()
      expect(@scope.editMessage).toBe(true)