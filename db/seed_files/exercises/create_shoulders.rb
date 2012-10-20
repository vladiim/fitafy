#!/bin/env ruby 
# encoding: utf-8

def create_shoulders

          Exercise.find_or_create_by_name(
            name:         "Dumbbell Shoulder Press",
            muscle_list:  "Shoulders",
            equipment_id: Equipment.find_or_create_by_name("Dumbbells").id,
            type_list:    "Muscle",
            description:  "This exercise may be performed standing or sitting. Raise the Dumbbells to your Shoulders. Hold the Dumbbells so that your palms are facing forward. Push the Dumbbells above your head until your arms are straight and the Dumbbells are nearly touching. Slowly lower the Dumbbells to starting position.",
            tips:         "Exhale as you raise the Dumbbells. Perform the exercise in a slow and controlled manner and avoid locking out your elbow joints. Engage your core for stability and maintain your vision forwards."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Barbell Shoulder Press",
            muscle_list:  "Shoulders",
            equipment_id: Equipment.find_or_create_by_name("Barbell").id,
            type_list:    "Muscle",
            description:  "This exercise may be performed standing or sitting. Raise the Barbell from the floor or supports and position it in front of your Shoulders. Push the Barbell directly overhead. At full extension, your arms should be in line with your ears. Pause briefly and slowly lower the Barbell to starting position.",
            tips:         "Exhale as you raise the Barbell. Perform the exercise in a slow and controlled manner and avoid locking out your elbow joints. Engage your core for stability and maintain your vision forwards."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Swiss Ball Shoulder Press",
            muscle_list:  "Shoulders",
            equipment_id: Equipment.find_or_create_by_name("Dumbbells").id,
            type_list:    "Muscle",
            description:  "Sit upright on a Swiss Ball and place your feet Shoulder-width apart. Begin by holding the Dumbbells at ear level, with your palms facing forward. Push the Dumbbells upwards and over your head until your arms are straight. Lower the Dumbbells back towards your Shoulders and repeat.",
            tips:         "Keep your elbows soft at the top of the movement. Avoid leaning back and arching your Lower-Back. Maintain good posture and keep your chin in a neutral position with your vision directly forwards. Exhale as you push the Dumbbells upwards."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Barbell Upright Row",
            muscle_list:  "Shoulders",
            equipment_id: Equipment.find_or_create_by_name("Barbell").id,
            type_list:    "Muscle",
            description:  "Grasp the Barbell with your hands hip-width apart. Stand upright and pull the Barbell upwards to slightly below your collar bones. Lead with your elbows. Gradually lower the Barbell to the starting position.",
            tips:         "Perform this exercise in a slow and controlled manner. Keep your feet Shoulder-width apart with the knees slightly bent. Avoid pulling the Bar too high as this may irritate the wrist or Shoulder joints."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Dumbbell Upright Row",
            muscle_list:  "Shoulders",
            equipment_id: Equipment.find_or_create_by_name("Dumbbell").id,
            type_list:    "Muscle",
            description:  "Grasp the Dumbbell with your hands hip-width apart. Stand upright and pull both Dumbbells upwards to slightly below your collar bones. Lead with your elbows. Gradually lower the Barbell to the starting position.",
            tips:         "Perform this exercise in a slow and controlled manner. Keep your feet Shoulder-width apart with your knees slightly bent. Avoid pulling the Dumbbells too high as this may irritate the wrist or Shoulder joints."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Dumbbell Side Raise",
            muscle_list:  "Shoulders",
            equipment_id: Equipment.find_or_create_by_name("Dumbbells").id,
            type_list:    "Muscle",
            description:  "From either a standing or seated position, hold two Dumbbells at your sides with your palms facing inwards. With only a slight bend in the arms, gradually raise the Dumbbells to Shoulder-height. Pause briefly and slowly lower the Dumbbells back to the starting position.",
            tips:         "Keep the elbows slightly bent. Maintain good posture throughout the exercise and do not use momentum to assist you to move the weight. Keep vision forwards and avoid shrugging your Shoulders. This is an isolation exercise so do not expect to use a heavy weight."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Cable Side Raise",
            muscle_list:  "Shoulders",
            equipment_id: Equipment.find_or_create_by_name("Cable Machine").id,
            type_list:    "Muscle",
            description:  "Attach a handle to the low cable pulley. Stand with your left side to the pulley. Grab the handle with your right hand and step 1 to 2 feet away. Standing tall, hold the handle slightly in front of your hips with a gently bent elbow. Slowly raise the handle out to the side and up to Shoulder height. Pause briefly and slowly return to the start position.",
            tips:         "Maintain good posture and an engaged core during the exercise. Keep your knees slightly bent and avoid shrugging your Shoulders as you raise your arm."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Front Raise (Dumbbell)",
            muscle_list:  "Shoulders",
            equipment_id: Equipment.find_or_create_by_name("Dumbbells").id,
            type_list:    "Muscle",
            description:  "Grasp a pair of Dumbbells and hold them in front of you at mid-thigh height, with your palms facing inwards. Raise the Dumbbells upwards until they are in-line with the top of the Shoulders. Pause briefly and slowly lower the Dumbbells to the starting position.",
            tips:         "Remember this is an isolating exercise, don't expect to use a lot of weight. Perform the exercise in a slow and controlled manner. Avoid using momentum or leaning back to assist in getting the Dumbbells up. Eliminate any shrugging of the shoulder during the exercise."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Front Raise (Barbell)",
            muscle_list:  "Shoulders",
            equipment_id: Equipment.find_or_create_by_name("Barbell").id,
            type_list:    "Muscle",
            description:  "Grasp a Barbell with your palms facing inwards and hold it with extended arms. Raise the Barbell upwards until it is in-line with the top of your Shoulders. Pause briefly and lower the Barbell to the starting position.",
            tips:         "Remember this is an isolating exercise, don't expect to use a lot of weight. Perform the exercise in a slow and controlled manner. Avoid using momentum or leaning back to assist in the exercise. Eliminate any shrugging of the shoulder during the exercise."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Front Raise (Cable)",
            muscle_list:  "Shoulders",
            equipment_id: Equipment.find_or_create_by_name("Cable").id,
            type_list:    "Muscle",
            description:  "Connect a straight Bar to the lowest rung on the Cable Machine. Stand upright, facing away from the weight stack. Position the Bar and cable between your legs and hold the bar at waist-height with the palms facing towards your body. Raise the Bar upward until it is in-line with the top of the Shoulders. Pause briefly and slowly lower the Bar to the starting position.",
            tips:         "Remember this is an isolating exercise, don't expect to use a lot of weight. Perform the exercise in a slow and controlled manner. Avoid using momentum or leaning back to assist in the exercise. Eliminate any shrugging of the shoulder during the exercise."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Front Raise (Elastic Band)",
            muscle_list:  "Shoulders",
            equipment_id: Equipment.find_or_create_by_name("Elastic Band").id,
            type_list:    "Muscle",
            description:  "Loop the Elastic Band under both feet. Hold the ends of the Elastic Band in each hand and slowly raise both arms straight out in front of you. Pause briefly at Shoulder-height and then slowly return to starting position.",
            tips:         "Remember this is an isolating exercise, don't expect to use a lot of weight. Perform the exercise in a slow and controlled manner. Avoid using momentum or leaning back to assist in the exercise. Eliminate any shrugging of the shoulder during the exercise."
          )

        


          Exercise.find_or_create_by_name(
            name:         "External Rotation (Dumbbells)",
            muscle_list:  "Shoulders",
            equipment_id: Equipment.find_or_create_by_name("Dumbbells").id,
            type_list:    "Muscle",
            description:  "Stand upright and hold two Dumbbells at your side. Bend your elbows to 90 degrees and raise the Dumbbells to Shoulder height. Rotate your arms backwards until your forearms are vertical and then return to starting position. The elbow is to remain a fixed position during the rotation movement.",
            tips:         "Perform the exercise in a slow and controlled manner. Maintain your posture and your vision forwards through out the movement."
          )

        


          Exercise.find_or_create_by_name(
            name:         "External Rotation (Lying On Side)",
            muscle_list:  "Shoulders",
            equipment_id: Equipment.find_or_create_by_name("Dumbbells").id,
            type_list:    "Muscle",
            description:  "Lie on your side with a Dumbbell in your top hand. Bend your elbow to a 90 degree and keep it firmly pressed into your body. Lower the Dumbbell towards the floor and then rotate your arm to raise the Dumbbell towards the ceiling. Pause briefly once your forearm is vertical then lower the Dumbbell back to the starting position.",
            tips:         "Keep your elbow pressed against your side at all times. Perform the exercise in a slow and controlled manner."
          )

        


          Exercise.find_or_create_by_name(
            name:         "External Rotation                (Elastic Band)",
            muscle_list:  "Shoulders",
            equipment_id: Equipment.find_or_create_by_name("Elastic Band").id,
            type_list:    "Muscle",
            description:  "Tie one end of your Elastic Band to a fixed object. Grasp the opposite end of the Elastic Band with one hand and position your elbow against the side of your body. Rotate your body away from the Elastic Band anchor. The Elastic Band should now be running across your body. Rotate your arm as far as possible and pull the Elastic Band away from its fixed end. Pause briefly and return back to the starting position.",
            tips:         "Keep your elbow pressed against your side at all times. Perform the exercise in a slow and controlled manner. Engage your core and maintain good posture with your vision forwards."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Rear Shoulder Flyes (Dumbbells)",
            muscle_list:  "Shoulders",
            equipment_id: Equipment.find_or_create_by_name("Dumbbells").id,
            type_list:    "Muscle",
            description:  "Grasp two Dumbbells and bend forward at the waist until your upper-body is parallel to the floor. Allow the Dumbbells to hang directly downwards from the Shoulders. With a slight bend in your elbows, raise the Dumbbells to the side and up towards the height of your Shoulders. Pause briefly and slowly return to starting position.",
            tips:         "Maintain good posture  and an engaged core. Perform the exercise in a slow and controlled manner. Avoid using momentum to assist you to complete the movement."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Push Press (Barbell)",
            muscle_list:  "Shoulders",
            equipment_id: Equipment.find_or_create_by_name("Barbell").id,
            type_list:    "Muscle",
            description:  "Stand with your feet Shoulder-width apart and hold the Barbell at your Shoulders. Perform a shallow squat and then explosively extend your legs. As you do this, push the Barbell overhead to full extension of the elbows.",
            tips:         "Exhale as you push the Barbell overhead. Use the momentum of the shallow squat to help you move the Barbell. Maintain an engaged core and good posture."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Push Press (Dumbbell)",
            muscle_list:  "Shoulders",
            equipment_id: Equipment.find_or_create_by_name("Dumbbell").id,
            type_list:    "Muscle",
            description:  "Stand with your feet Shoulder-width apart and hold the Dumbbells by your Shoulders with your palms facing forward. Perform a shallow squat and then explosively extend your legs. As you do this, push the Dumbbells overhead to full extension of the elbows.",
            tips:         "Exhale as you push the Dumbbell overhead. Use the momentum of the shallow squat to help you move the Dumbbell. Maintain an engaged core and good posture."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Alternating Shoulder Press (Kettlebell)",
            muscle_list:  "Shoulders",
            equipment_id: Equipment.find_or_create_by_name("Kettlebell").id,
            type_list:    "Muscle",
            description:  "Raise the Kettlebells to your Shoulders. Hold the them with your palms facing forward . Push one of the Kettlebells above your head until your arm is straight. Return it slowly to your Shoulder and repeat the movement with the other arm.",
            tips:         "Exhale as you push the Kettlebell above your head. Maintain an engaged core and good posture at all times. Avoid locking out your elbows on the extension above your head."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Alternating Shoulder Press (Dumbbell)",
            muscle_list:  "Shoulders",
            equipment_id: Equipment.find_or_create_by_name("Dumbbell").id,
            type_list:    "Muscle",
            description:  "Raise the Dumbbells to your Shoulders. Hold them with your palms facing forward. Push one of the Dumbbells above your head until your arm is straight. Return it slowly to the Shoulder and repeat the movement with the other arm.",
            tips:         "Exhale as you push the Dumbbell upwards. Maintain an engaged core and good posture and avoid locking out your elbows on the extension above your head."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Upright Row (Cable)",
            muscle_list:  "Shoulders",
            equipment_id: Equipment.find_or_create_by_name("Cable").id,
            type_list:    "Muscle",
            description:  "Attach a Straight Bar to the lowest setting on the Cable Machine. Grasp the Bar, stand upright and hold it at waist-level. Pull the Bar upwards to the top of the Chest, leading with your elbows. Gradually lower the Bar to the starting point.",
            tips:         "Perform the exercise in a slow and controlled manner. Keep your feet about Shoulder-width apart with the knees slightly bent. Maintain an engaged core and avoid pulling the Bar too high as this may irritate the wrist or Shoulder joints."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Rear Shoulder Row",
            muscle_list:  "Shoulders",
            equipment_id: Equipment.find_or_create_by_name("Barbell").id,
            type_list:    "Muscle",
            description:  "Stand upright and hold a Barbell with your hands placed Shoulder-width apart in an overhand grip. Bend your knees slightly and tip forward from the hips. Once your torso is parallel with the ground, allow your arms to hang vertically from your Shoulders. Pull the Bar towards your Chest with your elbows flared out the side. Pull as high as possible and then slowly return to the start position.",
            tips:         "Start with a light weight to perfect your technique. Avoid any momentum or rounding of your Lower-Back. Perform the exercise under strict control and always maintain an engaged core."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Dumbbell Rear Shoulder Raise (Swiss Ball)",
            muscle_list:  "Shoulders",
            equipment_id: Equipment.find_or_create_by_name("Dumbbell").id,
            type_list:    "Muscle",
            description:  "Lie face down on the Swiss Ball with your body-weight in your feet. Hold two Dumbbells at the side of the Swiss Ball with your elbows bent at 90°. While keeping your elbows in this fixed position, raise the Dumbbells until they reach the height of your Shoulders. Slowly return to the start position.",
            tips:         "Maintain good posture with your head facing down. Use a light weight and perform the exercise in a slow and controlled manner. Keep your feet Shoulder-width apart for stability."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Dumbbell  External Rotation (Swiss Ball)",
            muscle_list:  "Shoulders",
            equipment_id: Equipment.find_or_create_by_name("Dumbbell").id,
            type_list:    "Muscle",
            description:  "Lie on your side over the top of a  Swiss Ball with your legs scissored wide for balance. Take your body weight on to your elbow. Grab hold of a Dumbbell and create a 90° angle in the elbow of the free arm. Maintain contact with your elbow and waist and rotate the arm upwards until it is vertical. Slowly return to start position.",
            tips:         "Keep good posture and use a light weight to start. Perform the exercise in a slow and controlled manner. Keep looking forwards."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Barbell Shoulder Press",
            muscle_list:  "Shoulders",
            equipment_id: Equipment.find_or_create_by_name("Barbell").id,
            type_list:    "Crossfit",
            description:  "Raise the Barbell from the floor or supports and position in front of the Shoulders. Push the Bar to a position directly overhead. At full extension, your arms should be in line with your ears. Pause briefly and slowly lower the Bar to starting position.",
            tips:         "Exhale as you raise the Barbell. Perform the exercise in a slow and controlled manner and avoid locking out your elbow joints. Engage your core for stability and maintain your vision forwards."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Push Press (Barbell)",
            muscle_list:  "Shoulders",
            equipment_id: Equipment.find_or_create_by_name("Barbell").id,
            type_list:    "Crossfit",
            description:  "Stand with your feet Shoulder-width apart. Raise the Barbell to your Shoulders and hold it with an over hand grip. Squat downwards a few inches and then explosively extend your hips, knees and ankles. Sequentially, push the Barbell overhead to full extension of the elbows.",
            tips:         "Exhale as you push the Barbell overhead. Use the momentum of the shallow squat to help you move the Barbell. Maintain an engaged core and good posture."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Overhead Arm Swings",
            muscle_list:  "Shoulders",
            equipment_id: Equipment.find_or_create_by_name("").id,
            type_list:    "Mobility",
            description:  "Stand upright with your Chest out and Shoulders back. Maintain this posture and raise both arms forwards and upwards as far as possible. Pause briefly and return downwards, swinging the arms backwards past your hips. Increase the speed of this movement but maintain control.",
            tips:         "Perform this mobility exercise in a slow and controlled manner. Repeat for desired repetitions."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Front Crossover Arm Swings",
            muscle_list:  "Shoulders",
            equipment_id: Equipment.find_or_create_by_name("").id,
            type_list:    "Mobility",
            description:  "Stand upright with your Chest out and Shoulders back. Maintain this posture and raise both arms outwards to Shoulder-height. Swing your arms inwards and until they crossover and return to the start position.",
            tips:         "Perform this mobility exercise in a dynamic but controlled manner. Repeat for desired repetitions."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Rear Shoulder Stretch",
            muscle_list:  "Shoulders",
            equipment_id: Equipment.find_or_create_by_name("").id,
            type_list:    "Stretch",
            description:  "Stand upright and cross your right arm over your Chest. Use your left arm to firmly bring your right arm even further across your body. This stretch should isolate the sides and rear of your Shoulder.",
            tips:         "With all stretching, you should feel a light stretch not pain or discomfort."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Front Shoulder Stretch",
            muscle_list:  "Shoulders",
            equipment_id: Equipment.find_or_create_by_name("").id,
            type_list:    "Stretch",
            description:  "Stand upright and grasp your hands together behind your back. While keeping your Shoulders back and arms straight, raise your hands as high as you can to feel this stretch in the front of your Shoulders.",
            tips:         "With all stretching, you should feel a light stretch not pain or discomfort. Use a partner to gently raise the height in the arms to increase the intensity of this stretch."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Rotator Cuff Stretch",
            muscle_list:  "Shoulders",
            equipment_id: Equipment.find_or_create_by_name("").id,
            type_list:    "Stretch",
            description:  "Place the top of one hand on your hip of the same side. Reach around the front and grasp your bent elbow with your opposite hand . Gently pull the bent elbow forward. The top of your hand must remain firmly on your hip. This stretch can be felt from the shoulder blade towards the rear of your Shoulder and the front Shoulder.",
            tips:         "Ensure that you perform this stretch gently and release it slowly to avoid injury. As with all stretching, you should feel a light stretch not pain or discomfort."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Hanging Rotations",
            muscle_list:  "Shoulders",
            equipment_id: Equipment.find_or_create_by_name("").id,
            type_list:    "Rehab",
            description:  "Start on a Flat-Bench with your knee and arm supporting your weight. While maintaining good posture, allow your free arm to hang towards the ground. Begin creating small circular movements in one direction. Repeat the same number going the opposite direction. Once comfortable with the technique, hold a light Dumbbell to increase resistance.",
            tips:         "Perform this exercise in a slow and controlled manner. Maintain good posture and avoid any activation of the Trapezius (Upper-Back). Start with small rotations and slowly increase their diameter being guided by your pain threshold."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Shoulder Flexion",
            muscle_list:  "Shoulder",
            equipment_id: Equipment.find_or_create_by_name("").id,
            type_list:    "Rehab",
            description:  "Raise a straight arm (locked at elbow) from your sides directly in front of you . Work through your full range of motion. Pause briefly and return to start position.",
            tips:         "Maintain good posture and perform the movement slowly. Add light resistance as your strength increases. Avoid any major activation of the Trapezius (Upper-Back)."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Shoulder Abduction",
            muscle_list:  "Shoulder",
            equipment_id: Equipment.find_or_create_by_name("").id,
            type_list:    "Rehab",
            description:  "Raise a straight arm (locked at elbow) directly out to your side. Have your palm facing down and work through your full range of motion. Pause briefly and return to start position.",
            tips:         "Maintain good posture and perform the movement slowly. Add light resistance as your strength increases. Avoid any major activation of the Trapezius (Upper-Back)."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Shoulder Wall Walk",
            muscle_list:  "Shoulder",
            equipment_id: Equipment.find_or_create_by_name("").id,
            type_list:    "Rehab",
            description:  "Stand approximately 30cm away from a wall. Reach forward and place your finger tips against the wall at Hip-height. Slowly crawl with your fingers up as high possible. Slowly return to start position with same crawling motion.",
            tips:         "Avoid any major activation of the Trapezius (Upper-Back) and use your pain threshold as a guide for height and speed."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Static External Rotation",
            muscle_list:  "Shoulder",
            equipment_id: Equipment.find_or_create_by_name("").id,
            type_list:    "Rehab",
            description:  "Stand upright and place your injured Shoulder, side on against a wall. Keep your elbow at 90 degrees and gently push against the wall for 5 seconds. Slowly release the pressure and repeat for desired repetitions.",
            tips:         "Maintain upright posture when you perform this exercise."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Static Internal Rotation",
            muscle_list:  "Shoulder",
            equipment_id: Equipment.find_or_create_by_name("").id,
            type_list:    "Rehab",
            description:  "Stand up facing a corner of a wall. With your elbow by your side at 90 degrees, place the hand of the injured side against the outer corner of the wall and gently push inwards against wall for 5 seconds and release.",
            tips:         "Maintain good posture and perform the movement slowly. Add light resistance as your strength increases."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Shoulder Wall Extension",
            muscle_list:  "Shoulder",
            equipment_id: Equipment.find_or_create_by_name("").id,
            type_list:    "Rehab",
            description:  "Stand with your Back against the wall with your arms down by your sides. Keeping your Shoulders back and upper-arms against the wall, push your hands back against the wall and hold that gentle pressure for 10 seconds.",
            tips:         "Perform the exercise in a slow and controlled manner. Always gently create and release the pressure on the Shoulder. Maintain good posture and minimise activation of the Chest muscles and prevent the Shoulders rolling forwards."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Shoulder External Rotation",
            muscle_list:  "Shoulder",
            equipment_id: Equipment.find_or_create_by_name("Elastic Band").id,
            type_list:    "Rehab",
            description:  "Tie one end of the Elastic Band to a stable object and grasp the other end. Stand with good posture and turn 90 degrees so the band runs across your body towards the injured Shoulder. While keeping the elbow close to the body, rotate your Forearm outwards. Pause briefly and return to the start position.",
            tips:         "Perform this exercise in a slow and controlled manner. Always gently create and release the pressure on the Shoulder. Maintain good posture and minimise activation of the Trapezius (Upper-Back)."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Shoulder Internal Rotation",
            muscle_list:  "Shoulder",
            equipment_id: Equipment.find_or_create_by_name("Elastic Band").id,
            type_list:    "Rehab",
            description:  "Tie one end of the Elastic Band to a stable object and grasp the other end. Stand with good posture with your Shoulders back and Back straight. Turn 90 degrees so the band runs away from the injured Shoulder. While keeping the elbow at 90 degrees and close to the body, rotate your Forearm inwards towards the centre of your body. Pause briefly and slowly return the starting position.",
            tips:         "Perform this exercise in a slow and controlled manner. Always gently create and release the pressure on the Shoulder. Maintain good posture and minimise activation of the Chest muscles and prevent your Shoulders rolling forwards."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Military Press (One Arm)",
            muscle_list:  "Shoulders",
            equipment_id: Equipment.find_or_create_by_name("Kettlebell").id,
            type_list:    "Muscle",
            description:  "Stand with your feet Shoulder-width apart and hold the Kettlebell with one hand (palm facing towards you) at Shoulder-height. Extend the arm with the Kettlebell above your head. Your palm should now be facing forwards. Slowly lower the Kettlebell back to the starting position.",
            tips:         "Start with a light weight to ensure the movement is completed with control. Increase the weight as your technique and strength improves. Keep you knees soft and your core engaged. Maintain good head position with your vision forwards."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Military Press",
            muscle_list:  "Shoulders",
            equipment_id: Equipment.find_or_create_by_name("Kettlebell").id,
            type_list:    "Muscle",
            description:  "Stand with your feet Shoulder-width apart and hold a Kettlebell in each hand (palms facing towards you) at Shoulder-height. Extend both your arms above your head. Your palms should now be facing forwards. Slowly lower the Kettlebells back to the starting position.",
            tips:         "Start with a light weight  to ensure the movement is done under complete control. Increase the weight as your technique and strength improves. Keep the knees soft and your core engaged. Maintain good posture with your Shoulders back and look straight ahead."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Push Press (One arm)",
            muscle_list:  "Shoulders",
            equipment_id: Equipment.find_or_create_by_name("Kettlebell").id,
            type_list:    "Muscle",
            description:  "Stand with your feet Shoulder-width apart and hold the Kettlebell with one hand (palm facing forwards) at shoulder height. Bend your knees to a medium depth squat and then explosively extend your legs. With this momentum, fully extend your arm above your head. Slowly lower the Kettlebell back to the Shoulders.",
            tips:         "Start with a light weight  to ensure the movement is done under complete control. Increase the weight as your technique and strength improves. Keep your knees soft and your core engaged. Maintain good posture with your Shoulders back and look straight ahead."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Push Press",
            muscle_list:  "Shoulders",
            equipment_id: Equipment.find_or_create_by_name("Kettlebell").id,
            type_list:    "Muscle",
            description:  "Stand with your feet Shoulder-width apart and hold a Kettlebell in each hand (palm facing forwards) at shoulder height. Bend your knees to a medium depth squat and then explosively extend your legs. With this momentum, fully extend your arms above your head. Slowly lower the Kettlebells back to the Shoulders.",
            tips:         "Start with a light weight  to ensure the movement is done under complete control. Increase the weight as your technique and strength improves. Keep your knees soft and your core engaged. Maintain good posture with your Shoulders back and look straight ahead."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Dumbbell Shoulder Press (BOSU)",
            muscle_list:  "Shoulders",
            equipment_id: Equipment.find_or_create_by_name("BOSU").id,
            type_list:    "Muscle",
            description:  "Grasp two Dumbbells and stand with your feet Shoulder-width on top of the BOSU (round side up). Raise the Dumbbells to Shoulder-height with your palms facing forwards. With your elbows pointing outwards, push both Dumbbells above your head until your arms are straight. Slowly return the Dumbbells to the start position.",
            tips:         "Exhale as you push the Dumbbell upwards. Maintain an engaged core and good posture and avoid locking out your elbows on the extension above your head."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Alternating Dumbbell Press (BOSU)",
            muscle_list:  "Shoulders",
            equipment_id: Equipment.find_or_create_by_name("BOSU").id,
            type_list:    "Muscle",
            description:  "Grasp two Dumbbells and stand with your feet Shoulder-width apart on top of the BOSU (round side up). Raise the Dumbbells to your Shoulders and hold them with your palms facing forward . Push one of the Dumbbells above your head until the arm is straight. Return it slowly to the Shoulder and repeat the movement with the other arm.",
            tips:         "Exhale as you push the Dumbbells upwards. Maintain an engaged core, good posture and avoid locking out your elbows on the extension above your head."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Alternating Side Raise (BOSU)",
            muscle_list:  "Shoulders",
            equipment_id: Equipment.find_or_create_by_name("BOSU").id,
            type_list:    "Muscle",
            description:  "Grasp two Dumbbells and stand on top of the BOSU (round side up). Once balanced, hold the Dumbbells at hip height with your palms facing inwards. Raise one Dumbbell directly sideways until it reaches Shoulder-height, pause briefly and slowly return to start position. Repeat with the other arm. Continue to alternate repetitions.",
            tips:         "Perform the exercise in a slow controlled manner. Engage your core to increase stability. Keep the elbows slightly bent during this movement."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Box Pattern",
            muscle_list:  "Shoulders",
            equipment_id: Equipment.find_or_create_by_name("ViPR").id,
            type_list:    "Muscle",
            description:  "Stand with your feet Shoulder-width apart and knees slightly bent. Hold the ViPR horizontally at your hips and then rotate it to your right so it is vertical. Your left hand should be on the top handle. Rotate the ViPR to a horizontal position at head-height and continue to your left side in a vertical position. Your right hand should now be positioned on the top handle. Complete the movement with a rotation to the starting position.",
            tips:         "Best performed in front of a mirror to perfect the action. Keep your Shoulders back and your Chest out and avoid leaning forward or to the sides during the movement. Perform in a slow and controlled manner."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Shoulder Press (Resistance Band)",
            muscle_list:  "Shoulders",
            equipment_id: Equipment.find_or_create_by_name("Resistance Band").id,
            type_list:    "Muscle",
            description:  "Stand with your feet Shoulder-width apart. Place the centre of the Resistance Band under your feet and extend the Resistance Band upwards so your hands are positioned at your Shoulders. With your palms facing forwards, extend your arms above your head. Slowly lower your hands back down to the Shoulders.",
            tips:         "Maintain your upright posture at all times. Perform the exercise slowly and in a controlled manner. Minimise any momentum from a leaning Torso and exhale as you push upwards."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Side Raises (Resistance Band)",
            muscle_list:  "Shoulders",
            equipment_id: Equipment.find_or_create_by_name("Resistance Band").id,
            type_list:    "Muscle",
            description:  "Loop the band under your feet and hold the ends with your palms facing inwards at hip-height. Slowly raise your slightly bent arms sideways to the height of your Shoulders. Pause briefly and slowly return your arms to their starting position.",
            tips:         "Maintain upright posture at all times. Perform the exercise slowly and in a controlled manner. Avoid shrugging the Shoulders during this movement and minimise any assistance from a leaning Torso."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Alternating Side Raises (Resistance Band)",
            muscle_list:  "Shoulders",
            equipment_id: Equipment.find_or_create_by_name("Resistance Band").id,
            type_list:    "Muscle",
            description:  "Loop the Resistance Band under your feet and hold the ends with your palms facing inwards at hip-height. Slowly raise one arm sideways to the height of the Shoulders. Pause briefly and slowly return your arm to its starting position. Alternate sides each repetition.",
            tips:         "Maintain upright posture at all times. Perform the exercise slowly and in a controlled manner. Avoid shrugging the Shoulders during this movement and minimise any assistance from a leaning torso."
          )

        
end