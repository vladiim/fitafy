class InvitesController < ApplicationController
  # respond_to :json, only: :create

  def index
  	@title = 'Invite Your Friends To Fitafy'
    @user_email = params[:user_email] if params[:user_email]
  end

  def create
  	invite = Invite::Manager.new(params)
    invite.send_messages
    respond_to { |format| format.json { return true } }
  end

  private

  def invite_sent_copy(count)
  	CopyGenerator::InviteCopy.invites_sent(count)
  end
end