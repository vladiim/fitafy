class InvitesController < ApplicationController
  respond_to :json, only: :create

  def index
  	@title = 'Invite Your Friends To Fitafy'
  end

  def create
  	invite = Invite::Manager.new(params)

  	if invite.send_messages
  	  flash[:success] = invite_sent_message(invite.count)
  	  redirect_to invites_path
  	end
  end

  private

  def invite_sent_message(count)
  	CopyGenerator::InviteCopy.invites_sent(count)
  end
end