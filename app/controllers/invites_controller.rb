class InvitesController < ApplicationController
  respond_to :json, only: :create

  def index
  	@title = 'Invite Your Friends To Fitafy'
  end

  def create
  	invite = Invite::Manager.new(params)
  	if invite.send_messages
  	  respond_with json: { message: invite_sent_message(invite.count) }
  	end
  end

  private

  def invite_sent_message(count)
  	CopyGenerator::InviteCopy.invites_sent(count)
  end
end