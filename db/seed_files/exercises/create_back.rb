#!/bin/env ruby 
# encoding: utf-8

def create_back

  count = 0

  e = Exercise.find_or_create_by_name("Pull Up")
  e.muscle =       "back"
  e.muscle =       e.muscle.downcase
  e.equipment_id = Equipment.find_or_create_by_name("Pull Up Bar").id
  e.category =    "muscle"
  e.category =     e.category.downcase
  e.description =  "Begin from a hanging position on a fixed Pull Up Bar with your grip slightly wider than Shoulder-width. Smoothly pull yourself up to the point where your chin is above the Bar. Pause briefly and slowly lower yourself down to the starting position."
  e.tips =         "Reduce momentum by minimising swing in the body or jerking upwards. Keep your vision forwards and maintain your head in a neutral position. Perform the exercise in a slow and controlled manner."
  count += 1 if e.save!

  


  e = Exercise.find_or_create_by_name("Lat Pulldown")
  e.muscle =  "back"
  e.muscle =       e.muscle.downcase
  e.equipment_id = Equipment.find_or_create_by_name("Pulldown Machine").id
  e.category =    "muscle"
  e.category =     e.category.downcase
  e.description =  "Adjust the knee pads/seat so the top of your legs are firmly under the knee pads. Sit upright and grasp the Bar wider than Shoulder-width. Pull the bar to your Upper-Chest, keeping your upper body very still. Squeeze the bottom of your shoulder blades together and pause briefly before you slowly return the bar back up to the starting position."
  e.tips =         "Perform the exercise slowly and under complete control, eliminate as much momentum as possible. Keep your Shoulders back and your vision forwards."
  count += 1 if e.save!

  


  e = Exercise.find_or_create_by_name("Reverse Grip Pulldown")
  e.muscle =  "back"
  e.muscle =       e.muscle.downcase
  e.equipment_id = Equipment.find_or_create_by_name("Pulldown Machine").id
  e.category =    "muscle"
  e.category =     e.category.downcase
  e.description =  "Adjust the knee pads/seat so the top of your legs are are firmly under the knee pads. Sit upright and hold the Bar Shoulder-width apart, with a reverse grip (palms facing in). Pull the Bar down to your Upper-Chest, keeping your upper body still. As you pull down, think of squeezing the bottom of your shoulder blades together. Pause briefly just below your chin and slowly return the bar to the starting position."
  e.tips =         "Perform the exercise slowly and under complete control, eliminate as much momentum as possible. Keep your Shoulders back and your vision forwards."
  count += 1 if e.save!

  


  e = Exercise.find_or_create_by_name("Close Grip Pulldown")
  e.muscle =  "back"
  e.muscle =       e.muscle.downcase
  e.equipment_id = Equipment.find_or_create_by_name("Pulldown Machine").id
  e.category =    "muscle"
  e.category =     e.category.downcase
  e.description =  "Attach a close grip handle to the Lat Pull Down machine. Adjust the knee pads/seat so the top of your legs are firmly under the knee pads. Grasp the handles with your palms facing each other. Sit upright and pull the handle to your Upper-Chest, keeping your upper body still. Pause briefly and slowly return the handle back up to the starting position."
  e.tips =         "Perform the exercise slowly and under complete control, eliminate as much momentum as possible. Keep your Shoulders back and your vision forwards."
  count += 1 if e.save!

  


  e = Exercise.find_or_create_by_name("Seated Row (Cable)")
  e.muscle =  "back"
  e.muscle =       e.muscle.downcase
  e.equipment_id = Equipment.find_or_create_by_name("Low Cable Row").id
  e.category =    "muscle"
  e.category =     e.category.downcase
  e.description =  "Sit upright with your feet placed on the pegs or plates provided. Grasp the handle with both hands and pull it towards your torso. Keep your elbows by your sides and squeeze your shoulder blades together as the handle nears your torso. Pause briefly at full contraction and slowly return to the starting position."
  e.tips =         "Keep your chest out and core engaged. Maintain a still torso to eliminate momentum and perform the exercise in a slow and controlled manner. Exhale as you pull the handle into your torso."
  count += 1 if e.save!

  


  e = Exercise.find_or_create_by_name("One Arm Seated Row")
  e.muscle =  "back"
  e.muscle =       e.muscle.downcase
  e.equipment_id = Equipment.find_or_create_by_name("Low Cable Row").id
  e.category =    "muscle"
  e.category =     e.category.downcase
  e.description =  "Sit upright with your feet placed on the pegs or plates provided. Grasp the handle with one hand and pull it towards one side, to the rib cage. Keep the elbow close to your side and squeeze your shoulder blade into your spine near the end of the pull. Pause briefly and slowly return to the starting position."
  e.tips =         "Keep your chest out and core engaged. Maintain a still torso to eliminate momentum and perform the exercise in a slow and controlled manner. Exhale as you pull the handle into your torso."
  count += 1 if e.save!

  


  e = Exercise.find_or_create_by_name("Seated Row (Elastic Band)")
  e.muscle =  "back"
  e.muscle =       e.muscle.downcase
  e.equipment_id = Equipment.find_or_create_by_name("Elastic Band").id
  e.category =    "muscle"
  e.category =     e.category.downcase
  e.description =  "Sit upright with your legs slightly bent and your feet together. Hold the ends of the Elastic Band in each hand and loop the centre of the band around your feet. Adjust the tension of the Elastic Band by making it shorter or longer. This can be done by wrapping it around your hands. Pull the ends of the band to your sides, keeping your hands level with your lower rib cage. Squeeze your shoulder blades together as the ends of the Elastic Band near your torso. Pause briefly and slowly return to the starting position."
  e.tips =         "Keep your chest out and core engaged. Maintain a still torso to eliminate momentum and perform the exercise in a slow and controlled manner. Exhale as you pull the handle into your torso."
  count += 1 if e.save!

  


  e = Exercise.find_or_create_by_name("Seated Row (Wide Bar Grip)")
  e.muscle =  "back"
  e.muscle =       e.muscle.downcase
  e.equipment_id = Equipment.find_or_create_by_name("Low Cable Row").id
  e.category =    "muscle"
  e.category =     e.category.downcase
  e.description =  "Connect a long bar to the seated row apparatus. Sit upright with your feet together on the pegs or plates provided and grasp the Bar with a wide-grip. As you pull the bar into your Lower-Abdomen, squeeze the your shoulder blades together. Pause briefly and then slowly return to the starting position."
  e.tips =         "Keep your chest out and core engaged. Maintain a still torso to eliminate momentum and perform the exercise in a slow and controlled manner. Exhale as you pull the bar into your torso."
  count += 1 if e.save!

  


  e = Exercise.find_or_create_by_name("Dumbbell Prone Row")
  e.muscle =  "back"
  e.muscle =       e.muscle.downcase
  e.equipment_id = Equipment.find_or_create_by_name("Dumbbells").id
  e.category =    "muscle"
  e.category =     e.category.downcase
  e.description =  "Lie face down on a stable Flat Bench. While maintaining good posture i.e. face down and back straight, grasp the two Dumbbells positioned on the floor. Pull them vertically in to your sides and squeeze your shoulder blades together at the top of the movement. Pause briefly and slowly lower the Dumbbells to the start position."
  e.tips =         "Keep your chest out and core engaged. Maintain a still torso to eliminate momentum and perform the exercise in a slow and controlled manner. Exhale as you pull the Dumbbells up to your torso."
  count += 1 if e.save!

  


  e = Exercise.find_or_create_by_name("Barbell Prone Row")
  e.muscle =  "back"
  e.muscle =       e.muscle.downcase
  e.equipment_id = Equipment.find_or_create_by_name("Barbell").id
  e.category =    "muscle"
  e.category =     e.category.downcase
  e.description =  "Lie face down on a stable Flat Bench. While maintaining good posture i.e. face down and back straight, grasp the Barbell from the floor. Pull the Barbell vertically and squeeze the shoulder blades together at the top of the movement. Pause briefly and slowly lower the Barbell to the start position."
  e.tips =         "Keep your chest out and core engaged. Maintain a still torso to eliminate momentum and perform the exercise in a slow and controlled manner. Exhale as you pull the barbell up to your torso."
  count += 1 if e.save!

  


  e = Exercise.find_or_create_by_name("Reverse Grip Bent Over Row")
  e.muscle =  "back"
  e.muscle =       e.muscle.downcase
  e.equipment_id = Equipment.find_or_create_by_name("Barbell").id
  e.category =    "muscle"
  e.category =     e.category.downcase
  e.description =  "Stand over the Barbell with your legs slightly bent and back flat. Squat down and grasp the Barbell with an under hand grip positioned Shoulder-width apart. Pull the Bar towards your Abdomen and squeeze your shoulder blades together at the top of the movement. Pause briefly and slowly lower the Barbell to the start position."
  e.tips =         "Keep your lower back and Abdominal muscles tight to support your torso. Perform the exercise in a controlled manner and exhale as you pull the Barbell upwards."
  count += 1 if e.save!

  


  e = Exercise.find_or_create_by_name("Barbell Bent Over Row")
  e.muscle =  "back"
  e.muscle =       e.muscle.downcase
  e.equipment_id = Equipment.find_or_create_by_name("Barbell").id
  e.category =    "muscle"
  e.category =     e.category.downcase
  e.description =  "Stand over the Barbell with your legs slightly bent and back flat. Squat down and grasp the Barbell with an over hand grip positioned Shoulder-width apart. Pull the Bar towards your Abdomen and squeeze your shoulder blades together at the top of the movement. Pause briefly and slowly lower the Barbell to the start position."
  e.tips =         "Keep your lower back and Abdominal muscles tight to support your torso. Perform the exercise in a controlled manner and exhale as you pull the Barbell upwards."
  count += 1 if e.save!

  


  e = Exercise.find_or_create_by_name("Dumbbell Bent Over Row")
  e.muscle =  "back"
  e.muscle =       e.muscle.downcase
  e.equipment_id = Equipment.find_or_create_by_name("Dumbbells").id
  e.category =    "muscle"
  e.category =     e.category.downcase
  e.description =  "Hold two Dumbbells in front of you with your palms facing inwards. Keep your knees slightly bent and bend over at the waist. Pull the Dumbbells upwards to your Abdomen. At the peak of the movement, squeeze your shoulder blades together. Pause briefly and slowly lower the Dumbbells to the starting position."
  e.tips =         "Keep your lower back and Abdominal muscles tight to support your torso. Perform the exercise in a controlled manner and exhale as you pull the Barbell upwards."
  count += 1 if e.save!

  


  e = Exercise.find_or_create_by_name("Barbell Deadlift")
  e.muscle =  "back"
  e.muscle =       e.muscle.downcase
  e.equipment_id = Equipment.find_or_create_by_name("Barbell").id
  e.category =    "muscle"
  e.category =     e.category.downcase
  e.description =  "Stand close to the bar with your feet Shoulder-width apart. Bend your knees and grip the bar slightly wider than Shoulder-width apart with one palm facing forwards and one palm facing inwards (mixed grip). While maintaining good posture, straighten your legs and stand upright. Slowly lower the Bar to the starting position."
  e.tips =         "Keep your Shoulders back and abdominals engaged at all times. Perform the exercise in a  controlled manner and exhale as you stand upright. Keep your knees tracking over your toes every time you bend your knees and stand upright."
  count += 1 if e.save!

  


  e = Exercise.find_or_create_by_name("Dumbbell Deadlift")
  e.muscle =  "back"
  e.muscle =       e.muscle.downcase
  e.equipment_id = Equipment.find_or_create_by_name("Dumbbells").id
  e.category =    "muscle"
  e.category =     e.category.downcase
  e.description =  "Hold two Dumbbells in front of your feet. Bend your knees and grasp the Dumbbells with an overhand grip. Maintaining good posture, straighten your legs and stand upright. Slowly lower the Dumbbells to the starting position."
  e.tips =         "Keep you Shoulders back and torso tight at all times. Focus on keeping your Chest out and core engaged. Perform the exercise in a  controlled manner. Exhale as you stand upright."
  count += 1 if e.save!

  


  e = Exercise.find_or_create_by_name("Dumbbell Pull Over")
  e.muscle =  "back"
  e.muscle =       e.muscle.downcase
  e.equipment_id = Equipment.find_or_create_by_name("Dumbbells").id
  e.category =    "muscle"
  e.category =     e.category.downcase
  e.description =  "Lie down with only your Upper-back and head in contact with the Bench. Contract your Glutes and push your hips up in line with your torso and knees. Grasp a pre-placed Dumbbell from beside your head and fasten your hands over one end of the Dumbbell i.e. under the inner plates on the handle. Position the Dumbbell over your Chest with softly extended arms. Keeping your arms in this position, slowly lower the weight behind your head towards the ground. Once your upper-arms are in line your torso, slowly pull the Dumbbell back to the start position."
  e.tips =         "Keep your elbows fixed in a slightly bent position. Perform the exercise slowly and stay in a comfortable range of motion i.e. Don’t aim to touch the floor by over extending the shoulders. Perform the exercise in a slow and controlled manner."
  count += 1 if e.save!

  


  e = Exercise.find_or_create_by_name("Good Morning")
  e.muscle =  "back"
  e.muscle =       e.muscle.downcase
  e.equipment_id = Equipment.find_or_create_by_name("Barbell").id
  e.category =    "muscle"
  e.category =     e.category.downcase
  e.description =  "Standing with feet Shoulder-width apart, place a Barbell comfortably on your Upper-back (Trapezius) muscles. While maintaining a neutral curve of your lumbar spine, tip forward from the hips. Slowly lower your upper body while keeping your Chest out and Shoulders back. Lower your torso until you feel a light stretch in your Hamstrings. Pause briefly and slowly return back up to the starting position."
  e.tips =         "Bend at the hips, not at the lower spine. Keep your back flat throughout the whole movement. Use a light weight if you are new to this exercise. Perform this exercise in a slow and controlled manner."
  count += 1 if e.save!

  


  e = Exercise.find_or_create_by_name("One Arm Row")
  e.muscle =  "back"
  e.muscle =       e.muscle.downcase
  e.equipment_id = Equipment.find_or_create_by_name("Dumbbells").id
  e.category =    "muscle"
  e.category =     e.category.downcase
  e.description =  "Hold a Dumbbell in one hand and place your opposite  knee and hand on a flat bench. Bend at the waist until your back is parallel to the floor. Pull the Dumbbell up towards your Rib-cage, simultaneously squeezing the shoulder blade in towards your spine. Pause briefly and then slowly lower the Dumbbell towards the ground."
  e.tips =         "Exhale as you pull the Dumbbell to the Chest, inhale on the down phase. Keep the head up and your vision directly downwards throughout the exercise."
  count += 1 if e.save!

  


  e = Exercise.find_or_create_by_name("Swiss Ball One Arm Row")
  e.muscle =  "back"
  e.muscle =       e.muscle.downcase
  e.equipment_id = Equipment.find_or_create_by_name("Dumbbells").id
  e.category =    "muscle"
  e.category =     e.category.downcase
  e.description =  "Hold a Dumbbell in one hand and place your opposite  knee and hand on a Swiss Ball. Bend at the waist until your back is parallel to the floor. Pull the Dumbbell up towards your Rib-cage, simultaneously squeezing the shoulder blade in towards your spine. Pause briefly and then slowly lower the Dumbbell towards the ground."
  e.tips =         "Exhale as you pull the Dumbbell to the Chest, inhale on the down phase. Keep the head up and your vision directly downwards throughout the exercise."
  count += 1 if e.save!

  


  e = Exercise.find_or_create_by_name("back Extension (Swiss Ball)")
  e.muscle =  "back"
  e.muscle =       e.muscle.downcase
  e.equipment_id = Equipment.find_or_create_by_name("Swiss Ball").id
  e.category =    "muscle"
  e.category =     e.category.downcase
  e.description =  "Position your feet Shoulder-width apart as you lie face down over the top of the Swiss Ball. Find a balance point where you can take your hands away from the Swiss Ball to be by your sides. Turn your palms towards the ceiling and squeeze your Shoulder-blades together. Extend your spine upwards and raise your Chest as high as possible. Pause briefly and return to the starting position."
  e.tips =         "Keep you vision downwards and avoid shrugging the Shoulders. If you require more stability, widen your foot stance. Exhale on the up phase and inhale as you lower your torso back to the Swiss Ball."
  count += 1 if e.save!

  


  e = Exercise.find_or_create_by_name("back Extension (Roman Chair)")
  e.muscle =  "back"
  e.muscle =       e.muscle.downcase
  e.equipment_id = Equipment.find_or_create_by_name("Roman Chair").id
  e.category =    "muscle"
  e.category =     e.category.downcase
  e.description =  "Adjust the pad height so that the top of the pad is positioned just below your front hip bones. Lock you heels under the pads provided and take your bodyweight into your hips. Lower your torso as far you comfortably can, focusing on maintaining a straight spine and neutral head position. Contract your Lower-back muscles and buttocks to lift your torso until it is aligned with your lower body. Pause briefly and slowly return to the starting position."
  e.tips =         "Avoid excessively arching your Lower-back. Maintain good posture and perform the exercise slow and controlled manner."
  count += 1 if e.save!

  


  e = Exercise.find_or_create_by_name("Superman")
  e.muscle =  "back"
  e.muscle =       e.muscle.downcase
  e.equipment_id = Equipment.find_or_create_by_name("").id
  e.category =    "muscle"
  e.category =     e.category.downcase
  e.description =  "Lie face down on the ground and extend your arms past your head. Begin to activate your Lower-back by simultaneously raising your arms and legs off the ground. Pause briefly and slowly return to the starting position."
  e.tips =         "Keep your neck in line with your spine throughout the exercise. Keep your vision downwards and perform the exercise slowly and in a controlled manner. Exhale as you extend your arms and legs"
  count += 1 if e.save!

  


  e = Exercise.find_or_create_by_name("Bent Over Row (Long Bar)")
  e.muscle =  "back"
  e.muscle =       e.muscle.downcase
  e.equipment_id = Equipment.find_or_create_by_name("Barbell").id
  e.category =    "muscle"
  e.category =     e.category.downcase
  e.description =  "Load your desired weight plates on one end of an Olympic Bar. Place the other end in the corner of two walls. Straddle the Bar with your feet Shoulder-width apart and then squat down to pick it up with both hands. Set in a half squat, pull the bar up towards your Chest. Keeping your elbows close to your torso, squeeze your Shoulder-blades together at the peak of the pulling movement. Slowly lower the bar back to starting position."
  e.tips =         "Perform this exercise under strict form. Avoid excessive leaning forward and lower the weight with control. Keep your core engaged and maintain a straight spine throughout the movement. Exhale as you pull the bar towards your torso."
  count += 1 if e.save!

  


  e = Exercise.find_or_create_by_name("Inverted Row")
  e.muscle =  "back"
  e.muscle =       e.muscle.downcase
  e.equipment_id = Equipment.find_or_create_by_name("Smith Machine").id
  e.category =    "muscle"
  e.category =     e.category.downcase
  e.description =  "Position the Bar at hip height on the Smith Machine. Grasp the Bar Shoulder-width apart and position yourself underneath the Bar in a vertically hanging position. Position your feet Shoulder-width apart with your body as horizontal as possible. Pull your torso up towards the bar and squeeze your Shoulder-blades at the peak of the movement. Slowly lower your torso to the starting position."
  e.tips =         "Perform this exercise under strict form. Avoid leading the movement with your hips and straining the neck to reach the bar above. Exhale as you pull your torso upwards and decrease the intensity of the exercise by positioning your body more vertically."
  count += 1 if e.save!

  


  e = Exercise.find_or_create_by_name("Overhead Slam")
  e.muscle =  "back"
  e.muscle =       e.muscle.downcase
  e.equipment_id = Equipment.find_or_create_by_name("Medicine Ball").id
  e.category =    "muscle"
  e.category =     e.category.downcase
  e.description =  "Stand with your feet Shoulder-width apart with your knees slightly bent. Hold a Medicine Ball behind your head with your elbows pointing forwards. Prop up onto your toes and in one explosive movement, throw the Medicine Ball directly downwards to the ground. Pick up the Medicine Ball with bent knees and  return to the starting position."
  e.tips =         "Maintain an engaged core for stability and back support. Preferably use a Medicine Ball that is designed for slamming as they have minimal return bounce. Exhale as your throw the Medicine Ball downwards."
  count += 1 if e.save!

  


  e = Exercise.find_or_create_by_name("Straight Arm Pulldown")
  e.muscle =  "back"
  e.muscle =       e.muscle.downcase
  e.equipment_id = Equipment.find_or_create_by_name("Cable Machine").id
  e.category =    "muscle"
  e.category =     e.category.downcase
  e.description =  "Set a Horizontal Bar to the top rung of the Cable Machine. Commence by grasping the Bar with your palms facing downwards., Stand in an upright position with your Shoulders back and your knees slightly bent. With fully extended arms,  pull the bar downwards until your arms are by your sides. Pause briefly and slowly return the Bar to Shoulder height and  repeat."
  e.tips =         "Perform this exercise under strict form. Avoid using momentum to move the weight and engage the core to maintain good posture. Exhale as you pull the bar downwards."
  count += 1 if e.save!

  


  e = Exercise.find_or_create_by_name("T-Bar Row")
  e.muscle =  "back"
  e.muscle =       e.muscle.downcase
  e.equipment_id = Equipment.find_or_create_by_name("T-Bar").id
  e.category =    "muscle"
  e.category =     e.category.downcase
  e.description =  "Stand on the foot plates provided on either side of the T-Bar apparatus. Grasp the handles of the T-Bar row and pull the them towards your Chest. Squeeze your Shoulder blades together at the top of the movement.  Pause briefly and slowly release the bar back to the start position."
  e.tips =         "Maintain good posture and keep your head in a neutral position as you perform this exercise. Exhale as you pull the bar upwards."
  count += 1 if e.save!

  


  e = Exercise.find_or_create_by_name("Underhand Inverted Row")
  e.muscle =  "back"
  e.muscle =       e.muscle.downcase
  e.equipment_id = Equipment.find_or_create_by_name("Smith Machine").id
  e.category =    "muscle"
  e.category =     e.category.downcase
  e.description =  "Position the Bar at hip height on the Smith Machine. Grasp the Bar Shoulder-width apart with an under hand grip. Position yourself underneath the Bar in a vertically hanging position. Position your feet Shoulder-width apart with your body as horizontal as possible. Pull your torso up towards the bar and squeeze your Shoulder-blades at the peak of the movement. Slowly lower your torso to the starting position."
  e.tips =         "Perform this exercise under strict form. Avoid leading the movement with your hips and straining the neck to reach the bar above. Exhale as you pull your torso upwards and decrease the intensity of the exercise by positioning your body more vertically."
  count += 1 if e.save!

  


  e = Exercise.find_or_create_by_name("Inverted Row With Elevation")
  e.muscle =  "back"
  e.muscle =       e.muscle.downcase
  e.equipment_id = Equipment.find_or_create_by_name("Smith Machine").id
  e.category =    "muscle"
  e.category =     e.category.downcase
  e.description =  "Lay down on the ground face up within the Smith Machine and place your feet up on to a Bench or Step. Position the Bar at fully extended arms length. Using an over-hand grip, pull your torso up towards the bar whilst keeping your body completely straight and rigid. Slowly lower your body down to the starting position."
  e.tips =         "Perform this exercise under strict form. Avoid leading the movement with your hips and straining the neck to reach the Bar above. Exhale as you pull your torso upwards. Decrease the intensity of the exercise by positioning your body more vertically."
  count += 1 if e.save!

  


  e = Exercise.find_or_create_by_name("Reverse Grip Chin Up")
  e.muscle =  "back"
  e.muscle =       e.muscle.downcase
  e.equipment_id = Equipment.find_or_create_by_name("Pull Up Bar").id
  e.category =    "muscle"
  e.category =     e.category.downcase
  e.description =  "Begin from a hanging position on a fixed Pull Up Bar with your hands in a reverse (palms facing you) grip, slightly wider than Shoulder-width. Pull yourself upwards until your chin is above the Bar. Pause briefly, then slowly lower yourself down to the start position."
  e.tips =         "Minimise swinging in the body or jerking upwards. Exhale as you pull up and perform the exercise in a slow and controlled manner, inhale as you lower yourself. Keep your vision forwards and keep the head in a neutral position."
  count += 1 if e.save!

  


  e = Exercise.find_or_create_by_name("Barbell Shrug")
  e.muscle =  "back"
  e.muscle =       e.muscle.downcase
  e.equipment_id = Equipment.find_or_create_by_name("Barbell").id
  e.category =    "muscle"
  e.category =     e.category.downcase
  e.description =  "Stand with feet Shoulder-width apart, holding a Barbell at your hips with an overhand grip (palms facing in). Raise your Shoulders as high as possible to contract the Upper-back muscles (Trapezius). Pause briefly and slowly lower shoulders back down to starting position."
  e.tips =         "Avoid using momentum to move the weight and maintain good posture to minimise risk of injury. Complete in a slow and controlled manner. Exhale as you shrug your shoulders."
  count += 1 if e.save!

  


  e = Exercise.find_or_create_by_name("Dumbbell Shrug")
  e.muscle =  "back"
  e.muscle =       e.muscle.downcase
  e.equipment_id = Equipment.find_or_create_by_name("Dumbbell").id
  e.category =    "muscle"
  e.category =     e.category.downcase
  e.description =  "Stand with feet Shoulder-width apart, holding two Dumbbells at your hips with an overhand grip (palms facing in). Raise your Shoulders as high as possible to contract the Upper-back muscles (Trapezius). Pause briefly and slowly lower Shoulders back down to starting position."
  e.tips =         "Avoid using momentum to move the weight and maintain good posture to minimise risk of injury. Complete in a slow and controlled manner. Exhale as you shrug your Shoulders."
  count += 1 if e.save!

  


  e = Exercise.find_or_create_by_name("Assisted Chin Up")
  e.muscle =  "back"
  e.muscle =       e.muscle.downcase
  e.equipment_id = Equipment.find_or_create_by_name("Machine").id
  e.category =    "muscle"
  e.category =     e.category.downcase
  e.description =  "Stand on the footplates provided and grasp the handles above your head with a wide-grip. Once holding on tight, place one knee at a time on the cushion provided and lower yourself to the starting position. From full extension of the arms, pull yourself upwards until your chin is above the Bar. Pause briefly and slowly lower yourself down to the starting position."
  e.tips =         "Minimise swinging in the body or jerking upwards. Exhale as you pull up and perform the exercise in a slow and controlled manner, inhale as you lower yourself. Keep your vision forwards and keep the head in a neutral position."
  count += 1 if e.save!

  


  e = Exercise.find_or_create_by_name("Assisted Reverse Grip Chin Up")
  e.muscle =  "back"
  e.muscle =       e.muscle.downcase
  e.equipment_id = Equipment.find_or_create_by_name("Machine").id
  e.category =    "muscle"
  e.category =     e.category.downcase
  e.description =  "Stand on the footplates provided and grasp the handles above your head with a reverse grip. Once holding on tight, place one knee at a time on the cushion provided and lower yourself to the starting position. From full extension of the arms, pull yourself upwards until your chin is above the bar. Pause briefly and slowly lower yourself down to starting position."
  e.tips =         "Minimise swinging in the body or jerking upwards. Exhale as you pull up and perform the exercise in a slow and controlled manner, inhale as you lower yourself. Keep your vision forwards and keep the head in a neutral position."
  count += 1 if e.save!

  


  e = Exercise.find_or_create_by_name("back Extension (Swiss Ball)")
  e.muscle =  "back"
  e.muscle =       e.muscle.downcase
  e.equipment_id = Equipment.find_or_create_by_name("Swiss Ball").id
  e.category =    "muscle"
  e.category =     e.category.downcase
  e.description =  "Position yourself over the top of the Swiss Ball face-down with you body weight primarily in the legs and feet. Raise your Chest off the ball to engage your Lower-back and Glutes. Pause briefly and return to the start position."
  e.tips =         "Difficulty of the exercise can be changed by the position of the arms. For easy, have your hands on the Swiss Ball. For moderate, keep your arms cross over your Chest. For difficult, place  your hands behind your head."
  count += 1 if e.save!

  


  e = Exercise.find_or_create_by_name("Reverse back Extension  (Swiss Ball)")
  e.muscle =  "back"
  e.muscle =       e.muscle.downcase
  e.equipment_id = Equipment.find_or_create_by_name("Swiss Ball").id
  e.category =    "muscle"
  e.category =     e.category.downcase
  e.description =  "Put your hands on the floor with straight arms and position your hips over the top of the centre of the Swiss Ball. Take all your weight in your arms to enable your feet to rise off the floor. Raise your extended legs to horizontally alignment with the torso and then slowly return them to the start position."
  e.tips =         "This exercise should be felt in the lumbar spine (Erector Spinae) and the Glutes. To focus more on your Glutes, turn the feet outwards throughout the entire movement. Look down and perform the exercise slowly and in a controlled manner."
  count += 1 if e.save!

  


  e = Exercise.find_or_create_by_name("Side Bends")
  e.muscle =  "back"
  e.muscle =       e.muscle.downcase
  e.equipment_id = Equipment.find_or_create_by_name("").id
  e.category =    "mobility"
  e.category =     e.category.downcase
  e.description =  "Stand upright with your Chest out and Shoulders back. Allow your arms to hang down by your sides. Maintain this posture and bend directly sideways to reach with one arm towards the ground. Pause briefly and slowly return to upright position. Repeat on the other side."
  e.tips =         "Perform this exercise in a slow and controlled manner. Look straight ahead and try not to over stretch. Avoid leaning forwards or backwards in this mobility exercise."
  count += 1 if e.save!

  


  e = Exercise.find_or_create_by_name("Torso Twists")
  e.muscle =  "back"
  e.muscle =       e.muscle.downcase
  e.equipment_id = Equipment.find_or_create_by_name("").id
  e.category =    "mobility"
  e.category =     e.category.downcase
  e.description =  "Stand upright with your Chest out and Shoulders back. Maintain good posture and rotate your torso to one side as far as comfortably as possible. Pause briefly and return to your start position. Repeat towards the other side."
  e.tips =         "Perform this mobility exercise in a controlled manner. Rotations to each side can occur repeatedly without pausing at the start position."
  count += 1 if e.save!

  


  e = Exercise.find_or_create_by_name("Hip Circles")
  e.muscle =  "back"
  e.muscle =       e.muscle.downcase
  e.equipment_id = Equipment.find_or_create_by_name("").id
  e.category =    "mobility"
  e.category =     e.category.downcase
  e.description =  "Stand upright with your Chest out and Shoulders back and place your hands on your hips. Maintain good posture while you smoothly push your hips forwards, then to one side, backwards, to the opposite side and finally forwards again to complete the circular movement. Ensure the circles made with your hips is fluid and focus more on control rather than speed. Perform desired repetitions in one direction and then repeat in the opposite direction."
  e.tips =         "Perform this exercise in a slow and controlled manner. Look straight ahead and try not to over stretch in any direction. Avoid leaning forwards or backwards in this mobility exercise."
  count += 1 if e.save!

  


  e = Exercise.find_or_create_by_name("Overhand Jumping Pull Up")
  e.muscle =  "back"
  e.muscle =       e.muscle.downcase
  e.equipment_id = Equipment.find_or_create_by_name("Pull Up Bar").id
  e.category =    "crossfit"
  e.category =     e.category.downcase
  e.description =  "Stand (with or without a box) underneath a Chin Up Bar, so you can reach it with extended arms. Grasp the Bar slightly wider than your Shoulders and use an Over-hand grip (palms facing forward). Using the momentum of a jump, pull yourself upwards until your Chin is higher than the Bar. Pause briefly and slowly return to the start position."
  e.tips =         "Ensure your arms and Shoulders do not over extend on the down phase. Keep head in a neutral position by maintaining your vision forwards and avoid tilting your head backwards to lead with the chin."
  count += 1 if e.save!

  


  e = Exercise.find_or_create_by_name("Underhand Jumping Pull Up")
  e.muscle =  "back"
  e.muscle =       e.muscle.downcase
  e.equipment_id = Equipment.find_or_create_by_name("Pull Up Bar").id
  e.category =    "crossfit"
  e.category =     e.category.downcase
  e.description =  "Stand (with or without a box) underneath a Chin Up Bar, so you can reach it with extended arms. Grasp the Bar slightly wider than your Shoulders and use an Under-hand grip (palms facing inwards). Using the momentum of a jump, pull yourself upwards until your Chin is higher than the Bar. Pause briefly and slowly return to the start position."
  e.tips =         "Ensure your arms and Shoulders do not over extend on the down phase. Keep head in a neutral position by maintaining your vision forwards and avoid tilting your head backwards to lead with the chin."
  count += 1 if e.save!

  


  e = Exercise.find_or_create_by_name("back Extension (GHD)")
  e.muscle =  "back"
  e.muscle =       e.muscle.downcase
  e.equipment_id = Equipment.find_or_create_by_name("Machine").id
  e.category =    "crossfit"
  e.category =     e.category.downcase
  e.description =  "Adjust the height of the back Extension Pad so that the top of the pad is just below your front hip bones. While maintaining good posture, lower your torso as far you comfortably can. Contract your Lower-back and Glutes to lift your torso upwards to alignment with the legs."
  e.tips =         "Avoid excessively arching your Lower-back. Keep your head in a neutral position by maintaining your vision downwards."
  count += 1 if e.save!

  


  e = Exercise.find_or_create_by_name("Lower back Twist")
  e.muscle =  "back"
  e.muscle =       e.muscle.downcase
  e.equipment_id = Equipment.find_or_create_by_name("").id
  e.category =    "stretch"
  e.category =     e.category.downcase
  e.description =  "Lie down on the ground face up. Raise a bent knee towards your Chest and grasp it with your opposite hand. Pull the knee across your body towards the floor whilst maintaining your Shoulders flat on the floor."
  e.tips =         "Ensure that you do this stretch gently and release it slowly to avoid injury. As with all stretching, you should feel a light stretch not pain or discomfort."
  count += 1 if e.save!

  


  e = Exercise.find_or_create_by_name("Kneeling Lat stretch")
  e.muscle =  "back"
  e.muscle =       e.muscle.downcase
  e.equipment_id = Equipment.find_or_create_by_name("").id
  e.category =    "stretch"
  e.category =     e.category.downcase
  e.description =  "Kneel down on the ground approximately one metre away from a Bench or Box. Extend both arms forward and place both hands on the Bench a few inches apart. Whilst maintain straight arms, gently sink your Chest towards the ground. This stretch should be felt in the muscles on the side of the torso particularly under the armpits and across the Upper-Middle back."
  e.tips =         "Ensure that you do this stretch gently and release it slowly to avoid injury. As with all stretching, you should feel a light stretch not pain or discomfort."
  count += 1 if e.save!

  


  e = Exercise.find_or_create_by_name("Standing Upper back stretch")
  e.muscle =  "back"
  e.muscle =       e.muscle.downcase
  e.equipment_id = Equipment.find_or_create_by_name("").id
  e.category =    "stretch"
  e.category =     e.category.downcase
  e.description =  "Stand upright with feet Shoulder-width apart. Clasp your hands together and interlock your fingers. Raise your extended arms to Shoulder-height and proceed to turn your palms away from you. Reach forwards and separate the Shoulders blades. The stretch should be felt in the Upper-back between the Shoulder blades."
  e.tips =         "Ensure that you do this stretch gently and release it slowly to avoid injury. As with all stretching, you should feel a light stretch not pain or discomfort."
  count += 1 if e.save!

  


  e = Exercise.find_or_create_by_name("Cat back")
  e.muscle =  "back"
  e.muscle =       e.muscle.downcase
  e.equipment_id = Equipment.find_or_create_by_name("").id
  e.category =    "stretch"
  e.category =     e.category.downcase
  e.description =  "Begin down on the ground on all fours with your hands aligned directly under Shoulders and you knees directly under your hips. As your starting position, engage your Abdominals and maintain a natural curved lumbar spine. Draw your Abdominals in towards your spine and round your back up towards the ceiling. Relax your Neck and allow your head to drop between your arms towards the ground."
  e.tips =         "Perform this exercise in a slow and controlled manner. With all stretching, you should feel a light stretch not pain or discomfort."
  count += 1 if e.save!

  


  e = Exercise.find_or_create_by_name("QL Side stretch")
  e.muscle =  "back"
  e.muscle =       e.muscle.downcase
  e.equipment_id = Equipment.find_or_create_by_name("").id
  e.category =    "stretch"
  e.category =     e.category.downcase
  e.description =  "Sit down on the floor with your right leg straight out in front and the left leg bent outwards. While keeping your torso upright, grasp the left knee with your right hand to rotate your torso towards the left. Proceed to reach with your left arm over your head, towards the right leg to achieve a stretch in the left hand side of your Lower-back. Hold and repeat on the opposite side."
  e.tips =         "Perform this exercise in a slow and controlled manner. With all stretching, you should feel a light stretch not pain or discomfort. Avoid sudden release of this stretch or over stretching."
  count += 1 if e.save!

  


  e = Exercise.find_or_create_by_name("Hip Extension")
  e.muscle =  "back"
  e.muscle =       e.muscle.downcase
  e.equipment_id = Equipment.find_or_create_by_name("").id
  e.category =    "rehab"
  e.category =     e.category.downcase
  e.description =  "Lie face up on the floor with your arms extended out to the side with your palms face down. Have your feet placed Shoulder-width apart and Knees bent at 90 degrees. Raise your pelvis as high as possible and gently squeeze your Glutes at the peak contraction. Slowly return to starting position."
  e.tips =         "Relax the torso and Neck as much as possible. This exercise is about control not speed. Perform it slowly through your full range of movement."
  count += 1 if e.save!

  


  e = Exercise.find_or_create_by_name("Alternating Limb Raise")
  e.muscle =  "back"
  e.muscle =       e.muscle.downcase
  e.equipment_id = Equipment.find_or_create_by_name("").id
  e.category =    "rehab"
  e.category =     e.category.downcase
  e.description =  "Set up on all fours, with your hands positioned directly under your Shoulders and your knees directly under your hips. Engage your core and raise one extended arm up to the height of your Shoulders. Simultaneously extend the opposite leg to the height of your hips. Pause briefly and slowly return to your starting position. Repeat with your opposite limbs and continue to alternate repetitions"
  e.tips =         "Perform this exercise in a slow and controlled manner. Maintain good posture and head position by maintaining your vision downwards. Exhale as you extend your limbs and inhale as you return to your starting position."
  count += 1 if e.save!

  


  e = Exercise.find_or_create_by_name("Superman")
  e.muscle =  "back"
  e.muscle =       e.muscle.downcase
  e.equipment_id = Equipment.find_or_create_by_name("").id
  e.category =    "rehab"
  e.category =     e.category.downcase
  e.description =  "Begin this exercise lying face-down with your arms extended past your head. Keeping your knees and elbows straight, slowly lift both arms and legs to feel a contraction in your Buttocks and Lower-back. Pause briefly and slowly return to the starting position."
  e.tips =         "Perform the movement in a slow and controlled manner. Exhale as you extend your limbs and inhale as you return to your starting position. Keep your vision downwards."
  count += 1 if e.save!

  


  e = Exercise.find_or_create_by_name("Reverse back Extension")
  e.muscle =  "back"
  e.muscle =       e.muscle.downcase
  e.equipment_id = Equipment.find_or_create_by_name("Swiss ball").id
  e.category =    "rehab"
  e.category =     e.category.downcase
  e.description =  "Place your hands on the floor with straight arms and position your hips over the top of the centre of the Swiss Ball. Take all your weight in your arms to enable your feet to rise slightly off the floor. Raise your fully extended legs to horizontally align with the torso and then slowly return them to the start position."
  e.tips =         "This exercise should be felt in the Lumbar Spine and the Buttocks. To gain additional use of the Buttocks, point your toes outwards throughout the entire movement. Look down and perform the exercise slowly and in a controlled manner."
  count += 1 if e.save!

  


  e = Exercise.find_or_create_by_name("back Row")
  e.muscle =  "back"
  e.muscle =       e.muscle.downcase
  e.equipment_id = Equipment.find_or_create_by_name("TRX").id
  e.category =    "muscle"
  e.category =     e.category.downcase
  e.description =  "Stand facing the TRX in a split stance (one foot in front of the other) and hold the TRX handles with both hands facing inwards. Engage your core and slowly lean backwards to start the exercise. Fully extend your arms so that your body weight should be felt in the back-leg. Pull your body upwards until your Chest is at the height of the TRX handles. Squeeze your Shoulder blades together. Pause briefly and return back to start position."
  e.tips =         "Perform this exercise in a slow and controlled manner. Exhale as your pull yourself up, inhale on your release downwards. Keep your head in a neutral position with your eyes focusing on the anchor point of the TRX. Increase the intensity of this exercise by positioning your body in a greater horizontal position."
  count += 1 if e.save!

  


  e = Exercise.find_or_create_by_name("Single Arm Row")
  e.muscle =  "back"
  e.muscle =       e.muscle.downcase
  e.equipment_id = Equipment.find_or_create_by_name("TRX").id
  e.category =    "muscle"
  e.category =     e.category.downcase
  e.description =  "Stand facing the TRX in a split stance (one foot in front of other) and hold the TRX handles in one hand facing inwards. Keep your other arm bent and close to your Chest. Engage your core and slowly lean backwards to commence the exercise. Reach with your free arm towards the ground and then begin to pull your body upwards. Track your elbows close to your body and reach up to the anchor of the TRX with the free arm. Pause briefly at peak contraction and return back to the start position of reaching for the ground."
  e.tips =         "Perform this exercise in a slow and controlled manner. Exhale as your pull yourself upwards and inhale on the down phase. Keep your head in a neutral position with eyes focusing on the anchor point of the TRX. The intensity of this exercise will increase the more horizontal the body is at the start."
  count += 1 if e.save!

  


  e = Exercise.find_or_create_by_name("Bent Over Rows")
  e.muscle =  "back"
  e.muscle =       e.muscle.downcase
  e.equipment_id = Equipment.find_or_create_by_name("Kettlebell").id
  e.category =    "muscle"
  e.category =     e.category.downcase
  e.description =  "Hold two Kettlebells in front of you with your palms facing inwards. While maintaining good posture, bend over at the waist. Keep your knees slightly bent and your back flat. Pull the Kettlebells upwards to the rib cage and squeeze your Shoulder blades together in the process. Lower the Kettlebells slowly to the start position and repeat."
  e.tips =         "Start with a light weight  to ensure the movement is done under complete control. Increase the weight as your technique and strength improves. Keep your knees slightly bent and engage your core. Maintain your head position in line with the spine and avoid looking up or forwards."
  count += 1 if e.save!

  


  e = Exercise.find_or_create_by_name("back stretch")
  e.muscle =  "back"
  e.muscle =       e.muscle.downcase
  e.equipment_id = Equipment.find_or_create_by_name("Foam Roller").id
  e.category =    "stretch"
  e.category =     e.category.downcase
  e.description =  "Lie back on the Foam Roller which is positioned to run along your spine. Rest your head at one end and your buttocks down the other. Bend your knees to 90 degrees and position your feet on the ground, Shoulder-width apart. Straighten your arms vertically and then progressively move them past your head and towards the ground. Open your Chest to enable the arms to sink further towards the ground."
  e.tips =         "Perform this movement slowly. Focus on breathing and relaxing into a long and deep stretch."
  count += 1 if e.save!

  


  e = Exercise.find_or_create_by_name("Thoracic mobility")
  e.muscle =  "back"
  e.muscle =       e.muscle.downcase
  e.equipment_id = Equipment.find_or_create_by_name("Foam Roller").id
  e.category =    "mobility"
  e.category =     e.category.downcase
  e.description =  "Lie down face up on the Foam Roller which is positioned to run across your back. Keep your hips in the air to maintain pressure on the spine and to increase your control of the Roller. Place your hands by your side for stability. Slowly extend your legs to gradually move the roller from the top of the Shoulders down to a point just before your lumbar curve starts. Pause briefly and roll back up to the starting position."
  e.tips =         "Perform this roll slowly, taking 10-20 seconds to complete a directional roll. This exercise is great for increasing the mobility of the thoracic vertebrae. Keep your vision upwards."
  count += 1 if e.save!

  


  e = Exercise.find_or_create_by_name("Seated Row (Resistance Band)")
  e.muscle =  "back"
  e.muscle =       e.muscle.downcase
  e.equipment_id = Equipment.find_or_create_by_name("Resistance Band").id
  e.category =    "muscle"
  e.category =     e.category.downcase
  e.description =  "Sit down on the ground with your Torso upright and your legs extended out in front of you. Grasp the ends of the Resistance Band and loop the middle around the balls of the foot. Shorten the Resistance Band by wrapping around your hands if required. Proceed to pull the ends in towards your Torso until the ends are at your rib cage. Squeeze of your Shoulder blades together in the process. Pause briefly and slowly return to the starting position."
  e.tips =         "Maintain upright posture at all times. Perform the exercise slowly and in a controlled manner. Avoid shrugging your Shoulders during this movement and minimise any momentum by leaning backwards. Exhale as you pull inwards."
  count += 1 if e.save!

  


  e = Exercise.find_or_create_by_name("Lat Pulldown (Resistance Band)")
  e.muscle =  "back"
  e.muscle =       e.muscle.downcase
  e.equipment_id = Equipment.find_or_create_by_name("Resistance Band").id
  e.category =    "muscle"
  e.category =     e.category.downcase
  e.description =  "Loop the Resistance Band over a horizontal structure above your head. Once securely looped, grasp the ends of the band and sit on a Chair or kneel down on the ground. Re-grasp the Resistance Band until your arms are extended above your head. Turn your palms forward and point your elbows outwards. Pull the Resistance Band down to Shoulder-height. Pause briefly and slowly return to start position."
  e.tips =         "Maintain upright posture and engage the Core at all times. Avoid shrugging the Shoulders during this movement and minimise any assistance from leaning forwards or backwards. Exhale as you pull downwards and inhale as you return to starting position."
  count += 1 if e.save!

  p "** ------------- #{count} BACK EXERCISES UPDATED ------------- **"
end