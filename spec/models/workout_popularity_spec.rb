require 'spec_helper'

describe WorkoutPopularity do
  let(:popularity) { WorkoutPopularity.new }

  describe 'variables' do
  	it { should have_db_column(:workout_id) }
  	it { should have_db_column(:pdfs_downloaded) }
  	it { should have_db_column(:views) }
  	it { should have_db_column(:unique_member_views) }
  	it { should have_db_column(:copies) }
  	it { should have_db_column(:favorites) }
  end

  describe 'mass assignment' do
  	it { should allow_mass_assignment_of(:workout_id) }
  	it { should allow_mass_assignment_of(:pdfs_downloaded) }
  	it { should allow_mass_assignment_of(:views) }
  	it { should allow_mass_assignment_of(:unique_member_views) }
  	it { should allow_mass_assignment_of(:copies) }
  	it { should allow_mass_assignment_of(:favorites) }
  end

  describe 'associations' do
  	it { should belong_to :workout }
  end

  describe '#increase_' do
    before { mock(popularity).save { true } }

    context 'views' do
  	  it 'increases the views by 1' do
  	    popularity.increase_views
  	    popularity.views.should eq 1
  	  end
    end

    context 'copies' do
  	  it 'increases the copies by 1' do
  	    popularity.increase_copies
  	    popularity.copies.should eq 1
  	  end
    end

    context 'favorites' do
  	  it 'increases the favorites by 1' do
  	    popularity.increase_favorites
  	    popularity.favorites.should eq 1
  	  end
    end

    context 'pdfs_downloaded' do
  	  it 'increases the pdfs_downloaded by 1' do
  	    popularity.increase_pdfs_downloaded
  	    popularity.pdfs_downloaded.should eq 1
  	  end
    end
  end
end