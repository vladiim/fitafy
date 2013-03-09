#!/bin/env ruby 
# encoding: utf-8

def create_hamstrings

  count = 0

  e = Exercise.find_or_create_by_name("Leg Curl")
  e.muscle =  "hamstrings"
  e.muscle =   e.muscle.downcase
  e.equipment_id = Equipment.find_or_create_by_name("Leg Curl Machine").id
  e.category =    "muscle"
  e.category =   e.category.downcase
  e.description =  "Lie face down on the Bench and adjust the rolls of the machine so they are located just above your heels. Bend your knees and bring your heels into your buttocks. Pause briefly and return to the starting position."
  e.tips =         "Avoid raising your hips off the pad as you pull your heels towards your buttocks. Perform the exercise in a slow and controlled manner."
  count += 1 if e.save!

        


  e = Exercise.find_or_create_by_name("Swiss Ball Leg Curl")
  e.muscle =  "hamstrings"
  e.muscle =   e.muscle.downcase
  e.equipment_id = Equipment.find_or_create_by_name("Swiss Ball").id
  e.category =    "muscle"
  e.category =   e.category.downcase
  e.description =  "Lie down on the ground, face up with both feet placed upon the Swiss Ball. Keep you hands by your side for stability and raise your hips as high as possible. Slowly pull your heels towards your buttocks. Pause briefly and slowly return to start position."
  e.tips =         "Keep the movement smooth and controlled and maintain your elevated hips. Increase the difficulty of by widening the placement of your arms and even raise them off the ground if you are advanced."
  count += 1 if e.save!

        


  e = Exercise.find_or_create_by_name("Swiss Ball Single Leg Curl")
  e.muscle =  "hamstrings"
  e.muscle =   e.muscle.downcase
  e.equipment_id = Equipment.find_or_create_by_name("Swiss Ball").id
  e.category =    "muscle"
  e.category =   e.category.downcase
  e.description =  "Lie down on the ground, face up with both feet placed upon the Swiss Ball. Keep you hands by your side for stability and raise your hips as high as possible. Raise one leg off the ball and slowly pull the other heel towards your Buttocks. Pause briefly and slowly return to start position."
  e.tips =         "Keep the movement smooth and controlled and maintain your elevated hips. Increase the difficulty of by widening the placement of your arms and even raise them off the ground if you are advanced."
  count += 1 if e.save!

        


  e = Exercise.find_or_create_by_name("Straight Leg Deadlift (Dumbbells)")
  e.muscle =  "hamstrings"
  e.muscle =   e.muscle.downcase
  e.equipment_id = Equipment.find_or_create_by_name("Dumbbells").id
  e.category =    "muscle"
  e.category =   e.category.downcase
  e.description =  "Stand with your feet Shoulder-width apart and hold the Dumbbells in front of your hips. Keeping your spine straight and slightly bent knees, tip forward from the hips until you feel a light stretch in the hamstrings. Pause briefly and slowly return to an upright position."
  e.tips =         "Keep you shoulders back and core engaged at all times. This exercise should be done carefully, in a slow and controlled manner."
  count += 1 if e.save!

        


  e = Exercise.find_or_create_by_name("Straight Leg Deadlift (Barbell)")
  e.muscle =  "hamstrings"
  e.muscle =   e.muscle.downcase
  e.equipment_id = Equipment.find_or_create_by_name("Barbell").id
  e.category =    "muscle"
  e.category =   e.category.downcase
  e.description =  "Stand with your feet Shoulder-width apart and hold the Barbell in front of your hips. Keeping your spine straight and slightly bent knees, tip forward from the hips until you feel a light stretch in the hamstrings. Pause briefly and slowly return to an upright position."
  e.tips =         "Keep you shoulders back and core engaged at all times. This exercise should be done carefully, in a slow and controlled manner."
  count += 1 if e.save!

        


  e = Exercise.find_or_create_by_name("Russian Leg Curls")
  e.muscle =  "hamstrings"
  e.muscle =   e.muscle.downcase
  e.equipment_id = Equipment.find_or_create_by_name("").id
  e.category =    "muscle"
  e.category =   e.category.downcase
  e.description =  "Commence in a kneeling position on the floor with a training partner behind you, holding your ankles. While keeping good posture, tip forward and slowly lower your torso towards the floor. Place your hands on the floor to catch your fall. Use your arms to push yourself up off the floor, while contracting the hamstrings to return you to your starting position."
  e.tips =         "For advanced trainers only. During your first attempt at this exercise work through a small range of motion i.e. The first 25 percent of the full-range. As your strength increases, increase your range of motion. Keep your Shoulder back and core engaged throughout the exercise."
  count += 1 if e.save!

        


  e = Exercise.find_or_create_by_name("Single Leg Deadlift")
  e.muscle =  "hamstrings"
  e.muscle =   e.muscle.downcase
  e.equipment_id = Equipment.find_or_create_by_name("Dumbbells").id
  e.category =    "muscle"
  e.category =   e.category.downcase
  e.description =  "Hold the Dumbbells in front of you with straight arms. Take your weight into one leg and allow the opposite leg to counter balance behind you. Bend forward from the hips and slowly lower the Dumbbells towards the ground until you feel a stretch in your hamstrings of your stationary leg. Slowly return to your upright position."
  e.tips =         "Perform the exercise in a slow and controlled manner and maintain good posture at all times."
  count += 1 if e.save!

        


  e = Exercise.find_or_create_by_name("Lying Hamstring Stretch")
  e.muscle =  "hamstrings"
  e.muscle =   e.muscle.downcase
  e.equipment_id = Equipment.find_or_create_by_name("").id
  e.category =    "Stretch"
  e.category =   e.category.downcase
  e.description =  "Lie on your Back, raise one leg in the air while the other remains flat on the ground. Grasp behind the knee of the vertical leg and pull it towards your torso. Extend the knee until you feel a stretch in the rear of the upper leg."
  e.tips =         "Keep the natural curve of the spine. With all stretching, your aim is to feel a light stretch not pain or discomfort."
  count += 1 if e.save!

        


  e = Exercise.find_or_create_by_name("Hamstring Stretch On Bench")
  e.muscle =  "hamstrings"
  e.muscle =   e.muscle.downcase
  e.equipment_id = Equipment.find_or_create_by_name("").id
  e.category =    "Stretch"
  e.category =   e.category.downcase
  e.description =  "Stand upright and place one heel on a sturdy Bench. While maintaining your posture, slowly lean forward directly over the leg to feel a stretch in the rear of the upper-leg."
  e.tips =         "Flattening or rounding the spine during this stretch will increase your range of motion without increasing the flexibility of the hamstrings. With all stretching, you should feel a light stretch not pain or discomfort."
  count += 1 if e.save!

        


  e = Exercise.find_or_create_by_name("Seated Forward Lean")
  e.muscle =  "hamstrings"
  e.muscle =   e.muscle.downcase
  e.equipment_id = Equipment.find_or_create_by_name("").id
  e.category =    "Stretch"
  e.category =   e.category.downcase
  e.description =  "Sit on the floor and extend both legs out in front of you. Lean forward and reach towards your toes. A bent leg will create a stretch towards the centre of the hamstrings while a straight leg will also create a total-leg stretch."
  e.tips =         "Flattening or rounding the spine during this stretch will increase your range of motion without increasing the flexibility of the hamstrings. With all stretching, you should feel a light stretch not pain or discomfort."
  count += 1 if e.save!

        


  e = Exercise.find_or_create_by_name("Hurdler Stretch")
  e.muscle =  "hamstrings"
  e.muscle =   e.muscle.downcase
  e.equipment_id = Equipment.find_or_create_by_name("").id
  e.category =    "Stretch"
  e.category =   e.category.downcase
  e.description =  "Sit down on the floor with one leg straight out in front and the other leg bent outwards. Lean forward from the hips towards the direction of the straight leg. You should feel a stretch down the back of the upper-leg."
  e.tips =         "Exhale as you gently stretch. As with all stretching, you should feel a light stretch not pain or discomfort."
  count += 1 if e.save!

        


  e = Exercise.find_or_create_by_name("Hamstring Curl")
  e.muscle =  "hamstrings"
  e.muscle =   e.muscle.downcase
  e.equipment_id = Equipment.find_or_create_by_name("TRX").id
  e.category =    "muscle"
  e.category =   e.category.downcase
  e.description =  "Lie back on the floor and place your heels in the TRX stirrups. Position your hands down by your sides for stability and elevate your hips by contracting your Buttocks. Whilst maintaining this position, slowly pull your heels towards your buttocks. Pause briefly and return to the starting position."
  e.tips =         "Keep you vision upwards and sustain an engaged core for stability. To increase the difficulty of this exercise, move your arms further away from your body."
  count += 1 if e.save!

        


  e = Exercise.find_or_create_by_name("Hamstring Roll")
  e.muscle =  "hamstrings"
  e.muscle =   e.muscle.downcase
  e.equipment_id = Equipment.find_or_create_by_name("Foam Roller").id
  e.category =    "Stretch"
  e.category =   e.category.downcase
  e.description =  "Sit on the floor with the Foam Roller positioned just below your buttocks. Place your hands beside but slightly behind your body to support your weight. Raise your buttocks off the floor to increase pressure on your hamstrings by the Foam Roller. Roll the foam downwards, from your buttocks to just above your knee. Slowly roll in the reverse direction to the start position."
  e.tips =         "Perform this roll slowly and spend a little more time of tighter areas. Take 10-15 seconds to complete a directional roll. Increase the intensity of this roll by crossing your legs to have contact with only one leg."
  count += 1 if e.save!

        


  e = Exercise.find_or_create_by_name("Hamstring Curls (Medicine Ball)")
  e.muscle =  "hamstrings"
  e.muscle =   e.muscle.downcase
  e.equipment_id = Equipment.find_or_create_by_name("Medicine Ball").id
  e.category =    "muscle"
  e.category =   e.category.downcase
  e.description =  "Lie face down with your partner standing at your head with a Medicine Ball. Get your partner to roll the Medicine Ball from your Buttocks, down your legs towards your ankles. As the Medicine Ball reaches your ankles, powerfully bend your knees to thrust the Medicine Ball back to your partner."
  e.tips =         "Commence with a light Medicine Ball to perfect the action and ensure you are thoroughly warmed up before starting. Minimise any upper-body movement and avoid raising the hips to assist in the movement."
  count += 1 if e.save!

  p "** ------------- #{count} HAMSTRINGS EXERCISES UPDATED ------------- **"     
end