#!/bin/env ruby 
# encoding: utf-8

def create_glutes

  count = 0

  e = Exercise.find_or_create_by_name("Hip Abduction (Cable)")
  e.muscle =  "glutes"
  e.muscle =   e.muscle.downcase
  e.equipment_id = Equipment.find_or_create_by_name("Cable Cross Over Machine").id
  e.category =    "muscle"
  e.category =   e.category.downcase
  e.description =  "Stand with your feet Shoulder-width apart and side-on to the Cable Cross Over Machine. Attach an ankle cuff to the lowest setting of the Cable Cross Over Machine. Wrap the cuff around your ankle furthest from the pulley. Balancing on one leg, cross the ankle with the cuff over the other. Move the ankle (with cuff) away from the pulley as far as possible. Slowly return to the starting position."
  e.tips =         "Engage your core and try to maintain a stable torso through out the entire movement. Hold the Cable Cross Over Machine handle or the frame to add stability."
  count += 1 if e.save!

        


  e = Exercise.find_or_create_by_name("Lying Hip Abduction")
  e.muscle =  "glutes"
  e.muscle =   e.muscle.downcase
  e.equipment_id = Equipment.find_or_create_by_name("").id
  e.category =    "muscle"
  e.category =   e.category.downcase
  e.description =  "Lie down on your side with your head resting on your hand. Keep your hips vertically aligned and your legs stacked on one another. Raise the top leg as high as possible ìn the same line as your hips. Slowly lower the leg to start position."
  e.tips =         "Prevent the hips from rolling forwards or backwards and Perform the exercise in a slow and controlled manner."
  count += 1 if e.save!

        


  e = Exercise.find_or_create_by_name("Clams")
  e.muscle =  "glutes"
  e.muscle =   e.muscle.downcase
  e.equipment_id = Equipment.find_or_create_by_name("").id
  e.category =    "muscle"
  e.category =   e.category.downcase
  e.description =  "Lie down on your side with both your knees and hips bent at 90 degrees. Whilst keeping your heels together and your hips vertically aligned, rotate your top knee as high as possible and slowly return to the start position."
  e.tips =         "Prevent the hips from rolling forwards or backwards and Perform the exercise in a slow and controlled manner."
  count += 1 if e.save!

        


  e = Exercise.find_or_create_by_name("Crab Walk")
  e.muscle =  "Legs"
  e.muscle =   e.muscle.downcase
  e.equipment_id = Equipment.find_or_create_by_name("Elastic Band").id
  e.category =    "muscle"
  e.category =   e.category.downcase
  e.description =  "Stand with your feet Shoulder-width apart and loop the Elastic Band around your legs just above the knees. Bend your knees into a squat position and take one small step outwards (sideways) with one foot and then respond with the opposite leg. This step and drag movement will engage the Upper-glutes and hips."
  e.tips =         "Keep your Shoulders back and core engaged. Ensure you perform the exercise slowly and complete control."
  count += 1 if e.save!

        


  e = Exercise.find_or_create_by_name("Cross Leg Glute Stretch")
  e.muscle =  "glutes"
  e.muscle =   e.muscle.downcase
  e.equipment_id = Equipment.find_or_create_by_name("").id
  e.category =    "Stretch"
  e.category =   e.category.downcase
  e.description =  "Lie down on the ground face-up with both knees at 90 degrees. Place your right ankle over the top of your left knee. Grasp the back of your left thigh with both hands and pull it towards your Chest."
  e.tips =         "With all stretching, you should feel a light stretch not pain or discomfort."
  count += 1 if e.save!

        


  e = Exercise.find_or_create_by_name("Seated Glute Stretch")
  e.muscle =  "glutes"
  e.muscle =   e.muscle.downcase
  e.equipment_id = Equipment.find_or_create_by_name("").id
  e.category =    "Stretch"
  e.category =   e.category.downcase
  e.description =  "Sit with good posture in a Chair or on a Bench. Place the outside of one ankle on your opposite knee. While maintaining your natural lumbar curve and Shoulder blades back, lean forward over your outward bending knee."
  e.tips =         "With all stretching, you should feel a light stretch not pain or discomfort."
  count += 1 if e.save!

        


  e = Exercise.find_or_create_by_name("Seated Cross Leg Stretch")
  e.muscle =  "glutes"
  e.muscle =   e.muscle.downcase
  e.equipment_id = Equipment.find_or_create_by_name("").id
  e.category =    "Stretch"
  e.category =   e.category.downcase
  e.description =  "Sit with good posture on the ground with legs straight in front. Bend one leg and cross it over the straight leg. While maintaining your upright position, pull the crossed leg in towards your Chest."
  e.tips =         "With all stretching, you should feel a light stretch not pain or discomfort."
  count += 1 if e.save!

        


  e = Exercise.find_or_create_by_name("Knee to Chest Stretch")
  e.muscle =  "glutes"
  e.muscle =   e.muscle.downcase
  e.equipment_id = Equipment.find_or_create_by_name("").id
  e.category =    "Stretch"
  e.category =   e.category.downcase
  e.description =  "Lie down on the ground face up with your legs straight and your feet together. Bring one knee towards your torso while keeping the other leg flat on the floor. Grasp your shin with both hands and pull your knee into your Chest."
  e.tips =         "With all stretching, you should feel a light stretch not pain or discomfort."
  count += 1 if e.save!

        


  e = Exercise.find_or_create_by_name("Glute Roll")
  e.muscle =  "glutes"
  e.muscle =   e.muscle.downcase
  e.equipment_id = Equipment.find_or_create_by_name("Foam Roller").id
  e.category =    "Mobility"
  e.category =   e.category.downcase
  e.description =  "Lie down on your side over the Foam Roller where the point of contact is the top of your Buttocks. Place your elbow on the ground for balance. Roll from the upper buttocks down to your upper-legs."
  e.tips =         "Perform this roll slowly and spend a little more time on tighter areas. Take 10-15 seconds to complete this directional roll."
  count += 1 if e.save!

        


  e = Exercise.find_or_create_by_name("Piriformis  Roll")
  e.muscle =  "glutes"
  e.muscle =   e.muscle.downcase
  e.equipment_id = Equipment.find_or_create_by_name("Foam Roller").id
  e.category =    "Stretch"
  e.category =   e.category.downcase
  e.description =  "Sit on top of the Foam Roller and cross one ankle over the opposite leg just above the knee. While supporting your balance with both arms, take all your weight into the hip on the side of your bent knee. Roll along the middle to upper buttocks between your hip joint and spine."
  e.tips =         "Perform this roll slowly and spend a little more time of tighter areas. Take 5-10 seconds to complete a directional roll as this area is relatively small."
  count += 1 if e.save!

        


  e = Exercise.find_or_create_by_name("Standing Leg Abduction (Resistance Band)")
  e.muscle =  "glutes"
  e.muscle =   e.muscle.downcase
  e.equipment_id = Equipment.find_or_create_by_name("Resistance Band").id
  e.category =    "muscle"
  e.category =   e.category.downcase
  e.description =  "Tie the Resistance Band around a vertical structure. Standing side on to the Resistance Band, tie one end around the ankle furthest from the bands anchor point. Position the tied ankle slightly forwards and begin to move the front foot away from the anchor as far away as you can. Pause briefly and return to start position."
  e.tips =         "Avoid a shift in the hips in any direction and minimise any momentum occurring from a moving Torso. Position yourself far away enough to feel slight tension in the band when in starting position."
  count += 1 if e.save!

        


  e = Exercise.find_or_create_by_name("Prone Straight Leg Raises")
  e.muscle =  "glutes"
  e.muscle =   e.muscle.downcase
  e.equipment_id = Equipment.find_or_create_by_name("").id
  e.category =    "Rehab"
  e.category =   e.category.downcase
  e.description =  "Lie face-down with your legs together. Raise one straight leg up as high as possible without deviating the position of your upper-body. Pause briefly and slowly return your leg to the start position."
  e.tips =         "Avoid excessive Lower-Back contraction and focus on using your glutes to create the upward movement of the leg. Perform the exercise in a slow and controlled manner."
  count += 1 if e.save!

  p "** ------------- #{count} GLUTES EXERCISES UPDATED ------------- **"     
end