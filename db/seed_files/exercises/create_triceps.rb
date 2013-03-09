#!/bin/env ruby 
# encoding: utf-8

def create_triceps

  count = 0

  e = Exercise.find_or_create_by_name("tricep Extension (Cables)")
  e.muscle=  "triceps"
  e.muscle = e.muscle.downcase
  e.equipment_id = Equipment.find_or_create_by_name("Cable Machine").id
  e.category =    "muscle"
  e.category =   e.category.downcase
  e.description =  "Attach a Straight Bar to the anchor point of the top rung of the Cable Machine. Stand with your feet Shoulder-width apart with your knees slightly bent. Grasp the Bar and hold your elbows close to your sides. Straighten your arms and lower the Bar until your elbows are fully extended. Pause briefly and return your arms to the starting position."
  e.tips =         "Keep your elbows stationary and firmly by your waist. Maintain a rigid torso to eliminate momentum and perform the exercise in a slow and controlled manner."
  count += 1 if e.save!

        


  e = Exercise.find_or_create_by_name("tricep Extension (Elastic Band)")
  e.muscle=  "triceps"
  e.muscle = e.muscle.downcase
  e.equipment_id = Equipment.find_or_create_by_name("Elastic Band").id
  e.category =    "muscle"
  e.category =   e.category.downcase
  e.description =  "Loop an Elastic Band over the top of a Cable Machine or Chin Up Bar. Stand with your feet Shoulder-width apart with your knees slightly bent. Grab the ends of the Elastic Band and bring your elbows in close to your sides. Straighten your arms until your elbows are fully extended. Pause briefly and slowly return your arms to the starting position."
  e.tips =         "Keep your elbows stationary and firmly by your waist. Maintain a rigid torso to eliminate momentum and perform the exercise in a slow and controlled manner."
  count += 1 if e.save!

        


  e = Exercise.find_or_create_by_name("Single Arm tricep Extension")
  e.muscle=  "triceps"
  e.muscle = e.muscle.downcase
  e.equipment_id = Equipment.find_or_create_by_name("Cable Machine").id
  e.category =    "muscle"
  e.category =   e.category.downcase
  e.description =  "Attach a single handle to the anchor point at the top rung of the Cable Machine. Stand with your feet Shoulder-width apart with your knees slightly bent. Grasp the handle with an over-hand grip and position your elbow close to your side. Straighten your arm and lower the handle until your elbow is fully extended. Pause briefly and return your arms to the starting position."
  e.tips =         "Keep your elbows stationary and firmly by your waist. Maintain a rigid torso to eliminate momentum and perform the exercise in a slow and controlled manner."
  count += 1 if e.save!

        


  e = Exercise.find_or_create_by_name("One Arm Kickback")
  e.muscle=  "triceps"
  e.muscle = e.muscle.downcase
  e.equipment_id = Equipment.find_or_create_by_name("Dumbbells").id
  e.category =    "muscle"
  e.category =   e.category.downcase
  e.description =  "Place one knee and hand on a bench for support. Bend over at the hips so your back is parallel to the floor. With a Dumbbell in your free hand, raise your upper-arm so it too is parallel to the ground. Allow your forearm to hang vertically. Keeping your upper-arm and elbow stationary, straighten your arm to full extension. Pause briefly and slowly return to the starting position."
  e.tips =         "Keep your upper-arm horizontal at all times. Lower and raise the Dumbbell slowly to avoid momentum assistance and irritation of the elbow joint. Keep your vision downwards to maintain appropriate head position."
  count += 1 if e.save!

        


  e = Exercise.find_or_create_by_name("Overhead Double Arm Extension")
  e.muscle=  "triceps"
  e.muscle = e.muscle.downcase
  e.equipment_id = Equipment.find_or_create_by_name("Dumbbells").id
  e.category =    "muscle"
  e.category =   e.category.downcase
  e.description =  "Grasp one end of the Dumbbell with both hands and raise it over-head. Position your palms so they face the inside end-plate of the Dumbbell. Slowly lower the Dumbbell behind your head towards the base of your neck. Once your elbows are flexed to 90 degrees, raise the Dumbbell back to the starting position"
  e.tips =         "Keep your elbows stationary and close to your head. Do not let them flare outwards. Maintain a neutral spine by keeping your Abdominals tight. Look forwards and avoid overarching the Lower-Back."
  count += 1 if e.save!

        


  e = Exercise.find_or_create_by_name("Overhead Arm Extension")
  e.muscle=  "triceps"
  e.muscle = e.muscle.downcase
  e.equipment_id = Equipment.find_or_create_by_name("Dumbbells").id
  e.category =    "muscle"
  e.category =   e.category.downcase
  e.description =  "Holding a dumbbell in your hand, raise your arm directly overhead so that your upper-arm is close to your ear. Slowly lower the Dumbbell behind your head towards the base of your neck. Once your elbow is flexed to 90 degrees, raise the Dumbbell back to the starting position."
  e.tips =         "Keep your elbow stationary and close to your head. Maintain good posture by keeping your Shoulders back, Abdominals tight and your vision forwards."
  count += 1 if e.save!

        


  e = Exercise.find_or_create_by_name("Overhead Arm Extension (Elastic Band)")
  e.muscle=  "triceps"
  e.muscle = e.muscle.downcase
  e.equipment_id = Equipment.find_or_create_by_name("Elastic Band").id
  e.category =    "muscle"
  e.category =   e.category.downcase
  e.description =  "Stand on one end of the Elastic Band and hold the other end in one hand. Raise that arm directly overhead so that your upper-arm is close to your ear and the Elastic Band runs down your back. Slowly lower your hand behind your head towards the base of your neck. Once your elbow is flexed to 90 degrees, straighten the arm back to the starting position."
  e.tips =         "Adjust the resistance by changing the length on the Elastic Band. Experiment until you find your optimal level of resistance. Keep your upper-elbow stationary avoid allowing it to flare outwards. Stay upright and keep your Abdominals tight."
  count += 1 if e.save!

        


  e = Exercise.find_or_create_by_name("Skull Crusher")
  e.muscle=  "triceps"
  e.muscle = e.muscle.downcase
  e.equipment_id = Equipment.find_or_create_by_name("EZ Bar").id
  e.category =    "muscle"
  e.category =   e.category.downcase
  e.description =  "Lie down, face up on a Flat Bench. Raise the EZ-Bar over your Chest and extend your arms until they are perfectly vertical. Bend your elbows and lower the bar towards the top of the head. As your elbows reach a 90 degree angle, pause briefly and return back to the starting position."
  e.tips =         "Perform the exercise slowly to avoid any impact with your head and avoid excessively bending your elbows to prevent straining of your elbow joint. Keep the upper-arms vertical and avoid flaring the elbows to assist in the movement."
  count += 1 if e.save!

        


  e = Exercise.find_or_create_by_name("Skull Crusher (Dumbbells)")
  e.muscle=  "triceps"
  e.muscle = e.muscle.downcase
  e.equipment_id = Equipment.find_or_create_by_name("Dumbbells").id
  e.category =    "muscle"
  e.category =   e.category.downcase
  e.description =  "Lying down, face up on a Flat Bench. Raise the Dumbbells over your Chest so the arms are perfectly vertical. Keep the elbows in place and lower the Dumbbells towards the top of the head. As your elbows reach a 90 degree angle, pause briefly and return back to the starting position."
  e.tips =         "Perform the exercise slowly to avoid any impact with your head and avoid excessively bending your elbows to prevent straining of your elbow joint. Keep the upper-arms vertical and avoid flaring the elbows to assist in the movement."
  count += 1 if e.save!

        


  e = Exercise.find_or_create_by_name("Close Grip Push Up (On Toes)")
  e.muscle=  "triceps"
  e.muscle = e.muscle.downcase
  e.equipment_id = Equipment.find_or_create_by_name("").id
  e.category =    "muscle"
  e.category =   e.category.downcase
  e.description =  "Kneel down on the ground and place your hands in line with your Shoulders but only an inch or two apart. Extend your legs out straight and balance on your toes. Slowly lower your Chest to the ground by bending at the elbows. Pause briefly before your touch the floor and push back up to your starting position."
  e.tips =         "Engage your core to prevent your hips from sagging. Avoid locking out your elbows and exhale as you push upwards."
  count += 1 if e.save!

        


  e = Exercise.find_or_create_by_name("Close Grip Push Up (On Knees)")
  e.muscle=  "triceps"
  e.muscle = e.muscle.downcase
  e.equipment_id = Equipment.find_or_create_by_name("").id
  e.category =    "muscle"
  e.category =   e.category.downcase
  e.description =  "Kneel down on the ground and place your hands in line with your Shoulders but only an inch or two apart. Keeping the knees on the ground, slowly lower your Chest to the ground by bending at the elbows.  Pause briefly before your touch the floor and push back up to your starting position."
  e.tips =         "Engage your core to prevent your hips from sagging. Avoid locking out your elbows and exhale as you push upwards."
  count += 1 if e.save!

        


  e = Exercise.find_or_create_by_name("Bench Dip")
  e.muscle=  "triceps"
  e.muscle = e.muscle.downcase
  e.equipment_id = Equipment.find_or_create_by_name("Bench").id
  e.category =    "muscle"
  e.category =   e.category.downcase
  e.description =  "Sit on a Bench and place your hands beside your hips. Position your hands so all pressure is taken through the butt of the palm to minimise stress on your wrist joint. Slowly lower your backside towards the ground until your elbows are at 90 degrees. Straighten your arms and return back to the starting position."
  e.tips =         "Maintain good posture with your Chest out and Shoulders blades back. Keep your Buttocks near the bench at all times and avoid a hard lock of your elbows on the extension of your arms."
  count += 1 if e.save!

        


  e = Exercise.find_or_create_by_name("Parallel Bar Dips")
  e.muscle=  "triceps"
  e.muscle = e.muscle.downcase
  e.equipment_id = Equipment.find_or_create_by_name("Parallel Bars").id
  e.category =    "muscle"
  e.category =   e.category.downcase
  e.description =  "Stand securely on the elevated step of the Parallel Bar apparatus. Start with your arms extended, holding your entire body weight. Your legs can be straight or crossed depending on your height or the height of the Parallel Bars. While maintaining good posture, lower your body towards the ground to a point where your elbows are bent at 90 degrees. Straighten your arms to full extension but don't fully lock them out."
  e.tips =         "Maintain good posture with your Chest out and Shoulders back. Avoid lowering your body to a point where your elbows are flexed to less than 90 degrees. Exhale as you extend your arms and always perform the exercise in a slow and controlled manner."
  count += 1 if e.save!

        


  e = Exercise.find_or_create_by_name("Close Grip Bench Press")
  e.muscle=  "triceps"
  e.muscle = e.muscle.downcase
  e.equipment_id = Equipment.find_or_create_by_name("Barbell").id
  e.category =    "muscle"
  e.category =   e.category.downcase
  e.description =  "Lie flat on the Bench with your feet firmly pressed into the floor. Grasp the bar slightly narrower than Shoulder-width. Remove the Bar from the supports and lower the Bar to just above the Lower-Chest. Push the Bar upwards until your arms are straight, pause briefly and return to the start position."
  e.tips =         "Don't expect to use as much weight as with regular Bench press as you won't have as much Chest involvement. Allow your wrists to adapt gradually to the added strain of the close grip. Keep your core engaged and at all times, keep the Shoulders and hips in contact with the Bench."
  count += 1 if e.save!

        


  e = Exercise.find_or_create_by_name("One Arm Kickback (Cable)")
  e.muscle=  "triceps"
  e.muscle = e.muscle.downcase
  e.equipment_id = Equipment.find_or_create_by_name("Cable Machine").id
  e.category =    "muscle"
  e.category =   e.category.downcase
  e.description =  "Attach a single handle to the lowest anchor point on the Cable Machine. Place one knee and hand on a bench for support. Bend over at the hips so your back is parallel to the floor. Grasp the handle in your free hand and raise your upper-arm so it is parallel to the ground. Allow your forearm to hang vertically. Keeping your upper-arm and elbow stationary, straighten your arm to full extension. Pause briefly and slowly return to the starting position."
  e.tips =         "Keep your upper-arm horizontal at all times. Lower and raise the handle slowly to avoid momentum assistance. Perform this exercise in a slow and controlled manner to avoid irritation of the elbow joint."
  count += 1 if e.save!

        


  e = Exercise.find_or_create_by_name("Forward tricep Extension")
  e.muscle=  "triceps"
  e.muscle = e.muscle.downcase
  e.equipment_id = Equipment.find_or_create_by_name("Cable Machine").id
  e.category =    "muscle"
  e.category =   e.category.downcase
  e.description =  "Attach a two ended rope handle to the Cable Machine anchor at head height. Grasp the ends of the ropes with both hands and turn away from the anchor and weight stack. In a staggered stance, position your upper-arms by the side of your head with your elbows pointing upwards. Extend your arms and pull the rope handles upwards and forwards. Slowly lower the ropes back to their starting position."
  e.tips =         "Keep your elbows stationary to isolate your triceps. Keep your body still to eliminate momentum and to maintain control of speed. This exercise can also be done with a Straight Bar or Curved Bar."
  count += 1 if e.save!

        


  e = Exercise.find_or_create_by_name("tricep Stretch")
  e.muscle=  "triceps"
  e.muscle = e.muscle.downcase
  e.equipment_id = Equipment.find_or_create_by_name("").id
  e.category =    "Stretch"
  e.category =   e.category.downcase
  e.description =  "Straighten one arm directly overhead. Bend your elbow so that your hand reaches behind your neck and down your back. Grasp your elbow with your opposite hand and gently place pressure downwards and across your body. Repeat on the opposite arm."
  e.tips =         "Ensure that you do this stretch gently and release it slowly. As with all stretching, you should feel a light stretch, not pain or discomfort."
  count += 1 if e.save!

        


  e = Exercise.find_or_create_by_name("tricep Stretch With Towel")
  e.muscle=  "triceps"
  e.muscle = e.muscle.downcase
  e.equipment_id = Equipment.find_or_create_by_name("Towel").id
  e.category =    "Stretch"
  e.category =   e.category.downcase
  e.description =  "Grasp the end of a Towel with one hand and position it behind your head and down your Back. Position your elbow your beside your head. Reach behind your Lower-Back with your other arm and grasp the opposite end of the Towel. Pull downwards on the towel to create a stretch in your tricep."
  e.tips =         "Perform this exercise in a slow and controlled manner. With all stretching, you should feel a light stretch not pain or discomfort. Avoid sudden release of this stretch or over stretching."
  count += 1 if e.save!

        


  e = Exercise.find_or_create_by_name("tricep Pushdown (Resistance Band)")
  e.muscle=  "triceps"
  e.muscle = e.muscle.downcase
  e.equipment_id = Equipment.find_or_create_by_name("Resistance Band").id
  e.category =    "muscle"
  e.category =   e.category.downcase
  e.description =  "Loop the Resistance Band over a horizontal structure above your head. Once secure, grasp the ends of the Resistance Band and adjust the position of your hands to keep it tight. Start with your feet Shoulder-width apart and elbows bent at 90 degrees. Extend your arms until straight. Pause briefly and slowly return to the start position."
  e.tips =         "Maintain upright posture at all times. Perform the exercise slowly and in a controlled manner. Completely straighten your arms but avoid a hard lock out of the elbows."
  count += 1 if e.save!

  p "** ------------- #{count} TRICEP EXERCISES UPDATED ------------- **"     
end