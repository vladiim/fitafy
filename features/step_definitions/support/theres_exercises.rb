Given /^there's exercises$/ do
  Exercise::MUSCLES.each do |type|
  	FactoryGirl.create :exercise, name: "#{type} title", muscle: type
  end
end