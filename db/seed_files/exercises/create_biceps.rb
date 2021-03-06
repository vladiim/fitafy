#!/bin/env ruby 
# encoding: utf-8

def create_biceps

  count = 0

  e = Exercise.find_or_create_by_name("Bicep Curl (Barbell)")
  e.muscle =  "biceps"
  e.muscle = e.muscle.downcase
  e.equipment_id = Equipment.find_or_create_by_name("Barbell").id
  e.category =    "muscle"
  e.category = e.category.downcase
  e.description =  "Stand upright in a Shoulder-width stance and grasp the Barbell slightly wider than your hips. With your palms facing up, hold the Barbell with your arms straight in front of your hips. Bend your elbows to raise the Bar up towards your Shoulders. Pause briefly at peak contraction and slowly lower the Bar to the starting position."
  e.tips =         "Perform the exercise in a slow and controlled manner. Look straight ahead and avoid arching your Back. Exhale as you raise the Bar."
  count += 1 if e.save!

        


  e = Exercise.find_or_create_by_name("Bicep Curl (Cable)")
  e.muscle =  "biceps"
  e.muscle = e.muscle.downcase
  e.equipment_id = Equipment.find_or_create_by_name("Cable").id
  e.category =    "muscle"
  e.category = e.category.downcase
  e.description =  "Connect a Straight or Curved Bar to the lowest anchor setting on the Cable Machine. Grasp the Bar and stand upright with your feet Shoulder-width apart. With your palms facing up, bend your elbows to raise the Bar up towards your Shoulders. Pause briefly at peak contraction and slowly lower the Bar to the starting position."
  e.tips =         "Perform the exercise in a slow and controlled manner. Keep your vision forwards and avoid arching the Back as your raise the weight. Exhale as you raise the Bar."
  count += 1 if e.save!

        


  e = Exercise.find_or_create_by_name("Bicep Curl (Dumbbells)")
  e.muscle =  "biceps"
  e.muscle = e.muscle.downcase
  e.equipment_id = Equipment.find_or_create_by_name("Dumbbells").id
  e.category =    "muscle"
  e.category = e.category.downcase
  e.description =  "Stand upright with your feet hip width apart and Shoulders back. Hold the Dumbbells and keep your arms close to your sides. With your palms facing forwards, raise the Dumbbells towards your Shoulders. Pause briefly at peak contraction and slowly return to the starting position."
  e.tips =         "Keep your elbows close to your sides throughout the movement. Perform the exercise in a slow and controlled manner. Look straight ahead and avoid arching your Back as your raise the weight."
  count += 1 if e.save!

        


  e = Exercise.find_or_create_by_name("Bicep Curl (Elastic Band)")
  e.muscle =  "biceps"
  e.muscle = e.muscle.downcase
  e.equipment_id = Equipment.find_or_create_by_name("Elastic Band").id
  e.category =    "muscle"
  e.category = e.category.downcase
  e.description =  "Stand upright and loop the middle of the Elastic Band under your feet. Grasp the two ends of the Elastic Band and hold your arms close to your sides. Bend your elbows and simultaneously turn your palms face up towards your shoulders. Pause briefly and slowly return to the starting position."
  e.tips =         "Keep your elbows close to your sides throughout the movement. Perform the exercise in a slow and controlled manner. Look straight ahead and avoid arching the Back as your raise the weight."
  count += 1 if e.save!

        


  e = Exercise.find_or_create_by_name("Concentration Curl")
  e.muscle =  "biceps"
  e.muscle = e.muscle.downcase
  e.equipment_id = Equipment.find_or_create_by_name("Dumbbells").id
  e.category =    "muscle"
  e.category = e.category.downcase
  e.description =  "Sit on the edge of a Bench with a Dumbbell in one hand. Place your elbow on the inside of one thigh, close to your knee and allow the dumbbell to hang towards the ground. Place the other hand on top of the opposite leg for stability. Bend your elbow and raise the Dumbbell up towards your Shoulder. Pause briefly and slowly return to the starting position."
  e.tips =         "Perform the exercise in a slow and controlled manner. Avoid arching your Back or using momentum to assist you to raise the weight."
  count += 1 if e.save!

        


  e = Exercise.find_or_create_by_name("Incline Dumbbell Curl")
  e.muscle =  "biceps"
  e.muscle = e.muscle.downcase
  e.equipment_id = Equipment.find_or_create_by_name("Dumbbells").id
  e.category =    "muscle"
  e.category = e.category.downcase
  e.description =  "Lie back on an Incline Bench set at 45 degrees. Hold the Dumbbells in your hands with your palms facing forwards. Allow your arms to hang freely towards the ground. Bend your elbows to raise the Dumbbells towards your Shoulders. Pause briefly and slowly return to your starting position."
  e.tips =         "Keep your elbows close to your sides throughout the movement. Minimise momentum or swinging the body to isolate the biceps. Perform in a slow and controlled manner."
  count += 1 if e.save!

        


  e = Exercise.find_or_create_by_name("Incline Rotating Curl")
  e.muscle =  "biceps"
  e.muscle = e.muscle.downcase
  e.equipment_id = Equipment.find_or_create_by_name("Dumbbells").id
  e.category =    "muscle"
  e.category = e.category.downcase
  e.description =  "Lie back on an Incline Bench set at 45 degrees. Hold the Dumbbells in your hands with your palms facing inwards. Allow your arms to hang freely towards the ground. As you bend your elbows to raise the Dumbbells towards your Shoulders, rotate the Dumbbells out as far as possible. Pause briefly and slowly return to your starting position."
  e.tips =         "Keep your elbows close to your sides throughout the movement. Minimise momentum or swinging the body to isolate the biceps. Perform in a slow and controlled manner."
  count += 1 if e.save!

        


  e = Exercise.find_or_create_by_name("Preacher Curl (Barbell)")
  e.muscle =  "biceps"
  e.muscle = e.muscle.downcase
  e.equipment_id = Equipment.find_or_create_by_name("Barbell").id
  e.category =    "muscle"
  e.category = e.category.downcase
  e.description =  "Rest your upper-arms comfortably on the Preacher Bench Pad. Hold a straight Barbell with your palms facing up. From a straight arm position, bend your elbows and pull the Barbell towards your Shoulders. Pause briefly at the peak of the movement and gradually lower the Barbell to the starting position and repeat."
  e.tips =         "Preacher curls are an advanced exercise, start with light weights and allow several workouts to get used to the exercise. Exhale as you raise the Barbell and avoid any movement in the torso to assist you to complete the exercise."
  count += 1 if e.save!

        


  e = Exercise.find_or_create_by_name("Preacher Curl (Dumbbell)")
  e.muscle =  "biceps"
  e.muscle = e.muscle.downcase
  e.equipment_id = Equipment.find_or_create_by_name("Dumbbells").id
  e.category =    "muscle"
  e.category = e.category.downcase
  e.description =  "Rest your upper-arms comfortably on the Preacher Bench Pad. Hold a Dumbbell in one hand with your palm facing up. Then extend the arm as much as comfortably possible. Bend your elbow and pull the Dumbbell towards your Shoulders. Pause briefly at the peak of the contraction and lower back to the starting position."
  e.tips =         "Preacher curls are an advanced exercise, start with light weights and allow several workouts to get used to the exercise. Exhale as you raise the Dumbbells and avoid any movement in the torso to assist you to complete the exercise."
  count += 1 if e.save!

        


  e = Exercise.find_or_create_by_name("EZ Bar Bicep Curl")
  e.muscle =  "biceps"
  e.muscle = e.muscle.downcase
  e.equipment_id = Equipment.find_or_create_by_name("EZ bar").id
  e.category =    "muscle"
  e.category = e.category.downcase
  e.description =  "Stand upright with your feet Shoulder-width apart. Grasp the EZ-Bar with a grip slightly wider than your hips. Bend your elbow to raise the Bar up toward your Shoulders. Pause briefly and slowly lower the Bar to the starting position."
  e.tips =         "Keep your elbows close to your sides throughout the movement. Avoid any movement in the torso to assist you to complete the exercise. Perform in a slow and controlled manner."
  count += 1 if e.save!

        


  e = Exercise.find_or_create_by_name("EZ Bar Preacher Curl")
  e.muscle =  "biceps"
  e.muscle = e.muscle.downcase
  e.equipment_id = Equipment.find_or_create_by_name("EZ Bar").id
  e.category =    "muscle"
  e.category = e.category.downcase
  e.description =  "Rest your upper-arms comfortably on the Preacher Bench Pad. Hold an EZ Bar with your palms facing up. From a straight arm position, bend your elbows and pull the EZ Bar towards your Shoulders. Pause briefly at the peak of the movement and gradually lower the EZ Bar to the starting position and repeat."
  e.tips =         "Preacher curls are an advanced exercise, start with light weights and allow several workouts to get used to the exercise. Exhale as you raise the EZ Bar and avoid any movement in the torso to assist you to complete the exercise."
  count += 1 if e.save!

        


  e = Exercise.find_or_create_by_name("EZ Bar Reverse Curl")
  e.muscle =  "biceps"
  e.muscle = e.muscle.downcase
  e.equipment_id = Equipment.find_or_create_by_name("EZ Bar").id
  e.category =    "muscle"
  e.category = e.category.downcase
  e.description =  "Rest your upper-arms comfortably on the Preacher Bench Pad. Hold the EZ-Bar with your palms facing downwards and then extend your arms as much as comfortably possible. Bend your elbows and raise the EZ-Bar towards your Shoulders. Pause briefly at the peak of the movement and gradually lower the EZ-Bar to the starting position and repeat."
  e.tips =         "Preacher curls are an advanced exercise, start with light weights and allow several workouts to get used to the exercise. Exhale as you raise the EZ Bar and avoid any movement in the torso to assist you to complete the exercise."
  count += 1 if e.save!

        


  e = Exercise.find_or_create_by_name("Reverse Preacher Curl")
  e.muscle =  "biceps"
  e.muscle = e.muscle.downcase
  e.equipment_id = Equipment.find_or_create_by_name("Barbell").id
  e.category =    "muscle"
  e.category = e.category.downcase
  e.description =  "Rest your upper-arms comfortably on the Preacher Bench Pad. Hold the Barbell with your palms facing downwards and then extend your arms as much as comfortably possible. Bend your elbows and raise the Barbell towards your Shoulders. Pause briefly at the peak of the movement and gradually lower the Barbell to the starting position."
  e.tips =         "Preacher curls are an advanced exercise, start with light weights and allow several workouts to get used to the exercise. Exhale as you raise the Barbell and avoid any movement in the torso to assist you to complete the exercise."
  count += 1 if e.save!

        


  e = Exercise.find_or_create_by_name("Bicep Curl On Swiss Ball")
  e.muscle =  "biceps"
  e.muscle = e.muscle.downcase
  e.equipment_id = Equipment.find_or_create_by_name("Dumbbells").id
  e.category =    "muscle"
  e.category = e.category.downcase
  e.description =  "Sit on a Swiss ball holding a Dumbbell in each hand. Place your straight arms close to your sides with your palms facing forwards. Raise the Dumbbells towards the Shoulders by bending at the elbows.  Pause briefly at peak contraction and slowly return to the starting position."
  e.tips =         "Minimise momentum or movement in the torso to isolate the biceps. Perform in a slow and controlled manner."
  count += 1 if e.save!

        


  e = Exercise.find_or_create_by_name("Hammer Curl")
  e.muscle =  "biceps"
  e.muscle = e.muscle.downcase
  e.equipment_id = Equipment.find_or_create_by_name("Dumbbells").id
  e.category =    "muscle"
  e.category = e.category.downcase
  e.description =  "Grasp two Dumbbells and hold them vertically by your sides. Your palms should be facing each other. Keeping your elbows close to your torso, raise the Dumbbells simultaneously towards the Shoulders. Pause briefly at peak contraction and slowly return to the starting position."
  e.tips =         "Minimise movement in your torso to isolate the biceps. Perform the exercise in a slow and controlled manner."
  count += 1 if e.save!

        


  e = Exercise.find_or_create_by_name("Hammer Curl (Cable)")
  e.muscle =  "biceps"
  e.muscle = e.muscle.downcase
  e.equipment_id = Equipment.find_or_create_by_name("Cable").id
  e.category =    "muscle"
  e.category = e.category.downcase
  e.description =  "Connect a rope attachment to the lowest anchor setting on the Cable Machine. Grasp the two ends of the rope with your palms facing each other. Keeping your elbows close to your sides, pull the two ends of the rope towards the Shoulders. Pause briefly and slowly return to the starting position."
  e.tips =         "Minimise movement in your torso to isolate the biceps. Perform the exercise in a slow and controlled manner."
  count += 1 if e.save!

        


  e = Exercise.find_or_create_by_name("Alternating Bicep Curl")
  e.muscle =  "biceps"
  e.muscle = e.muscle.downcase
  e.equipment_id = Equipment.find_or_create_by_name("Dumbbells").id
  e.category =    "muscle"
  e.category = e.category.downcase
  e.description =  "Grasp two Dumbbells and position your arms tight by your torso. With your palms facing forwards, raise one Dumbbell to the Shoulder by bending at the elbow. Pause briefly and slowly return to the starting position. Repeat on the other side and continue to alternate."
  e.tips =         "Minimise movement in your torso to isolate the biceps. Perform the exercise in a slow and controlled manner."
  count += 1 if e.save!

        


  e = Exercise.find_or_create_by_name("Preacher Curl (Cable)")
  e.muscle =  "biceps"
  e.muscle = e.muscle.downcase
  e.equipment_id = Equipment.find_or_create_by_name("Cable").id
  e.category =    "muscle"
  e.category = e.category.downcase
  e.description =  "Set up the Preacher Bench facing a Cable Machine. Adjust the anchor to the lowest setting. Connect a Straight or EZ-Bar to the Cable. Reach down to grasp the Bar with your palms facing up and rest your upper-arms comfortably on the Preacher Bench.  Extend your arms as much as comfortably possible and then bend your elbows to pull the Bar to your Shoulders. Pause briefly at peak contraction and slowly lower the Bar to the starting position."
  e.tips =         "Preacher curls are an advanced exercise, so start off with light weights and allow several workouts to get used to the exercise. Exhale as your raise the Bar. Avoid any movement in the torso to assist in the exercise."
  count += 1 if e.save!

        


  e = Exercise.find_or_create_by_name("Prone Incline Curl")
  e.muscle =  "biceps"
  e.muscle = e.muscle.downcase
  e.equipment_id = Equipment.find_or_create_by_name("Dumbbells").id
  e.category =    "muscle"
  e.category = e.category.downcase
  e.description =  "Lie face down on an Incline Bench set at 45 degrees. Straddle the seat and position your Shoulders at the top of the of the Bench. Hold a Dumbbells in each hand and start with your arms hanging towards the ground. Bend your elbows to raise the Dumbbells towards your Shoulders. Pause briefly and slowly lower the Dumbbells to the starting position and repeat."
  e.tips =         "Keep your elbows close to your sides throughout the movement. Avoid arching your Back as you raise the Dumbbells upwards and keep your Chest on the Incline Bench at all times."
  count += 1 if e.save!

        


  e = Exercise.find_or_create_by_name("Prone Incline Curl (Cable)")
  e.muscle =  "biceps"
  e.muscle = e.muscle.downcase
  e.equipment_id = Equipment.find_or_create_by_name("Cable").id
  e.category =    "muscle"
  e.category = e.category.downcase
  e.description =  "Set up a Straight Bar on the lowest setting on the Cable Machine. Lie face down on an Incline Bench set at 45 degrees or similar. Straddle the seat and position your Shoulders at the top of the of the Bench. While keeping good posture face down, grasp the Straight Bar and begin to bend your elbows to raise the Bar towards your Shoulders. Pause briefly at the top and slowly lower the Bar to the starting position."
  e.tips =         "Keep your elbows close to your sides throughout the movement. Avoid arching your Back as you raise the Dumbbells upwards and keep your Chest on the Incline Bench at all times."
  count += 1 if e.save!

        


  e = Exercise.find_or_create_by_name("Bicep Wall Stretch")
  e.muscle =  "biceps"
  e.muscle = e.muscle.downcase
  e.equipment_id = Equipment.find_or_create_by_name("").id
  e.category =    "Stretch"
  e.category = e.category.downcase
  e.description =  "Stand upright and place a tightened fist against the wall at Shoulder-height. Keep your arm straight and ensure your thumb and index finger are the point of contact. Slowly rotate your body outwards until you begin to feel a stretch in your Bicep."
  e.tips =         "Ensure that you do this stretch gently and release it slowly. As with all stretching, you should feel a light stretch not pain or discomfort."
  count += 1 if e.save!

        


  e = Exercise.find_or_create_by_name("biceps Prone With Partner")
  e.muscle =  "biceps"
  e.muscle = e.muscle.downcase
  e.equipment_id = Equipment.find_or_create_by_name("").id
  e.category =    "Stretch"
  e.category = e.category.downcase
  e.description =  "Stand upright with your feet in a staggered stance (one foot forward and one foot back). Hold your arms out straight to the side at Shoulder-height. Instruct your partner to stand behind and to grasp your Forearms or wrists. Your partner is then required to gently pull your arms backwards until you feel a stretch in the biceps."
  e.tips =         "Perform this exercise in a slow and controlled manner. With all stretching, you should feel a light stretch not pain or discomfort. Avoid a sudden release of stretch or over stretching."
  count += 1 if e.save!

        


  e = Exercise.find_or_create_by_name("Alternating Bicep Curl (Resistance Band)")
  e.muscle =  "biceps"
  e.muscle = e.muscle.downcase
  e.equipment_id = Equipment.find_or_create_by_name("Resistance Band").id
  e.category =    "muscle"
  e.category = e.category.downcase
  e.description =  "Position the centre of the Resistance Band under your feet and hold the ends with your palms facing forwards at hip-height. Keeping your Shoulders back and your elbows by your side, bend one arm to pull the band to your Shoulder. Slowly lower the band to the starting position and repeat with the other side."
  e.tips =         "Maintain upright posture at all times. Perform the exercise slowly and in a controlled manner. Avoid leaning back to minimise assistance from momentum. Exhale as you pull the band upwards."
  count += 1 if e.save!

  p "** ------------- #{count} BICEPS EXERCISES UPDATED ------------- **"     
end