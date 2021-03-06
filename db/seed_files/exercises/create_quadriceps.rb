#!/bin/env ruby 
# encoding: utf-8

def create_quadriceps

  count = 0

  e = Exercise.find_or_create_by_name("Straight Leg Raises")
  e.muscle =  "legs"
  e.muscle =   e.muscle.downcase
  e.equipment_id = Equipment.find_or_create_by_name("").id
  e.category =    "rehab"
  e.category =   e.category.downcase
  e.description =  "Sit down on the ground face up. Tighten the quadriceps and flex your ankle towards your torso. Raise the leg up as high as comfortably possible without deviating the position of your upper-body. Pause briefly and slowly return your leg to the start position."
  e.tips =         "Perform the exercise in a slow and controlled manner. Ensure you maintain contact between the ground and both sides of the buttocks."
  count += 1 if e.save!

        


  e = Exercise.find_or_create_by_name("Leg Extension")
  e.muscle =  "legs"
  e.muscle =   e.muscle.downcase
  e.equipment_id = Equipment.find_or_create_by_name("Machine").id
  e.category =    "muscle"
  e.category =   e.category.downcase
  e.description =  "Adjust the seat so that your back is against the pad and your knees can extend freely through a full range of motion. Place your ankles behind the rolls provided and extend your legs until they are straight. Pause briefly return back to the starting position."
  e.tips =         "Exhale as you extend your legs, and inhale as you lower the weight. Avoid a hard lock out of the knees at the top of the movement and keep your buttocks in the seat at all times. Perform this exercise in a slow and controlled manner."
  count += 1 if e.save!

        


  e = Exercise.find_or_create_by_name("Seated Leg Extension")
  e.muscle =  "legs"
  e.muscle =   e.muscle.downcase
  e.equipment_id = Equipment.find_or_create_by_name("").id
  e.category =    "rehab"
  e.category =   e.category.downcase
  e.description =  "Maintain good posture in a seated position on a Chair or Bench with your legs hanging freely. Straighten your leg to full extension, pause briefly at peak contraction and slowly return to starting position."
  e.tips =         "Keep your Chest out and Shoulders back. Perform the exercise in a slow and controlled manner."
  count += 1 if e.save!

        


  e = Exercise.find_or_create_by_name("quadriceps Roll")
  e.muscle =  "legs"
  e.muscle =   e.muscle.downcase
  e.equipment_id = Equipment.find_or_create_by_name("Foam Roller").id
  e.category =    "Mobility"
  e.category =   e.category.downcase
  e.description =  "Lie face down over the Foam Roller with your elbows on the ground in front of you and the roller in contact with your upper-thighs. Slowly move your body forward to roll the Foam Roller down the front of your thigh. Stop at just above your knee cap. Repeat in reverse direction."
  e.tips =         "Perform this roll slowly and avoid travelling over the knee joint. Take 10-20 seconds to complete a directional roll."
  count += 1 if e.save!

  p "** ------------- #{count} QUAD EXERCISES UPDATED ------------- **"     
end