Given /^there's exercises$/ do
  Exercise::MUSCLES.each do |type|
  	FactoryGirl.create :exercise, name: "#{type} title", category_list: type
  end
end