 Exercise.all.each do |e|
[9] pry(main)*   e.muscle.gsub(' ','_') if ['Full Body', 'Lower Back'].include?(e.muscle)
[9] pry(main)*   e.muscle = e.muscle.downcase
[9] pry(main)*   e.muscle = 'legs' if e.muscle == 'hamstrings'
e.muscle = 'back' if e.muscle == 'lower_back'
[9] pry(main)*   e.category = e.category.downcase
[9] pry(main)*   e.description = 'No description' if e.description == nil
[9] pry(main)*   e.save!
[9] pry(main)* end