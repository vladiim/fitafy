class RolloutMock
  def active?(foo, bar)
  	false
  end
end

if Rails.env == 'test'
  $rollout = RolloutMock.new

else
  $rollout = Rollout.new($redis)

  $rollout.define_group(:staff_see_clients) do |user|
  	user.staff? && user.wants_to_see('staff_see_clients')
  end

  $rollout.activate_group(:clients, :staff_see_clients)
end