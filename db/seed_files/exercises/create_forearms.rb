#!/bin/env ruby 
# encoding: utf-8

def create_forearms

  count = 0

  e = Exercise.find_or_create_by_name("Seated Wrist Flexion (Dumbbell)")
  e.muscle =  "forearms"
  e.muscle =   e.muscle.downcase
  e.equipment_id = Equipment.find_or_create_by_name("Dumbbells").id
  e.category =    "muscle"
  e.category =   e.category.downcase
  e.description =  "Sit on the edge of a Bench. Place one or both forearms on your thighs with your wrists hanging over your knee, palms facing up. Hold the Dumbbells and allow your wrists to extend slowly toward the floor. Open up your grip slightly and let the Dumbbell roll down your fingers. Close your grip and curl your wrist to raise the Dumbbell upwards. Return slowly to the start position."
  e.tips =         "Initially use a light weight as these muscles represent only a small muscle group. Perform the exercise in a slow and controlled manner."
  count += 1 if e.save!

        


  e = Exercise.find_or_create_by_name("Seated Wrist Flexion (Barbell)")
  e.muscle =  "forearms"
  e.muscle =   e.muscle.downcase
  e.equipment_id = Equipment.find_or_create_by_name("Barbell").id
  e.category =    "muscle"
  e.category =   e.category.downcase
  e.description =  "Sit on the edge of a Bench. Place both forearms on your thighs with your wrists hanging over your knee, palm facing up. Whilst holding the Barbell, allow your wrist to extend slowly toward the floor. Open up your grip slightly and let the Barbell roll down your fingers. Close your grip and curl your wrist to raise the Barbell upwards. Return slowly to the start position."
  e.tips =         "Initially use a light weight as these muscles represent only a small muscle group. Perform the exercise in a slow and controlled manner."
  count += 1 if e.save!

        


  e = Exercise.find_or_create_by_name("Seated Wrist Extension (Dumbbell)")
  e.muscle =  "forearms"
  e.muscle =   e.muscle.downcase
  e.equipment_id = Equipment.find_or_create_by_name("Dumbbells").id
  e.category =    "muscle"
  e.category =   e.category.downcase
  e.description =  "Sit on the edge of a Bench. Place your forearms on your thighs with your wrists over your knee. Holding the Dumbbells with an overhand grip (palms down), allow your wrists to extend slowly toward the floor. Turn your wrists up to raise the Dumbbells to contract the muscle on top of your forearms. Return slowly to the start position."
  e.tips =         "Use a light weight initially as these muscles represent only a small muscle group. Perform the exercise in a slow and controlled manner."
  count += 1 if e.save!

        


  e = Exercise.find_or_create_by_name("Seated Wrist Extension (Barbell)")
  e.muscle =  "forearms"
  e.muscle =   e.muscle.downcase
  e.equipment_id = Equipment.find_or_create_by_name("Barbell").id
  e.category =    "muscle"
  e.category =   e.category.downcase
  e.description =  "Sit on the edge of a Bench. Place your forearms on your thighs with your wrists over your knee. Holding a Barbell with an overhand grip (palms down), allow your wrists to extend slowly toward the floor. Turn your wrists upwards to raise the Barbell to contract the muscle on top of your forearms. Slowly return to the start position."
  e.tips =         "Use a light weight initially as these muscles represent only a small muscle group. Perform the exercise in a slow and controlled manner."
  count += 1 if e.save!

        


  e = Exercise.find_or_create_by_name("Wrist Supination")
  e.muscle =  "forearms"
  e.muscle =   e.muscle.downcase
  e.equipment_id = Equipment.find_or_create_by_name("Dumbbells").id
  e.category =    "muscle"
  e.category =   e.category.downcase
  e.description =  "Place one Forearm on your thigh with your wrist hanging over your knee, palm face down. Hold one end of the Dumbbell, slowly rotate your hand outward, keeping your Forearm on your thigh. Return the Dumbbell back to the start position and repeat."
  e.tips =         "Use a light weight initially as these muscles represent only a small muscle group. Perform the exercise in a slow and controlled manner."
  count += 1 if e.save!

        


  e = Exercise.find_or_create_by_name("Wrist Pronation")
  e.muscle =  "forearms"
  e.muscle =   e.muscle.downcase
  e.equipment_id = Equipment.find_or_create_by_name("Dumbbells").id
  e.category =    "muscle"
  e.category =   e.category.downcase
  e.description =  "Place one Forearm on your thigh with your wrist hanging over your knee, palm face up. While holding the end of the Dumbbell, slowly rotate your hand inward, keeping your Forearm on your thigh. Return the Dumbbell back to the start position, and repeat."
  e.tips =         "Use a light weight initially as these muscles represent only a small muscle group. Perform the exercise in a slow and controlled manner."
  count += 1 if e.save!

        


  e = Exercise.find_or_create_by_name("Forearm Extensor  Stretch")
  e.muscle =  "forearms"
  e.muscle =   e.muscle.downcase
  e.equipment_id = Equipment.find_or_create_by_name("").id
  e.category =    "Stretch"
  e.category =   e.category.downcase
  e.description =  "Extend one arm out in front with your palm facing down. Grab your fingers with your other hand and slowly pull them down and toward your body. Bend your wrist down toward the floor."
  e.tips =         "With all stretching, you should feel a light stretch not pain or discomfort. This stretch will be felt in the top of forearm."
  count += 1 if e.save!

        


  e = Exercise.find_or_create_by_name("Forearm Flexor Stretch")
  e.muscle =  "forearms"
  e.muscle =   e.muscle.downcase
  e.equipment_id = Equipment.find_or_create_by_name("").id
  e.category =    "Stretch"
  e.category =   e.category.downcase
  e.description =  "Extend one arm out in front with your palm facing up. Grab your fingers with your other hand and slowly pull them down and toward your body. Bend your wrist down toward the floor."
  e.tips =         "With all stretching, you should feel a light stretch not pain or discomfort."
  count += 1 if e.save!

        


  e = Exercise.find_or_create_by_name("Kneeling Forearm Stretch")
  e.muscle =  "forearms"
  e.muscle =   e.muscle.downcase
  e.equipment_id = Equipment.find_or_create_by_name("").id
  e.category =    "Stretch"
  e.category =   e.category.downcase
  e.description =  "Set up on the ground on all fours, with your palms on the ground and your fingers turned towards you. While keeping your entire palms in contact with the ground, slowly lean backwards or sit into your heels to create a stretch in your forearms."
  e.tips =         "Perform this movement in a slow and controlled manner. As with all stretching, you should feel a light stretch not pain or discomfort."
  count += 1 if e.save!

  p "** ------------- #{count} FOREARM EXERCISES UPDATED ------------- **"     
end