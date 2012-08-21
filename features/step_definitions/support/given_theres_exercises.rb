Given /^there's exercises$/ do
  Exercise::EXERCISE_TYPES.each do |type|
  	FactoryGirl.create :exercise, name: "#{type} title", category_list: type
  end
end