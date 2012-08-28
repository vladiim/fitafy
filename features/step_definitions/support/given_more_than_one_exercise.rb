Given /^more than one exercise$/ do
  @push_up = create :exercise, name: "push up", muscle_list: "abs, biceps"
  @chin_up = create :exercise, name: "chin up", muscle_list: "abs, biceps"
  @dips    = create :exercise, name: "dips",    muscle_list: "biceps, shoulders"
end