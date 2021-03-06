#!/bin/env ruby 
# encoding: utf-8

def create_neck

  count = 0

  e = Exercise.find_or_create_by_name("neck Flexion/Extension")
  e.muscle =  "neck"
  e.muscle =   e.muscle.downcase
  e.equipment_id = Equipment.find_or_create_by_name("").id
  e.category =    "Mobility"
  e.category =   e.category.downcase
  e.description =  "Stand upright with your Chest out and Shoulders back. Tuck your chin into your Chest as far as possible and then extend your neck back to look up as high as possible."
  e.tips =         "Perform this mobility exercise in a slow and controlled manner. Repeat for desired repetitions."
  count += 1 if e.save!

        


  e = Exercise.find_or_create_by_name("neck Lateral Flexion")
  e.muscle =  "neck"
  e.muscle =   e.muscle.downcase
  e.equipment_id = Equipment.find_or_create_by_name("").id
  e.category =    "Mobility"
  e.category =   e.category.downcase
  e.description =  "Stand upright with your Chest out and Shoulders back. Lower one ear towards the Shoulder as far as comfortably possible and then return back to the centre. Repeat immediately on the opposite side."
  e.tips =         "Perform this mobility exercise in a slow and controlled manner. Repeat for desired repetitions."
  count += 1 if e.save!

        


  e = Exercise.find_or_create_by_name("Head Rotation")
  e.muscle =  "neck"
  e.muscle =   e.muscle.downcase
  e.equipment_id = Equipment.find_or_create_by_name("").id
  e.category =    "Mobility"
  e.category =   e.category.downcase
  e.description =  "Whilst keeping your head in a neutral position,  turn your head as far as possible towards one shoulder, pause briefly and then return to centre line. Repeat immediately towards the opposite side."
  e.tips =         "Perform this mobility exercise in a slow and controlled manner. Repeat for desired repetitions."
  count += 1 if e.save!

        


  e = Exercise.find_or_create_by_name("Side neck Stretch")
  e.muscle =  "neck"
  e.muscle =   e.muscle.downcase
  e.equipment_id = Equipment.find_or_create_by_name("").id
  e.category =    "Stretch"
  e.category =   e.category.downcase
  e.description =  "Place one hand on top of your head with your finger tips just above one of your ears. Gently place pressure side ways and lower your opposite ear down towards your Shoulder. Hold for 15-20 seconds and repeat on the opposite side."
  e.tips =         "Exhale as you gently stretch. With all stretching, you should feel a light stretch not pain or discomfort."
  count += 1 if e.save!

        


  e = Exercise.find_or_create_by_name("Rear neck Stretch")
  e.muscle =  "neck"
  e.muscle =   e.muscle.downcase
  e.equipment_id = Equipment.find_or_create_by_name("").id
  e.category =    "Stretch"
  e.category =   e.category.downcase
  e.description =  "Place your hand vertically (finger tips pointing down) at the back of your head. Gently place pressure forwards and aim to bring your chin towards your Chest. A stretch should be evenly felt in both sides of the spine on the back of the neck."
  e.tips =         "Exhale as you gently stretch. With all stretching, you should feel a light stretch not pain or discomfort."
  count += 1 if e.save!

        


  e = Exercise.find_or_create_by_name("Chin To Chest Stretch")
  e.muscle =  "neck"
  e.muscle =   e.muscle.downcase
  e.equipment_id = Equipment.find_or_create_by_name("").id
  e.category =    "Stretch"
  e.category =   e.category.downcase
  e.description =  "Lay on your Back or sit upright. Keeping your Shoulders and Upper-Back relaxed, gently bend your head forwards and bring your chin towards your Chest to create a stretch in the back of your neck."
  e.tips =         "Perform this exercise in a slow and controlled manner. With all stretching, you should feel a light stretch not pain or discomfort. Exhale as you perform the stretch."
  count += 1 if e.save!

  p "** ------------- #{count} NECK EXERCISES UPDATED ------------- **"     
end