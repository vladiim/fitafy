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

  describe "addSenderEmail()", ->
    it "defaults to editing the sender's email", ->
      expect(@scope.editSenderEmailMode).toBe(true)

    it "adds the user to the scope", ->
      sender = { email: 'EMAIL' }
      @scope.addSenderEmail(sender)
      expect(@scope.inviteFrom).toEqual('EMAIL')
      expect(@scope.editSenderEmailMode).toBe(false)

  describe "editSenderEmail()", ->
    it 'changes the editSenderEmailMode', ->
      @scope.editSenderEmail()
      expect(@scope.editSenderEmailMode).toBe(false)
      @scope.editSenderEmail()
      expect(@scope.editSenderEmailMode).toBe(true)