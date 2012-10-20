#!/bin/env ruby 
# encoding: utf-8

def create_triceps

          Exercise.find_or_create_by_name(
            name:         "Tricep Extension (Cables)",
            muscle_list:  "Tricep",
            equipment_id: Equipment.find_or_create_by_name("Cable Machine").id,
            type_list:    "Muscle",
            description:  "Attach a Straight Bar to the anchor point of the top rung of the Cable Machine. Stand with your feet Shoulder-width apart with your knees slightly bent. Grasp the Bar and hold your elbows close to your sides. Straighten your arms and lower the Bar until your elbows are fully extended. Pause briefly and return your arms to the starting position.",
            tips:         "Keep your elbows stationary and firmly by your waist. Maintain a rigid torso to eliminate momentum and perform the exercise in a slow and controlled manner."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Tricep Extension (Elastic Band)",
            muscle_list:  "Tricep",
            equipment_id: Equipment.find_or_create_by_name("Elastic Band").id,
            type_list:    "Muscle",
            description:  "Loop an Elastic Band over the top of a Cable Machine or Chin Up Bar. Stand with your feet Shoulder-width apart with your knees slightly bent. Grab the ends of the Elastic Band and bring your elbows in close to your sides. Straighten your arms until your elbows are fully extended. Pause briefly and slowly return your arms to the starting position.",
            tips:         "Keep your elbows stationary and firmly by your waist. Maintain a rigid torso to eliminate momentum and perform the exercise in a slow and controlled manner."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Single Arm Tricep Extension",
            muscle_list:  "Triceps",
            equipment_id: Equipment.find_or_create_by_name("Cable Machine").id,
            type_list:    "Muscle",
            description:  "Attach a single handle to the anchor point at the top rung of the Cable Machine. Stand with your feet Shoulder-width apart with your knees slightly bent. Grasp the handle with an over-hand grip and position your elbow close to your side. Straighten your arm and lower the handle until your elbow is fully extended. Pause briefly and return your arms to the starting position.",
            tips:         "Keep your elbows stationary and firmly by your waist. Maintain a rigid torso to eliminate momentum and perform the exercise in a slow and controlled manner."
          )

        


          Exercise.find_or_create_by_name(
            name:         "One Arm Kickback",
            muscle_list:  "Triceps",
            equipment_id: Equipment.find_or_create_by_name("Dumbbells").id,
            type_list:    "Muscle",
            description:  "Place one knee and hand on a bench for support. Bend over at the hips so your back is parallel to the floor. With a Dumbbell in your free hand, raise your upper-arm so it too is parallel to the ground. Allow your forearm to hang vertically. Keeping your upper-arm and elbow stationary, straighten your arm to full extension. Pause briefly and slowly return to the starting position.",
            tips:         "Keep your upper-arm horizontal at all times. Lower and raise the Dumbbell slowly to avoid momentum assistance and irritation of the elbow joint. Keep your vision downwards to maintain appropriate head position."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Overhead Double Arm Extension",
            muscle_list:  "Triceps",
            equipment_id: Equipment.find_or_create_by_name("Dumbbells").id,
            type_list:    "Muscle",
            description:  "Grasp one end of the Dumbbell with both hands and raise it over-head. Position your palms so they face the inside end-plate of the Dumbbell. Slowly lower the Dumbbell behind your head towards the base of your neck. Once your elbows are flexed to 90 degrees, raise the Dumbbell back to the starting position",
            tips:         "Keep your elbows stationary and close to your head. Do not let them flare outwards. Maintain a neutral spine by keeping your Abdominals tight. Look forwards and avoid overarching the Lower-Back."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Overhead Arm Extension",
            muscle_list:  "Triceps",
            equipment_id: Equipment.find_or_create_by_name("Dumbbells").id,
            type_list:    "Muscle",
            description:  "Holding a dumbbell in your hand, raise your arm directly overhead so that your upper-arm is close to your ear. Slowly lower the Dumbbell behind your head towards the base of your neck. Once your elbow is flexed to 90 degrees, raise the Dumbbell back to the starting position.",
            tips:         "Keep your elbow stationary and close to your head. Maintain good posture by keeping your Shoulders back, Abdominals tight and your vision forwards."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Overhead Arm Extension (Elastic Band)",
            muscle_list:  "Triceps",
            equipment_id: Equipment.find_or_create_by_name("Elastic Band").id,
            type_list:    "Muscle",
            description:  "Stand on one end of the Elastic Band and hold the other end in one hand. Raise that arm directly overhead so that your upper-arm is close to your ear and the Elastic Band runs down your back. Slowly lower your hand behind your head towards the base of your neck. Once your elbow is flexed to 90 degrees, straighten the arm back to the starting position.",
            tips:         "Adjust the resistance by changing the length on the Elastic Band. Experiment until you find your optimal level of resistance. Keep your upper-elbow stationary avoid allowing it to flare outwards. Stay upright and keep your Abdominals tight."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Skull Crusher",
            muscle_list:  "Triceps",
            equipment_id: Equipment.find_or_create_by_name("EZ Bar").id,
            type_list:    "Muscle",
            description:  "Lie down, face up on a Flat Bench. Raise the EZ-Bar over your Chest and extend your arms until they are perfectly vertical. Bend your elbows and lower the bar towards the top of the head. As your elbows reach a 90 degree angle, pause briefly and return back to the starting position.",
            tips:         "Perform the exercise slowly to avoid any impact with your head and avoid excessively bending your elbows to prevent straining of your elbow joint. Keep the upper-arms vertical and avoid flaring the elbows to assist in the movement."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Skull Crusher (Dumbbells)",
            muscle_list:  "Triceps",
            equipment_id: Equipment.find_or_create_by_name("Dumbbells").id,
            type_list:    "Muscle",
            description:  "Lying down, face up on a Flat Bench. Raise the Dumbbells over your Chest so the arms are perfectly vertical. Keep the elbows in place and lower the Dumbbells towards the top of the head. As your elbows reach a 90 degree angle, pause briefly and return back to the starting position.",
            tips:         "Perform the exercise slowly to avoid any impact with your head and avoid excessively bending your elbows to prevent straining of your elbow joint. Keep the upper-arms vertical and avoid flaring the elbows to assist in the movement."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Close Grip Push Up (On Toes)",
            muscle_list:  "Triceps",
            equipment_id: Equipment.find_or_create_by_name("").id,
            type_list:    "Muscle",
            description:  "Kneel down on the ground and place your hands in line with your Shoulders but only an inch or two apart. Extend your legs out straight and balance on your toes. Slowly lower your Chest to the ground by bending at the elbows. Pause briefly before your touch the floor and push back up to your starting position.",
            tips:         "Engage your core to prevent your hips from sagging. Avoid locking out your elbows and exhale as you push upwards."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Close Grip Push Up (On Knees)",
            muscle_list:  "Triceps",
            equipment_id: Equipment.find_or_create_by_name("").id,
            type_list:    "Muscle",
            description:  "Kneel down on the ground and place your hands in line with your Shoulders but only an inch or two apart. Keeping the knees on the ground, slowly lower your Chest to the ground by bending at the elbows.  Pause briefly before your touch the floor and push back up to your starting position.",
            tips:         "Engage your core to prevent your hips from sagging. Avoid locking out your elbows and exhale as you push upwards."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Bench Dip",
            muscle_list:  "Triceps",
            equipment_id: Equipment.find_or_create_by_name("Bench").id,
            type_list:    "Muscle",
            description:  "Sit on a Bench and place your hands beside your hips. Position your hands so all pressure is taken through the butt of the palm to minimise stress on your wrist joint. Slowly lower your backside towards the ground until your elbows are at 90 degrees. Straighten your arms and return back to the starting position.",
            tips:         "Maintain good posture with your Chest out and Shoulders blades back. Keep your Buttocks near the bench at all times and avoid a hard lock of your elbows on the extension of your arms."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Parallel Bar Dips",
            muscle_list:  "Triceps",
            equipment_id: Equipment.find_or_create_by_name("Parallel Bars").id,
            type_list:    "Muscle",
            description:  "Stand securely on the elevated step of the Parallel Bar apparatus. Start with your arms extended, holding your entire body weight. Your legs can be straight or crossed depending on your height or the height of the Parallel Bars. While maintaining good posture, lower your body towards the ground to a point where your elbows are bent at 90 degrees. Straighten your arms to full extension but don't fully lock them out.",
            tips:         "Maintain good posture with your Chest out and Shoulders back. Avoid lowering your body to a point where your elbows are flexed to less than 90 degrees. Exhale as you extend your arms and always perform the exercise in a slow and controlled manner."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Close Grip Bench Press",
            muscle_list:  "Triceps",
            equipment_id: Equipment.find_or_create_by_name("Barbell").id,
            type_list:    "Muscle",
            description:  "Lie flat on the Bench with your feet firmly pressed into the floor. Grasp the bar slightly narrower than Shoulder-width. Remove the Bar from the supports and lower the Bar to just above the Lower-Chest. Push the Bar upwards until your arms are straight, pause briefly and return to the start position.",
            tips:         "Don't expect to use as much weight as with regular Bench press as you won't have as much Chest involvement. Allow your wrists to adapt gradually to the added strain of the close grip. Keep your core engaged and at all times, keep the Shoulders and hips in contact with the Bench."
          )

        


          Exercise.find_or_create_by_name(
            name:         "One Arm Kickback (Cable)",
            muscle_list:  "Triceps",
            equipment_id: Equipment.find_or_create_by_name("Cable Machine").id,
            type_list:    "Muscle",
            description:  "Attach a single handle to the lowest anchor point on the Cable Machine. Place one knee and hand on a bench for support. Bend over at the hips so your back is parallel to the floor. Grasp the handle in your free hand and raise your upper-arm so it is parallel to the ground. Allow your forearm to hang vertically. Keeping your upper-arm and elbow stationary, straighten your arm to full extension. Pause briefly and slowly return to the starting position.",
            tips:         "Keep your upper-arm horizontal at all times. Lower and raise the handle slowly to avoid momentum assistance. Perform this exercise in a slow and controlled manner to avoid irritation of the elbow joint."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Forward Tricep Extension",
            muscle_list:  "Triceps",
            equipment_id: Equipment.find_or_create_by_name("Cable Machine").id,
            type_list:    "Muscle",
            description:  "Attach a two ended rope handle to the Cable Machine anchor at head height. Grasp the ends of the ropes with both hands and turn away from the anchor and weight stack. In a staggered stance, position your upper-arms by the side of your head with your elbows pointing upwards. Extend your arms and pull the rope handles upwards and forwards. Slowly lower the ropes back to their starting position.",
            tips:         "Keep your elbows stationary to isolate your Triceps. Keep your body still to eliminate momentum and to maintain control of speed. This exercise can also be done with a Straight Bar or Curved Bar."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Tricep Stretch",
            muscle_list:  "Triceps",
            equipment_id: Equipment.find_or_create_by_name("").id,
            type_list:    "Stretch",
            description:  "Straighten one arm directly overhead. Bend your elbow so that your hand reaches behind your neck and down your back. Grasp your elbow with your opposite hand and gently place pressure downwards and across your body. Repeat on the opposite arm.",
            tips:         "Ensure that you do this stretch gently and release it slowly. As with all stretching, you should feel a light stretch, not pain or discomfort."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Tricep Stretch With Towel",
            muscle_list:  "Triceps",
            equipment_id: Equipment.find_or_create_by_name("Towel").id,
            type_list:    "Stretch",
            description:  "Grasp the end of a Towel with one hand and position it behind your head and down your Back. Position your elbow your beside your head. Reach behind your Lower-Back with your other arm and grasp the opposite end of the Towel. Pull downwards on the towel to create a stretch in your Tricep.",
            tips:         "Perform this exercise in a slow and controlled manner. With all stretching, you should feel a light stretch not pain or discomfort. Avoid sudden release of this stretch or over stretching."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Tricep Pushdown (Resistance Band)",
            muscle_list:  "Triceps",
            equipment_id: Equipment.find_or_create_by_name("Resistance Band").id,
            type_list:    "Muscle",
            description:  "Loop the Resistance Band over a horizontal structure above your head. Once secure, grasp the ends of the Resistance Band and adjust the position of your hands to keep it tight. Start with your feet Shoulder-width apart and elbows bent at 90 degrees. Extend your arms until straight. Pause briefly and slowly return to the start position.",
            tips:         "Maintain upright posture at all times. Perform the exercise slowly and in a controlled manner. Completely straighten your arms but avoid a hard lock out of the elbows."
          )

        
end