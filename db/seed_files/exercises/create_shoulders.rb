#!/bin/env ruby 
# encoding: utf-8

def create_shoulders

  count = 0

  e = Exercise.find_or_create_by_name("Dumbbell Shoulder Press")
  e.muscle =  "shoulders"
  e.muscle =    e.muscle.downcase
  e.equipment_id = Equipment.find_or_create_by_name("Dumbbells").id
  e.category =   "muscle"
  e.category =   e.category.downcase
  e.description =  "This exercise may be performed standing or sitting. Raise the Dumbbells to your shoulders. Hold the Dumbbells so that your palms are facing forward. Push the Dumbbells above your head until your arms are straight and the Dumbbells are nearly touching. Slowly lower the Dumbbells to starting position."
  e.tips =         "Exhale as you raise the Dumbbells. Perform the exercise in a slow and controlled manner and avoid locking out your elbow joints. Engage your core for stability and maintain your vision forwards."
  count += 1 if e.save!

        


  e = Exercise.find_or_create_by_name("Barbell Shoulder Press")
  e.muscle =  "shoulders"
  e.muscle =    e.muscle.downcase
  e.equipment_id = Equipment.find_or_create_by_name("Barbell").id
  e.category =   "muscle"
  e.category =   e.category.downcase
  e.description =  "This exercise may be performed standing or sitting. Raise the Barbell from the floor or supports and position it in front of your shoulders. Push the Barbell directly overhead. At full extension, your arms should be in line with your ears. Pause briefly and slowly lower the Barbell to starting position."
  e.tips =         "Exhale as you raise the Barbell. Perform the exercise in a slow and controlled manner and avoid locking out your elbow joints. Engage your core for stability and maintain your vision forwards."
  count += 1 if e.save!

        


  e = Exercise.find_or_create_by_name("Swiss Ball Shoulder Press")
  e.muscle =  "shoulders"
  e.muscle =    e.muscle.downcase
  e.equipment_id = Equipment.find_or_create_by_name("Dumbbells").id
  e.category =   "muscle"
  e.category =   e.category.downcase
  e.description =  "Sit upright on a Swiss Ball and place your feet Shoulder-width apart. Begin by holding the Dumbbells at ear level, with your palms facing forward. Push the Dumbbells upwards and over your head until your arms are straight. Lower the Dumbbells back towards your shoulders and repeat."
  e.tips =         "Keep your elbows soft at the top of the movement. Avoid leaning back and arching your Lower-Back. Maintain good posture and keep your chin in a neutral position with your vision directly forwards. Exhale as you push the Dumbbells upwards."
  count += 1 if e.save!

        


  e = Exercise.find_or_create_by_name("Barbell Upright Row")
  e.muscle =  "shoulders"
  e.muscle =    e.muscle.downcase
  e.equipment_id = Equipment.find_or_create_by_name("Barbell").id
  e.category =   "muscle"
  e.category =   e.category.downcase
  e.description =  "Grasp the Barbell with your hands hip-width apart. Stand upright and pull the Barbell upwards to slightly below your collar bones. Lead with your elbows. Gradually lower the Barbell to the starting position."
  e.tips =         "Perform this exercise in a slow and controlled manner. Keep your feet Shoulder-width apart with the knees slightly bent. Avoid pulling the Bar too high as this may irritate the wrist or Shoulder joints."
  count += 1 if e.save!

        


  e = Exercise.find_or_create_by_name("Dumbbell Upright Row")
  e.muscle =  "shoulders"
  e.muscle =    e.muscle.downcase
  e.equipment_id = Equipment.find_or_create_by_name("Dumbbell").id
  e.category =   "muscle"
  e.category =   e.category.downcase
  e.description =  "Grasp the Dumbbell with your hands hip-width apart. Stand upright and pull both Dumbbells upwards to slightly below your collar bones. Lead with your elbows. Gradually lower the Barbell to the starting position."
  e.tips =         "Perform this exercise in a slow and controlled manner. Keep your feet Shoulder-width apart with your knees slightly bent. Avoid pulling the Dumbbells too high as this may irritate the wrist or Shoulder joints."
  count += 1 if e.save!

        


  e = Exercise.find_or_create_by_name("Dumbbell Side Raise")
  e.muscle =  "shoulders"
  e.muscle =    e.muscle.downcase
  e.equipment_id = Equipment.find_or_create_by_name("Dumbbells").id
  e.category =   "muscle"
  e.category =   e.category.downcase
  e.description =  "From either a standing or seated position, hold two Dumbbells at your sides with your palms facing inwards. With only a slight bend in the arms, gradually raise the Dumbbells to Shoulder-height. Pause briefly and slowly lower the Dumbbells back to the starting position."
  e.tips =         "Keep the elbows slightly bent. Maintain good posture throughout the exercise and do not use momentum to assist you to move the weight. Keep vision forwards and avoid shrugging your shoulders. This is an isolation exercise so do not expect to use a heavy weight."
  count += 1 if e.save!

        


  e = Exercise.find_or_create_by_name("Cable Side Raise")
  e.muscle =  "shoulders"
  e.muscle =    e.muscle.downcase
  e.equipment_id = Equipment.find_or_create_by_name("Cable Machine").id
  e.category =   "muscle"
  e.category =   e.category.downcase
  e.description =  "Attach a handle to the low cable pulley. Stand with your left side to the pulley. Grab the handle with your right hand and step 1 to 2 feet away. Standing tall, hold the handle slightly in front of your hips with a gently bent elbow. Slowly raise the handle out to the side and up to Shoulder height. Pause briefly and slowly return to the start position."
  e.tips =         "Maintain good posture and an engaged core during the exercise. Keep your knees slightly bent and avoid shrugging your shoulders as you raise your arm."
  count += 1 if e.save!

        


  e = Exercise.find_or_create_by_name("Front Raise (Dumbbell)")
  e.muscle =  "shoulders"
  e.muscle =    e.muscle.downcase
  e.equipment_id = Equipment.find_or_create_by_name("Dumbbells").id
  e.category =   "muscle"
  e.category =   e.category.downcase
  e.description =  "Grasp a pair of Dumbbells and hold them in front of you at mid-thigh height, with your palms facing inwards. Raise the Dumbbells upwards until they are in-line with the top of the shoulders. Pause briefly and slowly lower the Dumbbells to the starting position."
  e.tips =         "Remember this is an isolating exercise, don't expect to use a lot of weight. Perform the exercise in a slow and controlled manner. Avoid using momentum or leaning back to assist in getting the Dumbbells up. Eliminate any shrugging of the shoulder during the exercise."
  count += 1 if e.save!

        


  e = Exercise.find_or_create_by_name("Front Raise (Barbell)")
  e.muscle =  "shoulders"
  e.muscle =    e.muscle.downcase
  e.equipment_id = Equipment.find_or_create_by_name("Barbell").id
  e.category =   "muscle"
  e.category =   e.category.downcase
  e.description =  "Grasp a Barbell with your palms facing inwards and hold it with extended arms. Raise the Barbell upwards until it is in-line with the top of your shoulders. Pause briefly and lower the Barbell to the starting position."
  e.tips =         "Remember this is an isolating exercise, don't expect to use a lot of weight. Perform the exercise in a slow and controlled manner. Avoid using momentum or leaning back to assist in the exercise. Eliminate any shrugging of the shoulder during the exercise."
  count += 1 if e.save!

        


  e = Exercise.find_or_create_by_name("Front Raise (Cable)")
  e.muscle =  "shoulders"
  e.muscle =    e.muscle.downcase
  e.equipment_id = Equipment.find_or_create_by_name("Cable").id
  e.category =   "muscle"
  e.category =   e.category.downcase
  e.description =  "Connect a straight Bar to the lowest rung on the Cable Machine. Stand upright, facing away from the weight stack. Position the Bar and cable between your legs and hold the bar at waist-height with the palms facing towards your body. Raise the Bar upward until it is in-line with the top of the shoulders. Pause briefly and slowly lower the Bar to the starting position."
  e.tips =         "Remember this is an isolating exercise, don't expect to use a lot of weight. Perform the exercise in a slow and controlled manner. Avoid using momentum or leaning back to assist in the exercise. Eliminate any shrugging of the shoulder during the exercise."
  count += 1 if e.save!

        


  e = Exercise.find_or_create_by_name("Front Raise (Elastic Band)")
  e.muscle =  "shoulders"
  e.muscle =    e.muscle.downcase
  e.equipment_id = Equipment.find_or_create_by_name("Elastic Band").id
  e.category =   "muscle"
  e.category =   e.category.downcase
  e.description =  "Loop the Elastic Band under both feet. Hold the ends of the Elastic Band in each hand and slowly raise both arms straight out in front of you. Pause briefly at Shoulder-height and then slowly return to starting position."
  e.tips =         "Remember this is an isolating exercise, don't expect to use a lot of weight. Perform the exercise in a slow and controlled manner. Avoid using momentum or leaning back to assist in the exercise. Eliminate any shrugging of the shoulder during the exercise."
  count += 1 if e.save!

        


  e = Exercise.find_or_create_by_name("External Rotation (Dumbbells)")
  e.muscle =  "shoulders"
  e.muscle =    e.muscle.downcase
  e.equipment_id = Equipment.find_or_create_by_name("Dumbbells").id
  e.category =   "muscle"
  e.category =   e.category.downcase
  e.description =  "Stand upright and hold two Dumbbells at your side. Bend your elbows to 90 degrees and raise the Dumbbells to Shoulder height. Rotate your arms backwards until your forearms are vertical and then return to starting position. The elbow is to remain a fixed position during the rotation movement."
  e.tips =         "Perform the exercise in a slow and controlled manner. Maintain your posture and your vision forwards through out the movement."
  count += 1 if e.save!

        


  e = Exercise.find_or_create_by_name("External Rotation (Lying On Side)")
  e.muscle =  "shoulders"
  e.muscle =    e.muscle.downcase
  e.equipment_id = Equipment.find_or_create_by_name("Dumbbells").id
  e.category =   "muscle"
  e.category =   e.category.downcase
  e.description =  "Lie on your side with a Dumbbell in your top hand. Bend your elbow to a 90 degree and keep it firmly pressed into your body. Lower the Dumbbell towards the floor and then rotate your arm to raise the Dumbbell towards the ceiling. Pause briefly once your forearm is vertical then lower the Dumbbell back to the starting position."
  e.tips =         "Keep your elbow pressed against your side at all times. Perform the exercise in a slow and controlled manner."
  count += 1 if e.save!

        


  e = Exercise.find_or_create_by_name("External Rotation                (Elastic Band)")
  e.muscle =  "shoulders"
  e.muscle =    e.muscle.downcase
  e.equipment_id = Equipment.find_or_create_by_name("Elastic Band").id
  e.category =   "muscle"
  e.category =   e.category.downcase
  e.description =  "Tie one end of your Elastic Band to a fixed object. Grasp the opposite end of the Elastic Band with one hand and position your elbow against the side of your body. Rotate your body away from the Elastic Band anchor. The Elastic Band should now be running across your body. Rotate your arm as far as possible and pull the Elastic Band away from its fixed end. Pause briefly and return back to the starting position."
  e.tips =         "Keep your elbow pressed against your side at all times. Perform the exercise in a slow and controlled manner. Engage your core and maintain good posture with your vision forwards."
  count += 1 if e.save!

        


  e = Exercise.find_or_create_by_name("Rear Shoulder Flyes (Dumbbells)")
  e.muscle =  "shoulders"
  e.muscle =    e.muscle.downcase
  e.equipment_id = Equipment.find_or_create_by_name("Dumbbells").id
  e.category =   "muscle"
  e.category =   e.category.downcase
  e.description =  "Grasp two Dumbbells and bend forward at the waist until your upper-body is parallel to the floor. Allow the Dumbbells to hang directly downwards from the shoulders. With a slight bend in your elbows, raise the Dumbbells to the side and up towards the height of your shoulders. Pause briefly and slowly return to starting position."
  e.tips =         "Maintain good posture  and an engaged core. Perform the exercise in a slow and controlled manner. Avoid using momentum to assist you to complete the movement."
  count += 1 if e.save!

        


  e = Exercise.find_or_create_by_name("Push Press (Barbell)")
  e.muscle =  "shoulders"
  e.muscle =    e.muscle.downcase
  e.equipment_id = Equipment.find_or_create_by_name("Barbell").id
  e.category =   "muscle"
  e.category =   e.category.downcase
  e.description =  "Stand with your feet Shoulder-width apart and hold the Barbell at your shoulders. Perform a shallow squat and then explosively extend your legs. As you do this, push the Barbell overhead to full extension of the elbows."
  e.tips =         "Exhale as you push the Barbell overhead. Use the momentum of the shallow squat to help you move the Barbell. Maintain an engaged core and good posture."
  count += 1 if e.save!

        


  e = Exercise.find_or_create_by_name("Push Press (Dumbbell)")
  e.muscle =  "shoulders"
  e.muscle =    e.muscle.downcase
  e.equipment_id = Equipment.find_or_create_by_name("Dumbbell").id
  e.category =   "muscle"
  e.category =   e.category.downcase
  e.description =  "Stand with your feet Shoulder-width apart and hold the Dumbbells by your shoulders with your palms facing forward. Perform a shallow squat and then explosively extend your legs. As you do this, push the Dumbbells overhead to full extension of the elbows."
  e.tips =         "Exhale as you push the Dumbbell overhead. Use the momentum of the shallow squat to help you move the Dumbbell. Maintain an engaged core and good posture."
  count += 1 if e.save!

        


  e = Exercise.find_or_create_by_name("Alternating Shoulder Press (Kettlebell)")
  e.muscle =  "shoulders"
  e.muscle =    e.muscle.downcase
  e.equipment_id = Equipment.find_or_create_by_name("Kettlebell").id
  e.category =   "muscle"
  e.category =   e.category.downcase
  e.description =  "Raise the Kettlebells to your shoulders. Hold the them with your palms facing forward . Push one of the Kettlebells above your head until your arm is straight. Return it slowly to your Shoulder and repeat the movement with the other arm."
  e.tips =         "Exhale as you push the Kettlebell above your head. Maintain an engaged core and good posture at all times. Avoid locking out your elbows on the extension above your head."
  count += 1 if e.save!

        


  e = Exercise.find_or_create_by_name("Alternating Shoulder Press (Dumbbell)")
  e.muscle =  "shoulders"
  e.muscle =    e.muscle.downcase
  e.equipment_id = Equipment.find_or_create_by_name("Dumbbell").id
  e.category =   "muscle"
  e.category =   e.category.downcase
  e.description =  "Raise the Dumbbells to your shoulders. Hold them with your palms facing forward. Push one of the Dumbbells above your head until your arm is straight. Return it slowly to the Shoulder and repeat the movement with the other arm."
  e.tips =         "Exhale as you push the Dumbbell upwards. Maintain an engaged core and good posture and avoid locking out your elbows on the extension above your head."
  count += 1 if e.save!

        


  e = Exercise.find_or_create_by_name("Upright Row (Cable)")
  e.muscle =  "shoulders"
  e.muscle =    e.muscle.downcase
  e.equipment_id = Equipment.find_or_create_by_name("Cable").id
  e.category =   "muscle"
  e.category =   e.category.downcase
  e.description =  "Attach a Straight Bar to the lowest setting on the Cable Machine. Grasp the Bar, stand upright and hold it at waist-level. Pull the Bar upwards to the top of the Chest, leading with your elbows. Gradually lower the Bar to the starting point."
  e.tips =         "Perform the exercise in a slow and controlled manner. Keep your feet about Shoulder-width apart with the knees slightly bent. Maintain an engaged core and avoid pulling the Bar too high as this may irritate the wrist or Shoulder joints."
  count += 1 if e.save!

        


  e = Exercise.find_or_create_by_name("Rear Shoulder Row")
  e.muscle =  "shoulders"
  e.muscle =    e.muscle.downcase
  e.equipment_id = Equipment.find_or_create_by_name("Barbell").id
  e.category =   "muscle"
  e.category =   e.category.downcase
  e.description =  "Stand upright and hold a Barbell with your hands placed Shoulder-width apart in an overhand grip. Bend your knees slightly and tip forward from the hips. Once your torso is parallel with the ground, allow your arms to hang vertically from your shoulders. Pull the Bar towards your Chest with your elbows flared out the side. Pull as high as possible and then slowly return to the start position."
  e.tips =         "Start with a light weight to perfect your technique. Avoid any momentum or rounding of your Lower-Back. Perform the exercise under strict control and always maintain an engaged core."
  count += 1 if e.save!

        


  e = Exercise.find_or_create_by_name("Dumbbell Rear Shoulder Raise (Swiss Ball)")
  e.muscle =  "shoulders"
  e.muscle =    e.muscle.downcase
  e.equipment_id = Equipment.find_or_create_by_name("Dumbbell").id
  e.category =   "muscle"
  e.category =   e.category.downcase
  e.description =  "Lie face down on the Swiss Ball with your body-weight in your feet. Hold two Dumbbells at the side of the Swiss Ball with your elbows bent at 90°. While keeping your elbows in this fixed position, raise the Dumbbells until they reach the height of your shoulders. Slowly return to the start position."
  e.tips =         "Maintain good posture with your head facing down. Use a light weight and perform the exercise in a slow and controlled manner. Keep your feet Shoulder-width apart for stability."
  count += 1 if e.save!

        


  e = Exercise.find_or_create_by_name("Dumbbell  External Rotation (Swiss Ball)")
  e.muscle =  "shoulders"
  e.muscle =    e.muscle.downcase
  e.equipment_id = Equipment.find_or_create_by_name("Dumbbell").id
  e.category =   "muscle"
  e.category =   e.category.downcase
  e.description =  "Lie on your side over the top of a  Swiss Ball with your legs scissored wide for balance. Take your body weight on to your elbow. Grab hold of a Dumbbell and create a 90° angle in the elbow of the free arm. Maintain contact with your elbow and waist and rotate the arm upwards until it is vertical. Slowly return to start position."
  e.tips =         "Keep good posture and use a light weight to start. Perform the exercise in a slow and controlled manner. Keep looking forwards."
  count += 1 if e.save!

        


  e = Exercise.find_or_create_by_name("Barbell Shoulder Press")
  e.muscle =  "shoulders"
  e.muscle =    e.muscle.downcase
  e.equipment_id = Equipment.find_or_create_by_name("Barbell").id
  e.category =   "Crossfit"
  e.category =   e.category.downcase
  e.description =  "Raise the Barbell from the floor or supports and position in front of the shoulders. Push the Bar to a position directly overhead. At full extension, your arms should be in line with your ears. Pause briefly and slowly lower the Bar to starting position."
  e.tips =         "Exhale as you raise the Barbell. Perform the exercise in a slow and controlled manner and avoid locking out your elbow joints. Engage your core for stability and maintain your vision forwards."
  count += 1 if e.save!

        


  e = Exercise.find_or_create_by_name("Push Press (Barbell)")
  e.muscle =  "shoulders"
  e.muscle =    e.muscle.downcase
  e.equipment_id = Equipment.find_or_create_by_name("Barbell").id
  e.category =   "Crossfit"
  e.category =   e.category.downcase
  e.description =  "Stand with your feet Shoulder-width apart. Raise the Barbell to your shoulders and hold it with an over hand grip. Squat downwards a few inches and then explosively extend your hips, knees and ankles. Sequentially, push the Barbell overhead to full extension of the elbows."
  e.tips =         "Exhale as you push the Barbell overhead. Use the momentum of the shallow squat to help you move the Barbell. Maintain an engaged core and good posture."
  count += 1 if e.save!

        


  e = Exercise.find_or_create_by_name("Overhead Arm Swings")
  e.muscle =  "shoulders"
  e.muscle =    e.muscle.downcase
  e.equipment_id = Equipment.find_or_create_by_name("").id
  e.category =   "Mobility"
  e.category =   e.category.downcase
  e.description =  "Stand upright with your Chest out and shoulders back. Maintain this posture and raise both arms forwards and upwards as far as possible. Pause briefly and return downwards, swinging the arms backwards past your hips. Increase the speed of this movement but maintain control."
  e.tips =         "Perform this mobility exercise in a slow and controlled manner. Repeat for desired repetitions."
  count += 1 if e.save!

        


  e = Exercise.find_or_create_by_name("Front Crossover Arm Swings")
  e.muscle =  "shoulders"
  e.muscle =    e.muscle.downcase
  e.equipment_id = Equipment.find_or_create_by_name("").id
  e.category =   "Mobility"
  e.category =   e.category.downcase
  e.description =  "Stand upright with your Chest out and shoulders back. Maintain this posture and raise both arms outwards to Shoulder-height. Swing your arms inwards and until they crossover and return to the start position."
  e.tips =         "Perform this mobility exercise in a dynamic but controlled manner. Repeat for desired repetitions."
  count += 1 if e.save!

        


  e = Exercise.find_or_create_by_name("Rear Shoulder Stretch")
  e.muscle =  "shoulders"
  e.muscle =    e.muscle.downcase
  e.equipment_id = Equipment.find_or_create_by_name("").id
  e.category =   "Stretch"
  e.category =   e.category.downcase
  e.description =  "Stand upright and cross your right arm over your Chest. Use your left arm to firmly bring your right arm even further across your body. This stretch should isolate the sides and rear of your Shoulder."
  e.tips =         "With all stretching, you should feel a light stretch not pain or discomfort."
  count += 1 if e.save!

        


  e = Exercise.find_or_create_by_name("Front Shoulder Stretch")
  e.muscle =  "shoulders"
  e.muscle =    e.muscle.downcase
  e.equipment_id = Equipment.find_or_create_by_name("").id
  e.category =   "Stretch"
  e.category =   e.category.downcase
  e.description =  "Stand upright and grasp your hands together behind your back. While keeping your shoulders back and arms straight, raise your hands as high as you can to feel this stretch in the front of your shoulders."
  e.tips =         "With all stretching, you should feel a light stretch not pain or discomfort. Use a partner to gently raise the height in the arms to increase the intensity of this stretch."
  count += 1 if e.save!

        


  e = Exercise.find_or_create_by_name("Rotator Cuff Stretch")
  e.muscle =  "shoulders"
  e.muscle =    e.muscle.downcase
  e.equipment_id = Equipment.find_or_create_by_name("").id
  e.category =   "Stretch"
  e.category =   e.category.downcase
  e.description =  "Place the top of one hand on your hip of the same side. Reach around the front and grasp your bent elbow with your opposite hand . Gently pull the bent elbow forward. The top of your hand must remain firmly on your hip. This stretch can be felt from the shoulder blade towards the rear of your Shoulder and the front Shoulder."
  e.tips =         "Ensure that you perform this stretch gently and release it slowly to avoid injury. As with all stretching, you should feel a light stretch not pain or discomfort."
  count += 1 if e.save!

        


  e = Exercise.find_or_create_by_name("Hanging Rotations")
  e.muscle =  "shoulders"
  e.muscle =    e.muscle.downcase
  e.equipment_id = Equipment.find_or_create_by_name("").id
  e.category =   "Rehab"
  e.category =   e.category.downcase
  e.description =  "Start on a Flat-Bench with your knee and arm supporting your weight. While maintaining good posture, allow your free arm to hang towards the ground. Begin creating small circular movements in one direction. Repeat the same number going the opposite direction. Once comfortable with the technique, hold a light Dumbbell to increase resistance."
  e.tips =         "Perform this exercise in a slow and controlled manner. Maintain good posture and avoid any activation of the Trapezius (Upper-Back). Start with small rotations and slowly increase their diameter being guided by your pain threshold."
  count += 1 if e.save!

        


  e = Exercise.find_or_create_by_name("Shoulder Flexion")
  e.muscle =  "shoulders"
  e.muscle =    e.muscle.downcase
  e.equipment_id = Equipment.find_or_create_by_name("").id
  e.category =   "Rehab"
  e.category =   e.category.downcase
  e.description =  "Raise a straight arm (locked at elbow) from your sides directly in front of you . Work through your full range of motion. Pause briefly and return to start position."
  e.tips =         "Maintain good posture and perform the movement slowly. Add light resistance as your strength increases. Avoid any major activation of the Trapezius (Upper-Back)."
  count += 1 if e.save!

        


  e = Exercise.find_or_create_by_name("Shoulder Abduction")
  e.muscle =  "shoulders"
  e.muscle =    e.muscle.downcase
  e.equipment_id = Equipment.find_or_create_by_name("").id
  e.category =   "Rehab"
  e.category =   e.category.downcase
  e.description =  "Raise a straight arm (locked at elbow) directly out to your side. Have your palm facing down and work through your full range of motion. Pause briefly and return to start position."
  e.tips =         "Maintain good posture and perform the movement slowly. Add light resistance as your strength increases. Avoid any major activation of the Trapezius (Upper-Back)."
  count += 1 if e.save!

        


  e = Exercise.find_or_create_by_name("Shoulder Wall Walk")
  e.muscle =  "shoulders"
  e.muscle =    e.muscle.downcase
  e.equipment_id = Equipment.find_or_create_by_name("").id
  e.category =   "Rehab"
  e.category =   e.category.downcase
  e.description =  "Stand approximately 30cm away from a wall. Reach forward and place your finger tips against the wall at Hip-height. Slowly crawl with your fingers up as high possible. Slowly return to start position with same crawling motion."
  e.tips =         "Avoid any major activation of the Trapezius (Upper-Back) and use your pain threshold as a guide for height and speed."
  count += 1 if e.save!

        


  e = Exercise.find_or_create_by_name("Static External Rotation")
  e.muscle =  "shoulders"
  e.muscle =    e.muscle.downcase
  e.equipment_id = Equipment.find_or_create_by_name("").id
  e.category =   "Rehab"
  e.category =   e.category.downcase
  e.description =  "Stand upright and place your injured Shoulder, side on against a wall. Keep your elbow at 90 degrees and gently push against the wall for 5 seconds. Slowly release the pressure and repeat for desired repetitions."
  e.tips =         "Maintain upright posture when you perform this exercise."
  count += 1 if e.save!

        


  e = Exercise.find_or_create_by_name("Static Internal Rotation")
  e.muscle =  "shoulders"
  e.muscle =    e.muscle.downcase
  e.equipment_id = Equipment.find_or_create_by_name("").id
  e.category =   "Rehab"
  e.category =   e.category.downcase
  e.description =  "Stand up facing a corner of a wall. With your elbow by your side at 90 degrees, place the hand of the injured side against the outer corner of the wall and gently push inwards against wall for 5 seconds and release."
  e.tips =         "Maintain good posture and perform the movement slowly. Add light resistance as your strength increases."
  count += 1 if e.save!

        


  e = Exercise.find_or_create_by_name("Shoulder Wall Extension")
  e.muscle =  "shoulders"
  e.muscle =    e.muscle.downcase
  e.equipment_id = Equipment.find_or_create_by_name("").id
  e.category =   "Rehab"
  e.category =   e.category.downcase
  e.description =  "Stand with your Back against the wall with your arms down by your sides. Keeping your shoulders back and upper-arms against the wall, push your hands back against the wall and hold that gentle pressure for 10 seconds."
  e.tips =         "Perform the exercise in a slow and controlled manner. Always gently create and release the pressure on the Shoulder. Maintain good posture and minimise activation of the Chest muscles and prevent the shoulders rolling forwards."
  count += 1 if e.save!

        


  e = Exercise.find_or_create_by_name("Shoulder External Rotation")
  e.muscle =  "shoulders"
  e.muscle =    e.muscle.downcase
  e.equipment_id = Equipment.find_or_create_by_name("Elastic Band").id
  e.category =   "Rehab"
  e.category =   e.category.downcase
  e.description =  "Tie one end of the Elastic Band to a stable object and grasp the other end. Stand with good posture and turn 90 degrees so the band runs across your body towards the injured Shoulder. While keeping the elbow close to the body, rotate your Forearm outwards. Pause briefly and return to the start position."
  e.tips =         "Perform this exercise in a slow and controlled manner. Always gently create and release the pressure on the Shoulder. Maintain good posture and minimise activation of the Trapezius (Upper-Back)."
  count += 1 if e.save!

        


  e = Exercise.find_or_create_by_name("Shoulder Internal Rotation")
  e.muscle =  "shoulders"
  e.muscle =    e.muscle.downcase
  e.equipment_id = Equipment.find_or_create_by_name("Elastic Band").id
  e.category =   "Rehab"
  e.category =   e.category.downcase
  e.description =  "Tie one end of the Elastic Band to a stable object and grasp the other end. Stand with good posture with your shoulders back and Back straight. Turn 90 degrees so the band runs away from the injured Shoulder. While keeping the elbow at 90 degrees and close to the body, rotate your Forearm inwards towards the centre of your body. Pause briefly and slowly return the starting position."
  e.tips =         "Perform this exercise in a slow and controlled manner. Always gently create and release the pressure on the Shoulder. Maintain good posture and minimise activation of the Chest muscles and prevent your shoulders rolling forwards."
  count += 1 if e.save!

        


  e = Exercise.find_or_create_by_name("Military Press (One Arm)")
  e.muscle =  "shoulders"
  e.muscle =    e.muscle.downcase
  e.equipment_id = Equipment.find_or_create_by_name("Kettlebell").id
  e.category =   "muscle"
  e.category =   e.category.downcase
  e.description =  "Stand with your feet Shoulder-width apart and hold the Kettlebell with one hand (palm facing towards you) at Shoulder-height. Extend the arm with the Kettlebell above your head. Your palm should now be facing forwards. Slowly lower the Kettlebell back to the starting position."
  e.tips =         "Start with a light weight to ensure the movement is completed with control. Increase the weight as your technique and strength improves. Keep you knees soft and your core engaged. Maintain good head position with your vision forwards."
  count += 1 if e.save!

        


  e = Exercise.find_or_create_by_name("Military Press")
  e.muscle =  "shoulders"
  e.muscle =    e.muscle.downcase
  e.equipment_id = Equipment.find_or_create_by_name("Kettlebell").id
  e.category =   "muscle"
  e.category =   e.category.downcase
  e.description =  "Stand with your feet Shoulder-width apart and hold a Kettlebell in each hand (palms facing towards you) at Shoulder-height. Extend both your arms above your head. Your palms should now be facing forwards. Slowly lower the Kettlebells back to the starting position."
  e.tips =         "Start with a light weight  to ensure the movement is done under complete control. Increase the weight as your technique and strength improves. Keep the knees soft and your core engaged. Maintain good posture with your shoulders back and look straight ahead."
  count += 1 if e.save!

        


  e = Exercise.find_or_create_by_name("Push Press (One arm)")
  e.muscle =  "shoulders"
  e.muscle =    e.muscle.downcase
  e.equipment_id = Equipment.find_or_create_by_name("Kettlebell").id
  e.category =   "muscle"
  e.category =   e.category.downcase
  e.description =  "Stand with your feet Shoulder-width apart and hold the Kettlebell with one hand (palm facing forwards) at shoulder height. Bend your knees to a medium depth squat and then explosively extend your legs. With this momentum, fully extend your arm above your head. Slowly lower the Kettlebell back to the shoulders."
  e.tips =         "Start with a light weight  to ensure the movement is done under complete control. Increase the weight as your technique and strength improves. Keep your knees soft and your core engaged. Maintain good posture with your shoulders back and look straight ahead."
  count += 1 if e.save!

        


  e = Exercise.find_or_create_by_name("Push Press")
  e.muscle =  "shoulders"
  e.muscle =    e.muscle.downcase
  e.equipment_id = Equipment.find_or_create_by_name("Kettlebell").id
  e.category =   "muscle"
  e.category =   e.category.downcase
  e.description =  "Stand with your feet Shoulder-width apart and hold a Kettlebell in each hand (palm facing forwards) at shoulder height. Bend your knees to a medium depth squat and then explosively extend your legs. With this momentum, fully extend your arms above your head. Slowly lower the Kettlebells back to the shoulders."
  e.tips =         "Start with a light weight  to ensure the movement is done under complete control. Increase the weight as your technique and strength improves. Keep your knees soft and your core engaged. Maintain good posture with your shoulders back and look straight ahead."
  count += 1 if e.save!

        


  e = Exercise.find_or_create_by_name("Dumbbell Shoulder Press (BOSU)")
  e.muscle =  "shoulders"
  e.muscle =    e.muscle.downcase
  e.equipment_id = Equipment.find_or_create_by_name("BOSU").id
  e.category =   "muscle"
  e.category =   e.category.downcase
  e.description =  "Grasp two Dumbbells and stand with your feet Shoulder-width on top of the BOSU (round side up). Raise the Dumbbells to Shoulder-height with your palms facing forwards. With your elbows pointing outwards, push both Dumbbells above your head until your arms are straight. Slowly return the Dumbbells to the start position."
  e.tips =         "Exhale as you push the Dumbbell upwards. Maintain an engaged core and good posture and avoid locking out your elbows on the extension above your head."
  count += 1 if e.save!

        


  e = Exercise.find_or_create_by_name("Alternating Dumbbell Press (BOSU)")
  e.muscle =  "shoulders"
  e.muscle =    e.muscle.downcase
  e.equipment_id = Equipment.find_or_create_by_name("BOSU").id
  e.category =   "muscle"
  e.category =   e.category.downcase
  e.description =  "Grasp two Dumbbells and stand with your feet Shoulder-width apart on top of the BOSU (round side up). Raise the Dumbbells to your shoulders and hold them with your palms facing forward . Push one of the Dumbbells above your head until the arm is straight. Return it slowly to the Shoulder and repeat the movement with the other arm."
  e.tips =         "Exhale as you push the Dumbbells upwards. Maintain an engaged core, good posture and avoid locking out your elbows on the extension above your head."
  count += 1 if e.save!

        


  e = Exercise.find_or_create_by_name("Alternating Side Raise (BOSU)")
  e.muscle =  "shoulders"
  e.muscle =    e.muscle.downcase
  e.equipment_id = Equipment.find_or_create_by_name("BOSU").id
  e.category =   "muscle"
  e.category =   e.category.downcase
  e.description =  "Grasp two Dumbbells and stand on top of the BOSU (round side up). Once balanced, hold the Dumbbells at hip height with your palms facing inwards. Raise one Dumbbell directly sideways until it reaches Shoulder-height, pause briefly and slowly return to start position. Repeat with the other arm. Continue to alternate repetitions."
  e.tips =         "Perform the exercise in a slow controlled manner. Engage your core to increase stability. Keep the elbows slightly bent during this movement."
  count += 1 if e.save!

        


  e = Exercise.find_or_create_by_name("Box Pattern")
  e.muscle =  "shoulders"
  e.muscle =    e.muscle.downcase
  e.equipment_id = Equipment.find_or_create_by_name("ViPR").id
  e.category =   "muscle"
  e.category =   e.category.downcase
  e.description =  "Stand with your feet Shoulder-width apart and knees slightly bent. Hold the ViPR horizontally at your hips and then rotate it to your right so it is vertical. Your left hand should be on the top handle. Rotate the ViPR to a horizontal position at head-height and continue to your left side in a vertical position. Your right hand should now be positioned on the top handle. Complete the movement with a rotation to the starting position."
  e.tips =         "Best performed in front of a mirror to perfect the action. Keep your shoulders back and your Chest out and avoid leaning forward or to the sides during the movement. Perform in a slow and controlled manner."
  count += 1 if e.save!

        


  e = Exercise.find_or_create_by_name("Shoulder Press (Resistance Band)")
  e.muscle =  "shoulders"
  e.muscle =    e.muscle.downcase
  e.equipment_id = Equipment.find_or_create_by_name("Resistance Band").id
  e.category =   "muscle"
  e.category =   e.category.downcase
  e.description =  "Stand with your feet Shoulder-width apart. Place the centre of the Resistance Band under your feet and extend the Resistance Band upwards so your hands are positioned at your shoulders. With your palms facing forwards, extend your arms above your head. Slowly lower your hands back down to the shoulders."
  e.tips =         "Maintain your upright posture at all times. Perform the exercise slowly and in a controlled manner. Minimise any momentum from a leaning Torso and exhale as you push upwards."
  count += 1 if e.save!

        


  e = Exercise.find_or_create_by_name("Side Raises (Resistance Band)")
  e.muscle =  "shoulders"
  e.muscle =    e.muscle.downcase
  e.equipment_id = Equipment.find_or_create_by_name("Resistance Band").id
  e.category =   "muscle"
  e.category =   e.category.downcase
  e.description =  "Loop the band under your feet and hold the ends with your palms facing inwards at hip-height. Slowly raise your slightly bent arms sideways to the height of your shoulders. Pause briefly and slowly return your arms to their starting position."
  e.tips =         "Maintain upright posture at all times. Perform the exercise slowly and in a controlled manner. Avoid shrugging the shoulders during this movement and minimise any assistance from a leaning Torso."
  count += 1 if e.save!

        


  e = Exercise.find_or_create_by_name("Alternating Side Raises (Resistance Band)")
  e.muscle =  "shoulders"
  e.muscle =    e.muscle.downcase
  e.equipment_id = Equipment.find_or_create_by_name("Resistance Band").id
  e.category =   "muscle"
  e.category =   e.category.downcase
  e.description =  "Loop the Resistance Band under your feet and hold the ends with your palms facing inwards at hip-height. Slowly raise one arm sideways to the height of the shoulders. Pause briefly and slowly return your arm to its starting position. Alternate sides each repetition."
  e.tips =         "Maintain upright posture at all times. Perform the exercise slowly and in a controlled manner. Avoid shrugging the shoulders during this movement and minimise any assistance from a leaning torso."
  count += 1 if e.save!

  p "** ------------- #{count} SHOULDER EXERCISES UPDATED ------------- **"     
end