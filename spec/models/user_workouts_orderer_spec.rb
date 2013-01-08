require 'spec_helper'

describe UserWorkoutsOrderer do
  let(:user) { Object.new }
  let(:orderer) { UserWorkoutsOrderer.new user, params }

  describe '#initialize' do
    context 'with params' do
      let(:params) { {"muscles"=>["calves"], "page"=>"4"} }

      it 'sets the user locally' do
      	orderer.user.should eq user
      end

      it 'sets the muscles locally' do
        orderer.muscles.should eq ['calves']
      end

      it 'sets the page locally' do
      	orderer.page.should eq 4
      end
    end

    context 'without params' do
      let(:params) { { "action"=>"index", "controller"=>"users_workouts"} }

      it 'sets the page as 0' do
      	orderer.page.should eq 0
      end
    end
  end

  describe '#get_workouts' do
    let(:workouts) { Object.new }
  	let(:result)   { orderer.get_workouts }

    context 'with params' do
      let(:params) { {"muscles"=>["calves"], "page"=>"4"} }

      before do
      	mock(user).workouts { workouts }
      	mock(workouts).find_by_exercise_muscles(['calves']) { workouts }
      	mock(workouts).offset_by_page(4) { '40 CALVES WORKOUTS' }
      end

      it 'returns the workouts filtered by muscles and offset by the page' do
        p orderer.muscles
      	result.should eq '40 CALVES WORKOUTS'
      end
    end

    context 'without params' do
      let(:params) { { "action"=>"index", "controller"=>"users_workouts"} }

      before do
      	mock(user).workouts { workouts }
      	mock(workouts).scoped { workouts }
      	mock(workouts).offset_by_page(0) { '10 WORKOUTS' }
      end

      it 'returns the scoped workouts offset by the page' do
      	result.should eq '10 WORKOUTS'
      end
    end
  end
end