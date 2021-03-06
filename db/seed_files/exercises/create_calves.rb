#!/bin/env ruby 
# encoding: utf-8

def create_calves

  count = 0

  e = Exercise.find_or_create_by_name("Standing Calf Raise")
  e.muscle =  "calves"
  e.muscle = e.muscle.downcase
  e.equipment_id = Equipment.find_or_create_by_name("").id
  e.category =    "muscle"
  e.category = e.category.downcase
  e.description =  "Stand on a weight plate or wooden block. Create contact with the balls of your feet with your heels on the ground. Keep your knees straight to create a stretch in your calves. Point your toes to raise your heels as high as you can. Pause briefly and return to start position."
  e.tips =         "Perform the exercise slowly and under complete control. This exercise will also engage the side of your lower legs. Keep your Shoulders back and look straight ahead."
  count += 1 if e.save!

        


  e = Exercise.find_or_create_by_name("Standing Calf Raise (Dumbbells)")
  e.muscle =  "calves"
  e.muscle = e.muscle.downcase
  e.equipment_id = Equipment.find_or_create_by_name("Dumbbells").id
  e.category =    "muscle"
  e.category = e.category.downcase
  e.description =  "Hold a Dumbbell in each hand and stand on a weight plate or wooden block. Create contact with the balls of your feet with your heels on the ground. Keep your knees straight to create a stretch in your calves. Point your toes to raise your heels as high as you can. Pause briefly and return to start position."
  e.tips =         "Perform the exercise slowly and under complete control. This exercise will also engage the side of your lower legs. Keep your Shoulders back and look straight ahead."
  count += 1 if e.save!

        


  e = Exercise.find_or_create_by_name("Seated Calf Raise (Machine)")
  e.muscle =  "calves"
  e.muscle = e.muscle.downcase
  e.equipment_id = Equipment.find_or_create_by_name("").id
  e.category =    "muscle"
  e.category = e.category.downcase
  e.description =  "Sit down and place the balls of your feet on the platform provided. Adjust the knee pads provided to a firm fit on the top of your thighs. Remove the safety mechanism and lower your heels to the ground. From light stretch, point your toes and raise your heels as high as possible. Pause briefly and return to the starting position."
  e.tips =         "Perform the exercise slowly and under complete control.  Keep your Shoulders back and look straight ahead."
  count += 1 if e.save!

        


  e = Exercise.find_or_create_by_name("Achilles/Lower Calf Stretch")
  e.muscle =  "calves"
  e.muscle = e.muscle.downcase
  e.equipment_id = Equipment.find_or_create_by_name("").id
  e.category =    "Stretch"
  e.category = e.category.downcase
  e.description =  "Stand facing a wall in a staggered stance. Place your hands up against the wall for support. With your front-knee slightly bent and your rear-leg almost straight, slowly move your rear heel backwards until you feel a gentle stretch in your Calf."
  e.tips =         "Perform this stretch in a slow and controlled manner. Feel a light stretch not pain or discomfort. Avoid sudden release of this stretch or over stretching."
  count += 1 if e.save!

        


  e = Exercise.find_or_create_by_name("Calf Stretch On Step")
  e.muscle =  "calves"
  e.muscle = e.muscle.downcase
  e.equipment_id = Equipment.find_or_create_by_name("").id
  e.category =    "Stretch"
  e.category = e.category.downcase
  e.description =  "Position the balls of your feet on the edge of a Step or low stable Box. While holding on to a stable object or wall for stability, lower one heel towards the ground to achieve a stretch in your Calf. The opposite leg will assist in maintaining your balance."
  e.tips =         "Perform this stretch in a slow and controlled manner. Feel a light stretch not pain or discomfort. Avoid sudden release of this stretch or over stretching."
  count += 1 if e.save!

        


  e = Exercise.find_or_create_by_name("Wall Calf Stretch")
  e.muscle =  "calves"
  e.muscle = e.muscle.downcase
  e.equipment_id = Equipment.find_or_create_by_name("").id
  e.category =    "Stretch"
  e.category = e.category.downcase
  e.description =  "Stand facing a wall in a staggered stance with your feet flat on the ground. Place your hands up against the wall for support. With your front-knee slightly bent and your rear-leg almost straight, slowly move your rear-heel backwards until your feel a stretch in your Calf muscle."
  e.tips =         "Perform this stretch in a slow and controlled manner. Feel a light stretch not pain or discomfort. Avoid sudden release of this stretch or over stretching."
  count += 1 if e.save!

        


  e = Exercise.find_or_create_by_name("Standing Calf Raises")
  e.muscle =  "calves"
  e.muscle = e.muscle.downcase
  e.equipment_id = Equipment.find_or_create_by_name("").id
  e.category =    "Rehab"
  e.category = e.category.downcase
  e.description =  "Stand on a weight plate or wooden block with your feet Shoulder-width apart. Create contact with the balls of your feet with your heels resting on the ground. Keep your knees straight but not locked and maintain an upright torso. This will create a stretch in your calves. Commence by pointing your toes as hard as possible to get as tall as you can. This will flex your calves. Pause briefly at the peak of contraction and slowly return the heels towards the ground for little or no contact."
  e.tips =         "Balance is major element of this exercise. Perform the exercise slowly and under complete control. This exercise will also engage the Peroneals (side of the lower leg) due to the balance requirements. Keep your Shoulders back and look straight ahead."
  count += 1 if e.save!

        


  e = Exercise.find_or_create_by_name("Calf Roll")
  e.muscle =  "calves"
  e.muscle = e.muscle.downcase
  e.equipment_id = Equipment.find_or_create_by_name("Foam Roller").id
  e.category =    "Stretch"
  e.category = e.category.downcase
  e.description =  "Sit on the floor with your lower-legs placed on top of the Foam Roller. Place your hands slightly behind your body to support your weight. Slowly raise your Buttocks off the floor to increase pressure on your Calf muscles by the roller. Roll the foam downwards, from behind your knee to your ankle. Slowly roll in the reverse direction to the start position."
  e.tips =         "Perform this roll slowly and spend a little more time of tighter areas. Take 5-10 seconds to complete a directional roll. Increase the intensity of this roll by crossing your legs to have contact with only one leg."
  count += 1 if e.save!

  p "** ------------- #{count} CALVES EXERCISES UPDATED ------------- **"     
end