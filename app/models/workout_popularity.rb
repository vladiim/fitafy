class WorkoutPopularity < ActiveRecord::Base

  attr_accessible :workout_id, :pdfs_downloaded, :views,
                  :unique_member_views, :copies, :favorites

  belongs_to :workout, dependent: :destroy

  def increase_views
  	self.views += 1
  	self.save
  end

  def increase_copies
  	self.copies += 1
  	self.save
  end

  def increase_favorites
  	self.favorites += 1
  	self.save
  end

  def increase_pdfs_downloaded
  	self.pdfs_downloaded += 1
  	self.save
  end
end