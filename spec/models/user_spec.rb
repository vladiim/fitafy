require_relative '../spec_helper'

describe User do
  subject { create_valid_user }

  def create_valid_user
    User.new(username:     			 "chef",
             email:        			 "lex@diamond.com",
             password: 				 "immobilarity",
             password_confirmation:   "immobilarity"
    )
  end

  describe "abilities" do
  	subject 	  { ability }
  	let(:ability) { Ability.new(user) }

    context "trainer" do
      let(:user) { create_valid_user }
      before 	 { mock(user).trainer? { true } }
      it 		 { should be_able_to(:manage, Workout.new) }
    end
  end
end