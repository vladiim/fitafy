#!/bin/env ruby 
# encoding: utf-8

def create_core

          Exercise.find_or_create_by_name(
            name:         "Sit Up",
            muscle_list:  "Core",
            equipment_id: Equipment.find_or_create_by_name("").id,
            type_list:    "Muscle",
            description:  "Begin on the ground in a supine (face up) position with your knees positioned at 90 degrees. Place your hands behind your head with your elbows pointing outwards. Slowly contract your Abdominals to raise your Shoulder Blades off the ground. Pause briefly and slowly return to start position.",
            tips:         "Keep your vision upwards and always perform this exercise in a slow and controlled manner. Exhale as your contract your Abdominals."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Abdominal Crunch",
            muscle_list:  "Core",
            equipment_id: Equipment.find_or_create_by_name("Swiss Ball").id,
            type_list:    "Muscle",
            description:  "Begin seated on the Swiss Ball with your feet Shoulder-width apart. Slowly roll down until your lumbar spine is comfortably curving with the contour of the Swiss Ball. Engage the Lower-Abdominals to stabilise your hips and then roll your upper-torso up the Swiss Ball until you can feel your Abdominals contracting. Pause briefly and slowly return to the start position.",
            tips:         "Keep your vision upwards and always perform this exercise in a slow and controlled manner. Exhale as your contract your abdominals."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Reverse Crunch",
            muscle_list:  "Core",
            equipment_id: Equipment.find_or_create_by_name("").id,
            type_list:    "Muscle",
            description:  "Lie down on the floor, face up with your hands down by your sides. With your legs bent at 90 degrees, bring your knees up towards your Chest by slightly raising your hips up off the ground. Pause briefly and return to start position.",
            tips:         "Perform in slow and controlled manner and avoid momentum to complete the exercise. Keep your legs straight to increase the difficulty of the exercise."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Bicycle Sit Up",
            muscle_list:  "Core",
            equipment_id: Equipment.find_or_create_by_name("").id,
            type_list:    "Muscle",
            description:  "Lie on the floor with your legs bent at 90 degrees. Raise your heels off the ground and place your hands behind your head. Contract your Abdominals to raise both Shoulder blades off the ground. Proceed to move your left elbow towards the right knee while extending the left leg out straight to 45 degrees. Complete this movement on the opposite side and continue to alternate repetitions without pause.",
            tips:         "Keep your Abdominals contracted throughout the entire movement. Complete for desired number of repetitions or a period of time."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Side Plank",
            muscle_list:  "Core",
            equipment_id: Equipment.find_or_create_by_name("").id,
            type_list:    "Muscle",
            description:  "Lie down on one side with your feet scissored for stability. Take your bodyweight onto your elbow and Forearm and then raise the hips to form a straight line in your body. The only points of contact with the ground should be the arm and side of the feet.",
            tips:         "Keep your elbow directly under your Shoulder and leave your opposite arm for support or safety. Keep your Shoulders back and look straight ahead."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Side Plank (Knee On Ground)",
            muscle_list:  "Core",
            equipment_id: Equipment.find_or_create_by_name("").id,
            type_list:    "Muscle",
            description:  "Lie down on one side with your your bottom leg bent at 90 degrees. Take your bodyweight onto your arm and lower placed knee. Raise the hips to form a straight line in the body from knee to Shoulder.",
            tips:         "Keep your elbow directly under your Shoulder and leave your opposite arm for support or safety. Keep your Shoulders back and look straight ahead."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Plank (On Toes)",
            muscle_list:  "Core",
            equipment_id: Equipment.find_or_create_by_name("").id,
            type_list:    "Muscle",
            description:  "Start face-down with your feet Shoulder-width apart. Take your bodyweight into your Forearms and elbows. Raise your Chest, hips and knees off the ground to distribute your weight over your toes and elbows.",
            tips:         "This is an isometric exercise. Hold this position with minimal movement. Keep your vision downwards and engage the Abdominals to prevent your hips and lower back from sagging."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Plank With Toe Taps",
            muscle_list:  "Core",
            equipment_id: Equipment.find_or_create_by_name("").id,
            type_list:    "Muscle",
            description:  "Start face-down with your feet Shoulder-width apart. Take your bodyweight in to your Forearms and elbows. Raise your Chest, hips and knees off the ground to distribute your weight over your toes and elbows. Move one leg outwards without changing the alignment of the hips, tap the ground with your toes and return to starting position. Repeat on the other side.",
            tips:         "Engaging the abdominals will prevent your hips and Lower-Back from sagging. Continue to breathe throughout the exercise."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Plank (On Knees)",
            muscle_list:  "Core",
            equipment_id: Equipment.find_or_create_by_name("").id,
            type_list:    "Muscle",
            description:  "Start face-down with your feet Shoulder-width apart. Take your bodyweight into your Forearms and elbows. Position your elbows directly under your Shoulders. Raise your Chest and hips off the ground to distribute your weight over your knees and elbows.",
            tips:         "This is an isometric exercise. Hold this position with minimal movement. Keep your vision downwards and engage the Abdominals to prevent your hips and lower back from sagging."
          )

        


          Exercise.find_or_create_by_name(
            name:         "V-Sit Up",
            muscle_list:  "Core",
            equipment_id: Equipment.find_or_create_by_name("").id,
            type_list:    "Muscle",
            description:  "Sit on the floor upright with your knees tucked into your Chest. Place your hands by your sides for stability. Simultaneously slowly recline your torso and extend your legs out in front to engage the Abdominals. Pause briefly and return to the start position.",
            tips:         "Perform in a slow and controlled manner and avoid momentum to complete the exercise. Inhale on the extension of the legs and exhale on the return to the start position."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Incline Reverse Crunch",
            muscle_list:  "Core",
            equipment_id: Equipment.find_or_create_by_name("").id,
            type_list:    "Muscle",
            description:  "Lie down on an Incline Bench or a Flat Bench that has been raised on one end with a Box or Step. Grasp the Bench underneath your head for stability and set your knees at 90 degrees. Slowly lift your knees towards Chest, pause briefly and then return to starting position.",
            tips:         "Perform in a slow and controlled manner. Concentrate on using the Abdominals to complete the movement and not the pulling with the arms. Straighten your legs to increase the difficulty of the exercise."
          )

        


          Exercise.find_or_create_by_name(
            name:         "BOSU Crunch + Hip Flexion",
            muscle_list:  "Core",
            equipment_id: Equipment.find_or_create_by_name("BOSU").id,
            type_list:    "Muscle",
            description:  "Lie back over the BOSU with your buttocks more towards the front edge. Place your hands behind your head with your elbows pointed outwards. Perform a slow contraction of the Abdominals to raise the Shoulder blades off the BOSU and simultaneously bring one knee towards your Chest. Pause briefly and return to start position. Repeat with other leg.",
            tips:         "A contraction of the Abdominals is required during this entire movement. Keep you vision upwards and Exhale on the up phase of the crunch movement"
          )

        


          Exercise.find_or_create_by_name(
            name:         "Renegade Row (Dumbbells)",
            muscle_list:  "Core",
            equipment_id: Equipment.find_or_create_by_name("Dumbbells").id,
            type_list:    "Muscle",
            description:  "Grasp two Dumbbells and set up in a push up position (toes or knees) with your hands placed slightly wider than your Shoulders. Slowly pull one of the Dumbbells up to the side of your Chest. Pause briefly and return to the start position. Repeat on the other side.",
            tips:         "Maintain good posture during this movement. Exhale on the vertical rowing motion of this exercise and at all times, keep your vision downwards."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Mountain Climber",
            muscle_list:  "Core",
            equipment_id: Equipment.find_or_create_by_name("").id,
            type_list:    "Muscle",
            description:  "Start face-down with your feet Shoulder-width apart. Position your hands and arms directly under your Shoulders to maximise stability. Raise your entire body off the ground to set a push up position. Slowly bring one knee towards the upper-arm of the corresponding side for contact. Slowly return to start position and repeat on the opposite side.",
            tips:         "Avoid any arching or sagging of your Back. Encourage the use of the side Abdominals to perform the movement. Keep your vision downwards during the exercise."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Hanging Knee Raises",
            muscle_list:  "Core",
            equipment_id: Equipment.find_or_create_by_name("").id,
            type_list:    "Muscle",
            description:  "Hold onto a Chin Up Bar or similar with an overhand grip. Take all your weight into your arms and hang with your body in a straight position. Slowly lift your knees towards your Chest, pause briefly and then return to starting position.",
            tips:         "Perform in a slow and controlled manner and avoid swinging to complete the exercise. Straighten your legs to increase the difficulty of the exercise."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Wood Chop",
            muscle_list:  "Core",
            equipment_id: Equipment.find_or_create_by_name("Cables").id,
            type_list:    "Muscle",
            description:  "Connect a Cable Handle to an anchor setting of Shoulder-height or above on the Cable Machine. Position yourself with your feet facing forwards, side on to the Cable Handle. Stand approximately one metre away and grasp the Cable Handle with extended arms and a rotation in the torso. While keeping your arms straight, rotate against the resistance and pull the Cable Handle down towards the opposite hip and knee. Return to the start position.",
            tips:         "Keep the knees slightly bent, the arms softly extended and perform the exercise in a slow and controlled manner. Engage the Abdominals through out the entire exercise for stability. Exhale as you rotate."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Wood Chop On BOSU",
            muscle_list:  "Core",
            equipment_id: Equipment.find_or_create_by_name("Cables").id,
            type_list:    "Muscle",
            description:  "Connect a Cable Handle to an anchor setting of Shoulder-height or above on the Cable Machine. Set up a BOSU approximately one metre away. Position yourself with your feet Shoulder-width apart, facing forwards on top of the BOSU but side on to the Cable Handle. Grasp the Cable Handle with extended arms and a rotation in the torso. While keeping your arms straight, rotate against the resistance and pull the Cable Handle down towards the opposite hip and knee. Return to the start position.",
            tips:         "Keep the knees slightly bent, the arms softly extended and perform the exercise in a slow and controlled manner. Engage the Abdominals throughout the entire exercise for stability. Exhale as you rotate."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Leg Raises",
            muscle_list:  "Core",
            equipment_id: Equipment.find_or_create_by_name("").id,
            type_list:    "Muscle",
            description:  "Lie down face-up on the ground with your hands by your sides. Raise your slightly bent legs to vertical and then engage your Abdominals to maintain your natural curve in spine. Slowly lower your legs towards the ground until you feel your lower Back arch increase. Pause and return to start position.",
            tips:         "Perform in slow and controlled manner. Avoid lowering the legs to far to soon as this may engage the Lower-Back."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Back Extension",
            muscle_list:  "Core",
            equipment_id: Equipment.find_or_create_by_name("").id,
            type_list:    "Muscle",
            description:  "Position yourself face-down on the ground with your hands down by your sides. Keeping your head position fixed with your vision downwards, raise your Chest off the ground to engage the Lower-Back and Glutes.",
            tips:         "Perform in slow and controlled manner and minimise momentum to complete the exercise. Rotate the arms outwards and squeeze the Shoulder blades together to maximise the effect of this exercise."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Reverse Back Extension",
            muscle_list:  "Core",
            equipment_id: Equipment.find_or_create_by_name("").id,
            type_list:    "Muscle",
            description:  "Position yourself face-down on the ground with your hands down by your sides. Raise your legs until you engage the Glutes and lower back. Pause briefly and return to the start position.",
            tips:         "Keep looking downwards. Turn your feet out to increase contraction of the buttocks and perform in a slow and controlled manner."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Trunk Twists",
            muscle_list:  "Core",
            equipment_id: Equipment.find_or_create_by_name("Weight plate").id,
            type_list:    "Muscle",
            description:  "Sit on the ground with your feet raised. Lean back slightly to engage the Abdominals. Cross your arms over your Chest or hold a weight plate to your Chest and rotate to one side. Rotate as far as comfortably possible and return to centre start position. Repeat on the opposite side.",
            tips:         "Keep your Abdominals engaged at all times during this exercise and avoid any round or arching of the lumbar spine."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Lying Trunk Twists",
            muscle_list:  "Core",
            equipment_id: Equipment.find_or_create_by_name("").id,
            type_list:    "Muscle",
            description:  "Lie flat on the ground with your arms out wide but in-line with your Shoulders. Raise your extended legs so they are vertical. Whilst keeping your Shoulder blades in contact with the ground, slowly lower your legs to one side. Pause once you have contact with the ground or if your Shoulders rise. Pause briefly and then return to the start position. Repeat on the other side.",
            tips:         "Keep your Abdominals engaged at all times during this exercise and avoid any arching of the lumbar spine. Perform in slow and controlled manner and minimise momentum to complete the exercise. Commence with a small range of motion and build as your strength increases."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Lying Trunk Twists (Swiss Ball)",
            muscle_list:  "Core",
            equipment_id: Equipment.find_or_create_by_name("Swiss Ball").id,
            type_list:    "Muscle",
            description:  "Lie flat on the ground with your arms out wide but in-line with your Shoulders. Bend your knees to 90 degrees and place your heels on top of the Swiss Ball. Whilst keeping your Shoulders in contact with the ground, slowly lower your legs to one side until your knees reach a 45 degree angle. Pause briefly and then return to the start position. Repeat on the other side.",
            tips:         "Keep your Abdominals engaged at all times during this exercise and avoid any arching of the lumbar spine. Perform in slow and controlled manner and minimise momentum to complete the exercise. Commence with a small range of motion and build as your strength increases."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Butterfly Sit Ups",
            muscle_list:  "Core",
            equipment_id: Equipment.find_or_create_by_name("").id,
            type_list:    "Muscle",
            description:  "Lie flat on the ground with your knees bent at 90 degrees. Lower your knees outwards  and place your hands behind your head with your elbows flared. Sit up from this position until your torso is vertical and then return slowly to the start position.",
            tips:         "Perform in slow and controlled manner. Keep your Buttocks on the ground at all times. Avoid bringing your elbows together which will prevent pulling on the back of the neck."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Cross Under Knee Tucks",
            muscle_list:  "Core",
            equipment_id: Equipment.find_or_create_by_name("").id,
            type_list:    "Muscle",
            description:  "Start face-down  and assume a Push Up position with your feet Shoulder-width apart. Raise one knee up and across your Chest towards your opposite Shoulder. Contract as much as possible and slowly return to starting position. Repeat with the opposite knee.",
            tips:         "Engage the Abdominals to prevent your hips and Lower-Back from sagging. Look downwards and avoid holding your breath."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Cross Under Knee Tucks (BOSU)",
            muscle_list:  "Core",
            equipment_id: Equipment.find_or_create_by_name("BOSU").id,
            type_list:    "Muscle",
            description:  "Start face-down holding the BOSU. Position your feet Shoulder-width apart and take your bodyweight in to your fully extended arms and hands. Raise one knee up and across your Chest towards your opposite Shoulder. Contract as much as possible and slowly return to starting position. Repeat on the other side.",
            tips:         "Engage the Abdominals to prevent your hips and Lower-Back from sagging. Look downwards and avoid holding your breath."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Plank With Toe Taps (BOSU)",
            muscle_list:  "Core",
            equipment_id: Equipment.find_or_create_by_name("BOSU").id,
            type_list:    "Muscle",
            description:  "Take your bodyweight into your toes and your Forearms on top of a BOSU. Keep your elbows directly under your Shoulders. Take one leg outwards as far as possible, tap the ground and then return to starting plank position.",
            tips:         "Engage the Abdominals to prevent your hips and Lower-Back from sagging. Start with the BOSU round side up first and then progress to flat side up once mastered. Keep your vision downwards and maintain breathing during the exercise."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Rotating Wall Throws",
            muscle_list:  "Core",
            equipment_id: Equipment.find_or_create_by_name("Medicine Ball").id,
            type_list:    "Muscle",
            description:  "Hold a Medicine Ball and stand side-on to a wall about a metre away. Hold the Medicine Ball at your hip furthest away from the wall. While maintaining good posture, explosively rotate the torso and throw the Medicine Ball against the wall. Catch the Medicine Ball and return to the starting position.",
            tips:         "Keep the core engaged to maintain posture when performing this movement. Exhale as you exert force to throw the Medicine Ball. Rotate the hips, knee and heel outwards to create greater momentum."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Plank With Toe Taps (Medicine Ball)",
            muscle_list:  "Core",
            equipment_id: Equipment.find_or_create_by_name("Medicine Ball").id,
            type_list:    "Muscle",
            description:  "Take your bodyweight into your toes and your hands which are placed on top of a Medicine Ball. Position your elbows directly under your Shoulders. Take one leg outwards as far as possible, tap the ground and then return to starting plank position.",
            tips:         "This is a dynamic exercise so keep the core engaged to maintain your posture. Engaging the Abdominals will prevent your hips and Lower-Back from sagging. Look down the entire time."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Plank To Push Up (On Toes)",
            muscle_list:  "Core",
            equipment_id: Equipment.find_or_create_by_name("").id,
            type_list:    "Muscle",
            description:  "Take your bodyweight into your toes and your Forearms on the ground. Position your elbows directly under your Shoulders. Place one hand on the ground slightly wider than your Shoulder. Once completed with one hand, do the same with the opposite hand. Straighten your arms to assume a push up position. Slowly bring one elbow back to the ground, followed by the other to return to the starting plank position.",
            tips:         "Keep the core engaged to maintain posture when performing this movement. Look down and continue breathing throughout the exercise."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Plank To Push Up (On  Knees)",
            muscle_list:  "Core",
            equipment_id: Equipment.find_or_create_by_name("").id,
            type_list:    "Muscle",
            description:  "Take your bodyweight into your knees and your Forearms on the ground. Position your elbows directly under your Shoulders. Place one hand on the ground slightly wider than your Shoulder. Once completed with one hand, do the same with the opposite hand. Straighten your arms to assume a push up position. Slowly bring one elbow back to the ground, followed by the other to return to the starting plank position.",
            tips:         "Keep the core engaged to maintain posture when performing this movement. Look down and continue breathing throughout the exercise."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Reverse Wood Chops",
            muscle_list:  "Core",
            equipment_id: Equipment.find_or_create_by_name("Cables").id,
            type_list:    "Muscle",
            description:  "Connect a Cable Handle to the bottom setting of the Cable Machine. Position yourself with your feet facing forwards and side on to the Cable Handle. Stand approximately one metre away and grasp the Cable Handle with extended arms and a rotation in the torso. While keeping your arms straight, rotate against the resistance and pull the Cable Handle upwards towards the opposite Shoulder. Rotate back to the start position.",
            tips:         "Keep the knees slightly bent, the arms softly extended and perform the exercise in a slow and controlled manner. Engage the Abdominals through out the entire exercise for stability. Exhale as you rotate."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Russian Twists",
            muscle_list:  "Core",
            equipment_id: Equipment.find_or_create_by_name("Swiss Ball").id,
            type_list:    "Muscle",
            description:  "Lie on a Swiss Ball with your head and Upper-Back in contact. Place your feet under your knees and extend your hip upwards. Clasp your hands together and extend your arms vertically. From this position, rotate your torso until it is parallel to the ground while only having contact with one Shoulder. Slowly rotate back to your start position and repeat towards other side.",
            tips:         "Perform the exercise in a slow and controlled manner. Engage your Abdominals and maintain the height of your hips. You may hold a Medicine Ball or Weight Plate to increase intensity."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Prone Ball Rotation (With Legs)",
            muscle_list:  "Core",
            equipment_id: Equipment.find_or_create_by_name("Swiss Ball").id,
            type_list:    "Muscle",
            description:  "Start face-down in a push up position with your shins on top of the Swiss Ball. While maintaining alignment between your knees and Shoulders, slowly rotate the Swiss Ball to one side. Pause briefly at your tipping point and return to your start position. Repeat on the other side.",
            tips:         "Keep your Abdominals engaged at all times during this exercise and avoid any round or arching of the lumbar spine. Maintain a natural curve of the lumbar spine with your Shoulders back. Look down."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Prone Ball Rotation (With Torso)",
            muscle_list:  "Core",
            equipment_id: Equipment.find_or_create_by_name("Swiss Ball").id,
            type_list:    "Muscle",
            description:  "Start face-down with your torso on top of the Swiss Ball. Place your feet Shoulder-width apart with a slight bend in the knees. Slowly rotate the Swiss Ball to one side. Pause briefly at your tipping point and return to your start position. Repeat on the other side.",
            tips:         "Keep the legs stationary and control the movement using your core. Keep your spine as straight as possible and maintain vision downwards."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Pike",
            muscle_list:  "Core",
            equipment_id: Equipment.find_or_create_by_name("Swiss Ball").id,
            type_list:    "Muscle",
            description:  "Start in a push up position with your hands on the floor and shins resting on the top of the Swiss Ball. Whilst keeping your arms and legs straight, roll the Swiss Ball in towards your Chest as you raise your hips high in the air. Let your feet roll across the ball until your toes are in contact. Once your hips are at the their peak, slowly roll the ball back out to the starting position.",
            tips:         "Perform the exercise in a slow and controlled manner. Keep the torso stationary and perform the movement using your legs and Abdominals. Keep your head in a neutral position and vision downwards."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Roll Away",
            muscle_list:  "Core",
            equipment_id: Equipment.find_or_create_by_name("Swiss Ball").id,
            type_list:    "Muscle",
            description:  "Start by kneeling on the ground with your Forearms and hands resting on the Swiss Ball. Maintain a straight line in your body between your Shoulders and knees. Proceed to slowly roll the Swiss Ball forwards with an extension of the arms. Pause briefly and roll back in to your starting position.",
            tips:         "Look forwards and keep your Abdominals engaged at all times. Perform in a slow and controlled manner. Exhale as you roll forward."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Jack Knife",
            muscle_list:  "Core",
            equipment_id: Equipment.find_or_create_by_name("Swiss Ball").id,
            type_list:    "Muscle",
            description:  "Start face-down in a push up position and place the front of your ankles on top of the Swiss Ball. Maintain straight arms directly under your Shoulders. Bend your knees and slowly bring them towards your Chest. Pause briefly at peak contraction and return to start position.",
            tips:         "Perform the exercise in a slow and controlled manner. Keep your torso stationary and hold your head in a neutral position. Look downwards."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Abdominal Side Crunch (Crossed Arms)",
            muscle_list:  "Core",
            equipment_id: Equipment.find_or_create_by_name("Swiss Ball").id,
            type_list:    "Muscle",
            description:  "Start with one hip securely on the Swiss Ball and your Legs scissored for stability. Cross your arms over your Chest. While keeping your Shoulders facing forward, contract the Abdominals sideways to move the upper-torso upwards away from the Swiss Ball.",
            tips:         "Look forwards and perform this exercise in a slow and controlled manner. Exhale as your contract your Abdominals."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Abdominal Side Crunch (Hands Behind Head)",
            muscle_list:  "Core",
            equipment_id: Equipment.find_or_create_by_name("Swiss Ball").id,
            type_list:    "Muscle",
            description:  "Start with one hip securely on the Swiss Ball and your legs scissored for stability. Place your hands behind your head interlocking your fingers. While keeping your Shoulders facing forward, contract your Abdominals sideways to move the upper-torso upwards away from the Swiss Ball.",
            tips:         "Look forwards and perform this exercise in a slow and controlled manner. Exhale as your contract your Abdominals."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Reverse Crunch (Swiss Ball)",
            muscle_list:  "Core",
            equipment_id: Equipment.find_or_create_by_name("Swiss Ball").id,
            type_list:    "Muscle",
            description:  "Lie down on the ground, face up with your hands down by your sides. Place the Swiss Ball between your knees and give it a gentle squeeze. Whilst maintaining a relaxed torso, pull your knees in towards your Chest to achieve a contraction of the Abdominals.",
            tips:         "Perform the exercise slowly and engage the Abdominals before bringing your knees towards the Chest. Exhale as your contract your Abdominals."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Plank (Swiss Ball)",
            muscle_list:  "Core",
            equipment_id: Equipment.find_or_create_by_name("Swiss Ball").id,
            type_list:    "Muscle",
            description:  "Face the Swiss Ball with your knees on the ground and your Forearms on the Swiss Ball. While keeping a neutral spine and Abdominals engaged, take your weight into your Forearms. Raise your knees off the ground to create a straight line between your Shoulders, knees and ankles.",
            tips:         "This is an isometric exercise so hold this position with minimal movement. Engaging the Abdominals will prevent your hips and lower Back from sagging. Maintain normal breathing during this exercise."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Bridge (Swiss Ball)",
            muscle_list:  "Core",
            equipment_id: Equipment.find_or_create_by_name("Swiss Ball").id,
            type_list:    "Muscle",
            description:  "Lie down on the ground face up, with your heels positioned on top of the Swiss Ball. With  your arms down by your side for stability, push your hips upwards to align your heels, hips and Shoulders. Hold this position briefly and slowly return to the start position.",
            tips:         "To increase the difficulty of this exercise, cross your arms over your Chest or straighten your arms vertically. Minimising contact with the ground will decrease the stability of the exercise. Keep looking upwards."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Superman (Swiss Ball)",
            muscle_list:  "Core",
            equipment_id: Equipment.find_or_create_by_name("Swiss Ball").id,
            type_list:    "Muscle",
            description:  "Position your body face-down over the centre of the Swiss Ball. Have both hands and feet touching the ground for balance. Raise one straight arm to the height of the Shoulder and the opposite leg to the height of the hip. Pause briefly and slowly return to the starting position. Repeat on the other side and continue to alternate.",
            tips:         "Engage the Abdominals and continue breathing throughout the movement. Look down and perform the exercise slowly and in a controlled manner."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Knees To Elbows",
            muscle_list:  "Core",
            equipment_id: Equipment.find_or_create_by_name("Pull Up Bar").id,
            type_list:    "Crossfit",
            description:  "Hang from a Pull Up Bar or from Rings with your hands Shoulder-width apart. Bring your knees towards your elbows with a flexion of your torso to activate your Abdominal wall. Slowly return to the starting position.",
            tips:         "Minimising swing or momentum will increase the intensity of the exercise. Ensure you maintain good head position and posture and maintain your vision forwards."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Prone Ab Stretch",
            muscle_list:  "Core",
            equipment_id: Equipment.find_or_create_by_name("").id,
            type_list:    "Stretch",
            description:  "Lie face down on the ground. Prop yourself up onto your hands and straighten your arms. This will raise your entire torso off the ground. Keep your hips firmly on the ground to feel a stretch in your Abdominal area. Slowly lower your Chest back down to the ground.",
            tips:         "With all stretching, you should feel a light stretch not pain or discomfort. Careful if you are prone to lower back injuries. Exhale as you gently stretch."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Knees To Chest Stretch",
            muscle_list:  "Core",
            equipment_id: Equipment.find_or_create_by_name("").id,
            type_list:    "Stretch",
            description:  "Lie on your Back and bring both knees towards your Chest. Grasp the top of your knees or your shins and pull them further into your Chest.",
            tips:         "With all stretching, you should feel a light stretch not pain or discomfort. You should feel a stretch in your Buttocks and Lumbar Spine."
          )

        


          Exercise.find_or_create_by_name(
            name:         "TRX Plank (Toes)",
            muscle_list:  "Core",
            equipment_id: Equipment.find_or_create_by_name("TRX").id,
            type_list:    "Muscle",
            description:  "Start face-down and secure your feet in the TRX straps. Ensure the TRX is vertical with your feet Shoulder-width apart. Stretch forward to create a straight line in your body and take your bodyweight into your Forearms and elbows. Keep your elbows directly under your Shoulders.",
            tips:         "This is an isometric exercise, so try and hold this position with minimal movement. Engaging the Abdominals will prevent your hips and Lower-Back from sagging. Keep a neutral head position by looking downwards."
          )

        


          Exercise.find_or_create_by_name(
            name:         "TRX Plank (Hands)",
            muscle_list:  "Core",
            equipment_id: Equipment.find_or_create_by_name("TRX").id,
            type_list:    "Muscle",
            description:  "Start face-down and securely grasp the TRX straps. Maintain straight arms directly under your Shoulders. Raise you hips to create a straight line in your body while taking your bodyweight in to your hands and feet.",
            tips:         "This is an isometric exercise, so try and hold this position with minimal movement. Engaging the Abdominals will prevent your hips and Lower-Back from sagging. Keep a neutral head position by looking downwards."
          )

        


          Exercise.find_or_create_by_name(
            name:         "TRX Jack knife",
            muscle_list:  "Core",
            equipment_id: Equipment.find_or_create_by_name("TRX").id,
            type_list:    "Muscle",
            description:  "Start face-down and secure your feet in the TRX straps. Stretch forward and take your bodyweight into your hands. Extend your arms and raise your hips to create a straight line in your body. Slowly pull your knees towards your Chest. Pause briefly and return to the starting position.",
            tips:         "Engaging the Abdominals will prevent your hips and Lower-Back from sagging. Keep a neutral head position by looking downwards."
          )

        


          Exercise.find_or_create_by_name(
            name:         "TRX Piques",
            muscle_list:  "Core",
            equipment_id: Equipment.find_or_create_by_name("TRX").id,
            type_list:    "Muscle",
            description:  "Start face-down and secure your feet in the TRX straps. Stretch forward and take your bodyweight into your hands. Extend your arms and raise 
your hips to create a straight line in your body. Elevate your hips as high as possible while maintaining straight legs. Pause briefly at the peak and slowly return to plank position.",
            tips:         "Engaging the Abdominals will prevent your hips and Lower-Back from sagging. Keep a neutral head position by looking downwards."
          )

        


          Exercise.find_or_create_by_name(
            name:         "TRX Roll Outs (knees)",
            muscle_list:  "Core",
            equipment_id: Equipment.find_or_create_by_name("TRX").id,
            type_list:    "Muscle",
            description:  "Kneel down and grasp the TRX with both hands while upright. While engaging your Abdominals and maintaining straight arms, lean forwards to lower your body weight into the TRX straps. Extend your arms out in front to engage the core further. Slowly return to the starting position.",
            tips:         "If you sense your Lower-Back or hips begin to sag or your backside stick outwards, return to the start position. Place a foam mat under the knees for comfort if required. Keep a neutral head position by looking downwards."
          )

        


          Exercise.find_or_create_by_name(
            name:         "TRX Roll Outs (Standing)",
            muscle_list:  "Core",
            equipment_id: Equipment.find_or_create_by_name("TRX").id,
            type_list:    "Muscle",
            description:  "Stand upright and grasp the TRX with both hands. While engaging your Abdominals and maintaining straight arms, lean forwards to lower your body weight into the TRX straps. Extend your arms out in front to engage the core further. Slowly return to the starting position.",
            tips:         "If you sense your Lower-Back or hips begin to sag or your backside stick outwards, return to the start position. Place a foam mat under the knees for comfort if required. Keep a neutral head position by looking downwards."
          )

        


          Exercise.find_or_create_by_name(
            name:         "TRX Mountain Climbers",
            muscle_list:  "Core",
            equipment_id: Equipment.find_or_create_by_name("TRX").id,
            type_list:    "Muscle",
            description:  "Start face-down and secure your feet in the TRX straps. Take your bodyweight into your hands and arms, which are positioned directly under your Shoulders. As you maintain a plank position, slowly bring one knee towards the upper-arm of the corresponding side for contact. Slowly return to start position and repeat on the opposite side",
            tips:         "Your goal is to maintain and body alignment. Once you sense your Lower-Back or hips begin to sag or your backside stick outwards, return to start position. Keep a neutral head position by looking downwards."
          )

        


          Exercise.find_or_create_by_name(
            name:         "TRX Side Plank",
            muscle_list:  "Core",
            equipment_id: Equipment.find_or_create_by_name("TRX").id,
            type_list:    "Muscle",
            description:  "Lie down on one side and secure your feet in the TRX straps. With your feet scissored for stability, take your bodyweight into your elbow and Forearm.  Raise your hips off the ground and hold your body in a parallel to the ground position.",
            tips:         "Maintain your elbow directly under your Shoulder and leave your opposite arm for support or safety. You may place it on your hip once comfortable. Keep your vision forwards."
          )

        


          Exercise.find_or_create_by_name(
            name:         "TRX Dynamic Side Plank",
            muscle_list:  "Core",
            equipment_id: Equipment.find_or_create_by_name("TRX").id,
            type_list:    "Muscle",
            description:  "Lie down on one side and secure your feet in the TRX straps. With your feet scissored for stability, take your bodyweight into your elbow and Forearm.  Raise your hips off the ground and hold your body in a parallel to the ground position. Slowly lower your hips to the ground and raise them back to the parallel position.",
            tips:         "Maintain your elbow directly under your Shoulder and leave your opposite arm for support or safety. You may place it on your hip once comfortable. Keep your vision forwards."
          )

        


          Exercise.find_or_create_by_name(
            name:         "TRX Dynamic Side Plank with Rotation",
            muscle_list:  "Core",
            equipment_id: Equipment.find_or_create_by_name("TRX").id,
            type_list:    "Muscle",
            description:  "Start one side down and secure your feet in the TRX straps. With your feet scissored for stability, take your body weight into your elbow and Forearm. Maintain your elbow directly under your Shoulder and have your free arm extended vertically to start the exercise. Once in a parallel to ground  position, bring your free arm downwards and reach through underneath your body to rotate your torso. Pause briefly and then return to starting position with your arm vertical.",
            tips:         "Maintain your elbow directly under your Shoulder and leave your opposite arm for support or safety. You may place it on your hip once comfortable. Keep your vision forwards."
          )

        


          Exercise.find_or_create_by_name(
            name:         "TRX Oblique Jack Knife",
            muscle_list:  "Core",
            equipment_id: Equipment.find_or_create_by_name("TRX").id,
            type_list:    "Muscle",
            description:  "Start face down with your feet in the straps of the TRX. Stretch forward to create a straight line in your body while taking your bodyweight into your hands. Slowly bring both knees towards one Shoulder. Pause briefly and extend the legs to return to the start position. Repeat on the other side.",
            tips:         "Perform this exercise in a slow and controlled manner. Exhale as your pull your knees inwards and inhale on the out phase. Keep your head in a neutral position and keep your vision downwards."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Renegade Row (Kettlebells)",
            muscle_list:  "Core",
            equipment_id: Equipment.find_or_create_by_name("Kettlebell").id,
            type_list:    "Muscle",
            description:  "Grasp two Kettelbells and set up in a push up position (toes or knees) with your hands placed slightly wider than your Shoulders. Slowly pull one of the Kettelbells up to the side of your Chest. Pause briefly and return to the start position. Repeat on the other side.",
            tips:         "Maintain good posture during this movement. Exhale on the vertical rowing motion of this exercise and at all times, keep your vision downwards."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Plank On Toes (BOSU)",
            muscle_list:  "Core",
            equipment_id: Equipment.find_or_create_by_name("BOSU").id,
            type_list:    "Muscle",
            description:  "Start face down with your feet Shoulder-width apart and take your bodyweight in to your Forearms and elbows on top of the BOSU (round side up). Raise your Chest, hips and knees off the ground to distribute your weight over your toes and elbows only.",
            tips:         "This is an isometric exercise, so try and hold this position with minimal movement. Engaging the Abdominals will prevent your hips and Lower-Back from sagging. Maintain normal breathing during this exercise."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Plank On Knees (BOSU)",
            muscle_list:  "Core",
            equipment_id: Equipment.find_or_create_by_name("BOSU").id,
            type_list:    "Muscle",
            description:  "Kneel on the ground and take your bodyweight in to your Forearms and elbows on top of the BOSU (round side up). Raise your Chest and hips off the ground to distribute your weight over your knees and elbows only.",
            tips:         "This is an isometric exercise, so try and hold this position with minimal movement. Engaging the Abdominals will prevent your hips and Lower-Back from sagging. Maintain normal breathing during this exercise."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Alternating Limb Raise (BOSU)",
            muscle_list:  "Core",
            equipment_id: Equipment.find_or_create_by_name("BOSU").id,
            type_list:    "Muscle",
            description:  "Set the BOSU round side up. Position both hands at the front of the BOSU and your knees at the back. Create a 'Horse Stance' with your Back straight, your Shoulders back and your vision downwards. Raise a straight arm to the height of your Shoulder and your opposite leg to the height of the hip. Pause briefly and slowly return to the starting position. Repeat on the other side.",
            tips:         "Keep your toes on the ground for greater stability. Engage your abdominals and maintain your posture through out the movement. Perform the exercise slowly and in a controlled manner."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Basic Crunch (BOSU)",
            muscle_list:  "Core",
            equipment_id: Equipment.find_or_create_by_name("BOSU").id,
            type_list:    "Muscle",
            description:  "Lie back over the BOSU with your Buttocks positioned more towards the front edge. Place your hands behind your head with your elbows pointed outwards.  Engage the Lower-Abdominals to stabilise your hips and roll your upper-torso up the BOSU until your feel a contraction in your Abdominals. Slowly return to start position.",
            tips:         "Always perform this exercise in a slow and controlled manner. Exhale as your contract your Abdominals. Keep you vision upwards."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Mountain Climber (BOSU)",
            muscle_list:  "Core",
            equipment_id: Equipment.find_or_create_by_name("BOSU").id,
            type_list:    "Muscle",
            description:  "Start face down with your feet Shoulder-width apart. Grasp the outer rim of the BOSU and hold it flat side up. Position your arms directly under your Shoulders to maximise stability as you raise your knees off the ground. Slowly bring one knee towards the upper-arm of your same side. Return to the start position and repeat on the opposite side.",
            tips:         "Perform the exercise in a slow and controlled manner. Encourage the use of your side Abdominals to perform the movement and minimise arching of your Back."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Core Stabiliser                   (level 1)",
            muscle_list:  "Core",
            equipment_id: Equipment.find_or_create_by_name("Foam Roller").id,
            type_list:    "Mobility",
            description:  "Lie back on the Foam Roller face up, with your head resting at one end and your Buttocks down the other. Bend your knees to 90 degrees and place your feet flat on the ground Shoulder-width apart. Position your arms out wide for support during this exercise. Slowly raise one knee towards your Chest while maintaining your balance on the roller. Pause briefly and return to the starting position. Repeat with the other leg.",
            tips:         "Keep your Abdominals engaged during this exercise. Perform in a slow and controlled manner."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Core Stabilizer                  (level 2)",
            muscle_list:  "Core",
            equipment_id: Equipment.find_or_create_by_name("Foam Roller").id,
            type_list:    "Mobility",
            description:  "Lie back on the Foam Roller face-up, with your head resting at one end and your Buttocks down the other. Position both thighs vertically with your feet off the ground. While engaging your Abdominals, slowly lower one heel towards the ground while maintaining your balance on the Foam Roller. Slowly return to the start position and repeat with the other leg.",
            tips:         "Keep your Abdominals engaged during this exercise. Perform in a slow and controlled manner."
          )

        


          Exercise.find_or_create_by_name(
            name:         "ViPR Jack-Knife",
            muscle_list:  "Core",
            equipment_id: Equipment.find_or_create_by_name("ViPR").id,
            type_list:    "Muscle",
            description:  "Start face-down with your hands flat on the ground, slightly wider than your Shoulders. Position the ViPR under your upper-shins. Maintain a straight body and slowly bring the knees towards your Chest by rolling the ViPR down your shins. Once you have brought the knees in as far as possible, slowly extended the hips and knees back to your starting position.",
            tips:         "Keep your Shoulders back and Chest out throughout the whole movement. Engage your Core to assist in stability. Perform the exercise in a slow and controlled manner."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Seated Trunk Rotations",
            muscle_list:  "Core",
            equipment_id: Equipment.find_or_create_by_name("Medicine Ball").id,
            type_list:    "Muscle",
            description:  "Sit down on the ground, holding a Medicine Ball at your Abdomen. With your heels on the floor and knees at 90 degrees, gently lean back to engage your Abdominals. Whilst maintaining this engaged core with your Shoulders back, rotate your torso to one side. Pause briefly and return to the centre. Keep repeating a side to side movement.",
            tips:         "Keep your Shoulders back and your head in a neutral position. Perform the exercise in a slow controlled manner and avoid holding your breath during the movement."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Medicine Ball Wood Chop",
            muscle_list:  "Core",
            equipment_id: Equipment.find_or_create_by_name("Medicine Ball").id,
            type_list:    "Muscle",
            description:  "Grasp a Medicine Ball with both hands. Hold it with your arms extended to one side at Shoulder-height. Rotate your Torso to move the Medicine Ball down towards the opposite hip and knee. Return to start position.",
            tips:         "Keep your knees and arms slightly bent. Perform the exercise in a controlled manner and engage the Abdominals for greater stability."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Medicine Ball Half Kneeling Wood-chop",
            muscle_list:  "Core",
            equipment_id: Equipment.find_or_create_by_name("Medicine Ball").id,
            type_list:    "Muscle",
            description:  "Kneel down on the ground, holding a Medicine Ball with both hands. Extend your arms and position the ball to one side at Shoulder-height.Rotate your Torso to move the Medicine Ball down towards the opposite hip and knee. Return to start position.",
            tips:         "Keep your knees and arms slightly bent. Perform the exercise in a controlled manner and engage the Abdominals for greater stability."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Standing Torso Twist (Medicine Ball)",
            muscle_list:  "Core",
            equipment_id: Equipment.find_or_create_by_name("Medicine Ball").id,
            type_list:    "Muscle",
            description:  "Stand upright with your feet Shoulder-width apart. Grasp a Medicine Ball in both hands and hold it at Shoulder-height with your arms extended directly in front. Rotate your Torso to one side as far as possible without rotating your hips or legs. The Medicine Ball should remain central to your Torso at all times. Return to starting position and rotate to the other side.",
            tips:         "Keep your Shoulders back and your head in a neutral position. Perform the exercise in a slow controlled manner. Keep your knees softly extended and your Core engaged."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Standing Rotation (Resistance Band)",
            muscle_list:  "Core",
            equipment_id: Equipment.find_or_create_by_name("Resistance Band").id,
            type_list:    "Muscle",
            description:  "Loop the Resistance Band around a stable vertical structure. Face forward and stand side-on to the Resistance Band. Proceed to rotate your torso to face the Resistance Band. Grasp the ends of the band with both hands and raise your fully extended arms to Shoulder-height. Keeping your Shoulders back, slowly rotate your torso so you are facing forwards, the same direction as your feet. Slowly rotate back to the start position.",
            tips:         "Maintain upright posture at all times. Perform the exercise slowly and in a controlled manner. Avoid shrugging the Shoulders during this movement and minimise any momentum from a leaning torso."
          )

        
end