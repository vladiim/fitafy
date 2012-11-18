#!/bin/env ruby 
# encoding: utf-8

def create_full_body

          Exercise.find_or_create_by_name(
            name:         "Muscle Up",
            muscle:  "Full Body",
            equipment_id: Equipment.find_or_create_by_name("Pull Up Bar").id,
            category:    "Crossfit",
            description:  "Hang from a Chin Up Bar with an overhand grip. Position your hands Shoulder-width apart. Place as much of your hands and wrists on the Bar for maximum contact. Explosively pull upwards and rotate your elbows over the Bar. Then extend your arms to completely position your torso above the Bar. Slowly return to starting position.",
            tips:         "Bring both elbows up and over the Bar at the same. Straighten your arms at the top until your elbows are at a soft but full extension. Perform the down phase in a slow and controlled manner."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Sumo Deadlift With High Pull",
            muscle:  "Full Body",
            equipment_id: Equipment.find_or_create_by_name("Kettlebell").id,
            category:    "Crossfit",
            description:  "Stand upright with your feet in a wide-stance and position the Kettlebell between your feet. Squat down and grasp the Kettlebell with straight arms. Once engaging the core and holding a natural lumbar curve, stand upright and pull the Kettlebell to the top of your Chest, leading with your elbows. Lower the Kettlebell down to your hips and back to the ground with a squat.",
            tips:         "Start with a light weight  to ensure the movement correctly and under control. Ensure the knees track over the centre of the feet which are slightly pointed outwards. Keep your Shoulders back and vision forwards."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Push Jerk",
            muscle:  "Full Body",
            equipment_id: Equipment.find_or_create_by_name("Barbell").id,
            category:    "Crossfit",
            description:  "Stand with your feet positioned hip-width apart. Place the Barbell at the top of your Chest with your hands in an over hand grip. While maintaining good posture, slightly bend your knees and then powerfully extend your knees and hips to create a strong drive under the Barbell. Extend your arms above your head in the process. While the bar has momentum upwards, align your body underneath the bar in a slight squat position with full extension of your arms. Finish by straightening your legs with the weight above your head.",
            tips:         "Note that your head should be in front of the Bar. Start with a light weight  to ensure the movement correctly and under control. Ensure the knees track over the centre of the feet which are slightly pointed outwards. Keep your Shoulders back and vision forwards."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Split Jerk",
            muscle:  "Full Body",
            equipment_id: Equipment.find_or_create_by_name("Barbell").id,
            category:    "Crossfit",
            description:  "Stand with your feet positioned hip-width apart. Place the Barbell at the top of your Chest, held with an over hand grip. Keep your elbows pointing forwards. Powerfully extend your knees and hips to create a strong drive under the Barbell. Extend your arms above your head in the process. Align your body underneath the Bar in a split squat position (one foot forward and one foot back). Stand upright.",
            tips:         "Note that your head should be in front of the Bar. Start with a light weight  to ensure the movement correctly and under control. Ensure the knees track over the centre of the feet which are slightly pointed outwards. Keep your Shoulders back and vision forwards."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Clean and Jerk",
            muscle:  "Full Body",
            equipment_id: Equipment.find_or_create_by_name("Barbell").id,
            category:    "Crossfit",
            description:  "Stand in front of a Bar with your feet positioned hip-width apart. Squat down and grasp the bar slightly wider than Shoulder-width. With a strong extension of your knees and hips, lift the Bar off the ground as quickly as possible. Continue to pull the Bar towards the height of your Shoulders leading with the elbows. Once the Bar reaches Abdominal height, roll your elbows underneath and squat to catch the Bar on your Shoulders. Keep your elbows pointing forward and stand upright. With a slight squat, powerfully extend your knees and hips to create a strong drive under the Barbell to push it upwards. Complete the exercise with a split squat stance with your arms extended above your head. Bring your feet back together once the weight above your head.",
            tips:         "This exercise is designed to be done in two powerful stages. Engage the core during the entire movement. Keep your good posture and look straight ahead. Exhale as you perform the Clean and as you complete the Jerk component."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Hang Clean",
            muscle:  "Full Body",
            equipment_id: Equipment.find_or_create_by_name("Barbell").id,
            category:    "Crossfit",
            description:  "Stand with your feet positioned hip-width apart. Squat down and grasp the bar wider than Shoulder-width. Lift the Bar off the ground and stand upright. The Barbell should be at mid-thigh. With a powerful extension of your knees and hips, create upward momentum and perform an upright row, leading with elbows. As the bar reaches Abdominal height, roll your elbows underneath the bar and squat to get your body underneath the Bar. Catch the Bar on your Shoulders with your elbows pointing forward. Stand upright to complete the movement.",
            tips:         "This movement is designed to be done in one quick movement. Most of your power should come from the thrust of the hips and legs not the upright pull with the arms. Engage the core during the entire movement. Keep your good posture and look forwards."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Hang Snatch",
            muscle:  "Full Body",
            equipment_id: Equipment.find_or_create_by_name("Barbell").id,
            category:    "Crossfit",
            description:  "Stand in front of a Bar with your feet positioned hip-width apart. Squat down and grasp the Bar wider than Shoulder-width. Lift the bar off the ground and stand upright. The Barbell should be at mid-thigh. Perform a powerful extension of your knees and hips to create upward momentum and continue with an upright row leading with elbows. As the bar gathers speed and height, squat underneath the Bar and catch it with a full extension of the arms. Stand upright to complete the movement.",
            tips:         "This movement is designed to be done in one quick movement. Most of your power should come from the thrust of the hips and legs not the upright pull with the arms. Engage the core during the entire movement. Keep your good posture and look forwards."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Kettlebell Swing",
            muscle:  "Full Body",
            equipment_id: Equipment.find_or_create_by_name("Kettlebell").id,
            category:    "Crossfit",
            description:  "Place the Kettlebell between your feet that are positioned Shoulder-width apart. Squat down and grasp the handle with a double overhand grip (palms facing you). Slightly bend your knees and swing the Kettlebell backwards between your legs. Extend your knees and drive your hips to swing the Kettlebell forwards and upwards. Return the Kettlebell to swing between your legs and again into another repetition forwards.",
            tips:         "Use the momentum from your hips to move the Kettlebell. Start with a light weight to ensure the movement is done under complete control. Keep your knees tracking over the centre of your feet which are slightly pointed outwards. Maintain good posture as you tip forward  from the hips."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Burpee",
            muscle:  "Full Body",
            equipment_id: Equipment.find_or_create_by_name("").id,
            category:    "Crossfit",
            description:  "From an upright position,squat to the ground with your hands on the floor. Extend your feet back in one swift motion to assume the position of a push up. Return back to the squat position in one movement. Stand upright to complete the exercise. A variation is to add a jump and clap above the head at the end of the exercise.",
            tips:         "Keep all the joints soft in the burpee. Increase the intensity by increasing the depth of the push component. When extending the legs backwards, it can be done leg at a time. Keep the core engaged at all times."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Thruster",
            muscle:  "Full Body",
            equipment_id: Equipment.find_or_create_by_name("Barbell").id,
            category:    "Crossfit",
            description:  "Take the Bar from the support stands or floor and position it at your Shoulders. Bend the wrists and point your elbows forwards as much as possible. Rest the Bar on the front of your Shoulders and squat down until the legs are parallel to the floor. Explosively rise from the squat and straighten your arms and push the Barbell above your head. Carefully lower the Barbell back to your Shoulders.",
            tips:         "This movement is designed to be done in one quick movement. Keep good posture and  your vision forwards. Avoid hard locking of the joints throughout the movement and exhale during the shoulder press component."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Squat and High Pull",
            muscle:  "Full Body",
            equipment_id: Equipment.find_or_create_by_name("Kettlebell").id,
            category:    "Muscle",
            description:  "Set your feet in a wide-stance and position the Kettlebell between your feet. Squat down and grasp the Kettlebell with straight arms. Stand upright and pull the Kettlebell to the top of your Chest, leading with your elbows. Lower the Kettlebell back to the ground with a squat.",
            tips:         "Start with a light weight to ensure the movement is completed correctly and under control. Ensure your knees track over the centre of the feet which are slightly pointed outwards. Keep your Shoulder back and look forwards."
          )

        


          Exercise.find_or_create_by_name(
            name:         "One Arm Snatch",
            muscle:  "Full Body",
            equipment_id: Equipment.find_or_create_by_name("Kettlebell").id,
            category:    "Muscle",
            description:  "Position a Kettlebell between your feet that are set shoulder width apart. Squat down and grasp the handle with one hand in an overhand grip (palm facing you). In one movement, extend your legs and pull the Kettlebell upwards above your head. Extend your arm completely and roll the Kettlebell over the wrist at the top of the movement. Slowly lower the Kettlebell to the start position.",
            tips:         "Start with a light weight to ensure the movement is done correctly and under complete control. Increase the weight as your technique and strength improves. Look forwards, maintain good posture and keep your core engaged."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Turkish Get Up",
            muscle:  "Full Body",
            equipment_id: Equipment.find_or_create_by_name("Kettlebell").id,
            category:    "Muscle",
            description:  "Lie down on the floor face up with your legs straight and hold the Kettlebell vertically with a fully extended arm. With your opposite arm on the ground for support, stand upright whilst keeping the Kettlebell above your head. Slowly lower yourself down to the ground with the same vertical hold of the weight.",
            tips:         "Start with a light weight  to ensure the movement is done under complete control. Increase the weight as your technique and strength improves. Maintain a full extended arm during the entire movement."
          )

        


          Exercise.find_or_create_by_name(
            name:         "One Arm Clean",
            muscle:  "Full Body",
            equipment_id: Equipment.find_or_create_by_name("Kettlebell").id,
            category:    "Muscle",
            description:  "Position a Kettlebell between your feet that are set shoulder width apart. Squat down and grasp the handle with one hand in an overhand grip (palm facing you). In one movement, extend your legs and pull the Kettlebell upwards to Shoulder height and flick your elbow under the Kettlebell. The Kettlebell should roll over the wrist at the top of the movement. Slowly lower the Kettlebell to the start position.",
            tips:         "Start with a light weight to ensure the movement is done correctly and under complete control. Increase the weight as your technique and strength improves. Look forwards, maintain good posture and keep your core engaged."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Lunge Press With One Arm",
            muscle:  "Full Body",
            equipment_id: Equipment.find_or_create_by_name("Kettlebell").id,
            category:    "Muscle",
            description:  "Hold a Kettlebell with one hand (palm facing you) at Shoulder-height. Step forward with one leg and lower your back-knee to the ground. As you do so, push the Kettlebell above your head. As you rise up from the lunge, lower the Kettlebell to the starting Shoulder-height position.",
            tips:         "Start with a light weight to ensure the movement is done under complete control. Avoid bending your knees past your toes and maintain upright posture. Engage your core for greater stability."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Lunge Press With Two Arms",
            muscle:  "Full Body",
            equipment_id: Equipment.find_or_create_by_name("Kettlebell").id,
            category:    "Muscle",
            description:  "Hold a Kettlebell in each hand (palm facing you) at Shoulder-height. Step forward with one leg and lower your back-knee to the ground. As you do so, push the Kettlebells above your head. As you rise up from the lunge, lower the Kettlebells to their starting of Shoulder-height position.",
            tips:         "Start with a light weight to ensure the movement is done under complete control. Avoid bending your knees past your toes and maintain upright posture. Engage your core for greater stability."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Hang Clean And press      (Two Arms)",
            muscle:  "Full Body",
            equipment_id: Equipment.find_or_create_by_name("Kettlebell").id,
            category:    "Muscle",
            description:  "Grasp the Kettlebells with an overhand grip (palms facing you). Hang the Kettlebells just below the hips. Perform a medium depth squat and simultaneously pull the Kettlebells to Shoulder-height. Roll them over your wrist so your palm is facing upwards. From the squat position, explosively extend your legs and push the Kettlebells above your head . Slowly roll the Kettlebells back over the your wrist and return them to the starting position.",
            tips:         "Start with a light weight  to ensure the movement is done under complete control. Increase the weight as your technique and strength improves. Keep the knees soft and your core engaged."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Hang Clean And press      (One Arm)",
            muscle:  "Full Body",
            equipment_id: Equipment.find_or_create_by_name("Kettlebell").id,
            category:    "Muscle",
            description:  "Grasp the Kettlebell with one hand in an overhand grip (palm facing you). Hang the Kettlebell just below the hips.  Perform a medium depth squat and simultaneously pull the Kettlebell to Shoulder-height. Roll it over your wrist so your palm is facing upwards. From the squat position, explosively extend your legs and push the Kettlebell above your head. Slowly roll the Kettlebell back over the your wrist and return it to the starting position.",
            tips:         "Start with a light weight  to ensure the movement is done under complete control. Increase the weight as your technique and strength improves. Keep your knees soft and your core engaged."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Swing Squats (One Arm)",
            muscle:  "Full Body",
            equipment_id: Equipment.find_or_create_by_name("Kettlebell").id,
            category:    "Muscle",
            description:  "Place a Kettlebell between your feet that are positioned Shoulder-width apart. Squat down and grasp the handle with one hand in an overhand grip (palm facing you). Extend your legs quickly, swing the Kettlebell forwards and raise your arm up to eye-level. Slowly lower the Kettlebell down to the starting position by decreasing momentum with a squat.",
            tips:         "Start with a light weight  to ensure the movement is done under complete control. Increase the weight as your technique and strength improves. Always keep your knees soft, your core engaged and maintain good posture throughout the movement."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Figure 8's",
            muscle:  "Full Body",
            equipment_id: Equipment.find_or_create_by_name("Kettlebell").id,
            category:    "Muscle",
            description:  "Stand with your feet Shoulder-width apart and grasp the Kettlebell with your right hand in an overhand grip (palm facing you).  Swing the Kettlebell backwards between your legs and behind your left knee. Reach around with your left arm and grab the Kettlebell with your left hand. Swing it around in front of your left knee and repeat the movement through the legs to behind the right knee. Continue this sequence to create a figure 8 motion around the legs.",
            tips:         "Start with a light weight  to ensure the movement is done under complete control. Keep the knees slightly bent and maintain good posture through out the exercise. Engage your core and look forward."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Single Arm Kettle Bell Swing",
            muscle:  "Full Body",
            equipment_id: Equipment.find_or_create_by_name("Kettlebell").id,
            category:    "Muscle",
            description:  "Hold the Kettlebell with one hand (palm facing inwards). Bend your knees into a shallow squat and allow the Kettlebell to swing between your legs. Extend your knees and push your hips forward to drive the Kettlebell forwards and upwards. Allow the Kettlebell to rise upwards but under your control. Re-grasp the Kettlebell with your opposite hand. Allow the weight of Kettlebell fall back to the starting swing position of between the legs. Continue to alternate arms at the peak of each of each swing.",
            tips:         "Start with a light weight  to ensure the movement is done under complete control. Keep the knees tracking over the centre of the feet. Ensure your core is engaged to maintain stability and back support."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Thruster",
            muscle:  "Full Body",
            equipment_id: Equipment.find_or_create_by_name("Kettlebell").id,
            category:    "Muscle",
            description:  "Hold a Kettlebell in each hand (palms facing you) at Shoulder-height. Slowly bend your knees into a deep squat. Explosively stand upright and fully extend your arms above your head using the momentum. Control the Kettlebells back down to your Shoulders.",
            tips:         "Start with a light weight  to ensure the movement is done under complete control. Avoid a hard lock out of the elbows on extension of the arms. Exhale on the up phase of the Thruster."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Torsonator One arm thruster",
            muscle:  "Full Body",
            equipment_id: Equipment.find_or_create_by_name("Torsonator").id,
            category:    "Plyometrics",
            description:  "Stand with your feet Shoulder-width apart and hold the Torsonator in both hands. Position the handles at head-height. Squat to 90 degrees in the knees and lower the Bar to one Shoulder. Explosively extend the legs while simultaneously extending the arms above your head. Repeat on the other side.",
            tips:         "Maintain good posture throughout the movement. Exhale as you push upwards and always engage your core and keep your vision forwards."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Rope Wave with Jump",
            muscle:  "Full Body",
            equipment_id: Equipment.find_or_create_by_name("Rope").id,
            category:    "Plyometrics",
            description:  "Stand with your feet Shoulder-width apart and grasp the two ends of the rope. Start a gentle wave in the Rope by raising your arms up and down. Progress to explosively pulling the Rope upwards with a jump and then ripping it downwards as quick as possible as you land.",
            tips:         "Maintain good posture throughout the movement. Engage the core and look straight ahead."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Burpee (BOSU)",
            muscle:  "Full Body",
            equipment_id: Equipment.find_or_create_by_name("BOSU").id,
            category:    "Muscle",
            description:  "Stand with the BOSU in your hands with the round side facing forwards. Bend your knees and place the BOSU on the floor and with one swift movement, extend your legs backwards to find yourself in a push up position. Explosively bring your legs back underneath your body and position your legs ready for a squat. Stand upright and while still holding the BOSU, extend your arms above your head.",
            tips:         "A push up can be added to increase the intensity of the Burpee. Keep the core engaged throughout the movement. The extension of the legs behind you can also occur one leg at a time."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Indoor Flipping",
            muscle:  "Full Body",
            equipment_id: Equipment.find_or_create_by_name("ViPR").id,
            category:    "Muscle",
            description:  "Place a ViPR laterally in front of you and stand behind it with your feet Shoulder-width apart. Bend you knees and place your left hand on the end of the ViPR with fingers inside the tube. Extend your knees and flip the ViPR from left to right. Catch the end with your right hand and lower it slowly to the ground. Shuffle sideways to stand directly behind the ViPR to commence the movement again. Continue to alternate side to side repetitions.",
            tips:         "Keep your Shoulders back and Chest out throughout the movement. Avoid leaning forward or to your side during the movement."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Shovelling Drill",
            muscle:  "Full Body",
            equipment_id: Equipment.find_or_create_by_name("ViPR").id,
            category:    "Muscle",
            description:  "Lightly hold the ViPR with both hands in a neutral shovel grip. With a slight bend in the knees, rotate the ViPR outwards to the height of the Shoulder. Lead with the central grip hand with the outer grip hand crossing the Torso. Swing the ViPR back across the body, with the hips, knee and ankle rotating inwards.",
            tips:         "Keep your Shoulders back and Chest out throughout the movement. Engage your Core and look straight ahead."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Anterior Step With Tilt",
            muscle:  "Full Body",
            equipment_id: Equipment.find_or_create_by_name("ViPR").id,
            category:    "Muscle",
            description:  "Hold the ViPR vertically at your side with a tilt hold. Take a comfortable step forwards with the opposite leg to the side that the ViPR is positioned. Tilt the ViPR forwards and decrease its deceleration with the arm of the same side before it hits the ground. Step backwards and return the ViPR to original position.",
            tips:         "Maintain good posture and avoid leaning forward or to the sides during the movement. Ensure your knee does not travel past your knee as you lunge forward."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Anterior Step With Upper Cut",
            muscle:  "Full Body",
            equipment_id: Equipment.find_or_create_by_name("ViPR").id,
            category:    "Muscle",
            description:  "Hold the ViPR with both hands in a neutral grip, positioned at your left hip. Take a step forwards with your right leg and simultaneously rotate the bottom end of the ViPR forwards with your left hand. The bottom of the ViPR should be pointing forwards. Return to the starting position. Perform desired number of repetitions on one side and alternate sides.",
            tips:         "Maintain good posture and avoid leaning forward or to the sides during the movement. Ensure your knee does not travel past your knee as you lunge forward."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Ice Skaters",
            muscle:  "Full Body",
            equipment_id: Equipment.find_or_create_by_name("ViPR").id,
            category:    "Muscle",
            description:  "Hold the ViPR with both hands in a neutral grip. Tip forward with a straight back and take a long step sideways and position the opposite leg behind you for balance. Simultaneously rotate the torso and swing the ViPR across the body past the knee. Step sideways again with the other leg and swing the ViPR in the opposite direction. Continue to alternate repetitions.",
            tips:         "Engage your core and keep your back straight during the exercise. Start with narrow steps and increase the distance as your strength and co-ordination increases."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Cylinder Lift",
            muscle:  "Full Body",
            equipment_id: Equipment.find_or_create_by_name("ViPR").id,
            category:    "Muscle",
            description:  "Start with the ViPR placed vertically between you legs. With your elbows close to your torso, bend into a half squat and grasp the top of the ViPR with your fingers inside the tube. In one movement, extend your legs and re-grasp the ViPR  one quarter down the cylinder. Repeat the squat and re-set your grasp at half way of the ViPR. Continue this movement until you reach the bottom of the ViPR.",
            tips:         "Engage your core and keep your back straight during the exercise. Avoid leaning forward or to the sides during the movement."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Burpees (ViPR)",
            muscle:  "Full Body",
            equipment_id: Equipment.find_or_create_by_name("ViPR").id,
            category:    "Muscle",
            description:  "Stand upright and hold the ViPR with a neutral grip at your hips. Squat to the ground with the ViPR on the floor in front of your feet. Jump backwards leading with your feet to a push up position. Lower your body by bending your elbows to the depth of the ViPR.  Push upwards and explosively bring your knees back to the squat position. Stand upright and extend your arms and push the ViPR above your head.",
            tips:         "Maintain good posture and keep your Core engaged. An easier option is to step back with one leg at a time to the push up position."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Front Squat And Shoulder Press",
            muscle:  "Full Body",
            equipment_id: Equipment.find_or_create_by_name("ViPR").id,
            category:    "Muscle",
            description:  "Start with your feet Shoulder-width apart and position the ViPR at Shoulder-height with your elbows gently tucked in. Slowly squat down until your thighs are parallel to the floor. As you stand upright, extend your arms and push the ViPR above your head. Slowly lower the ViPR to the starting position.",
            tips:         "Maintain good posture and keep your Core engaged. Exhale as you push the ViPR above your head."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Step Forward With Curl",
            muscle:  "Full Body",
            equipment_id: Equipment.find_or_create_by_name("ViPR").id,
            category:    "Muscle",
            description:  "Hold the ViPR with both hands in a neutral grip. Take a step forward with one leg and lower your rear-knee towards the ground. Simultaneously bend your elbows to curl the ViPR to your Shoulders. As you return upwards from your step, return the ViPR back to your hips.",
            tips:         "Maintain good posture and keep your Core engaged. Avoid allowing your front-knee to travel past your toes as you step forward."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Lunge With Lateral Rotation",
            muscle:  "Full Body",
            equipment_id: Equipment.find_or_create_by_name("ViPR").id,
            category:    "Muscle",
            description:  "Hold the ViPR with both hands in a neutral grip. Take a step forward with one leg and lower your rear-knee towards the ground. Simultaneously rotate your entire Torso towards the outside of the front-leg. Return back to facing forwards and step back to your starting position. Alternate legs with each repetition if desired.",
            tips:         "Maintain good posture and keep your Core engaged. Avoid allowing your front-knee to travel past your toes as you step forward."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Squat With Diagonal Raise",
            muscle:  "Full Body",
            equipment_id: Equipment.find_or_create_by_name("ViPR").id,
            category:    "Muscle",
            description:  "Hold one end of the ViPR by the lowest handle. Sink into a squat and angle the ViPR towards the ground at  45 degrees. As you rise from the squat, without rotating your torso, move the ViPR in the same angle but upwards past your Shoulder.",
            tips:         "Maintain good posture and keep your Core engaged. Keep your forward and perform the exercise in a slow and controlled manner."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Lateral Squat And Tilt",
            muscle:  "Legs",
            equipment_id: Equipment.find_or_create_by_name("ViPR").id,
            category:    "Muscle",
            description:  "Start with your feet Shoulder-width apart, holding the ViPR upright between your legs. Step to one side until the ViPR begins to tilt and then squat to catch it. Decelerate the ViPR with your outside hand. Return the ViPR to starting position and repeat on the other side.",
            tips:         "Keep your Shoulders back and Chest out. Engage your Core to assist in stability. Keep looking forwards."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Lunge With Overhead Press (Medicine Ball)",
            muscle:  "Legs",
            equipment_id: Equipment.find_or_create_by_name("Medicine Ball").id,
            category:    "Muscle",
            description:  "Hold a Medicine Ball at the top of your Chest. Take a long step forward and slowly lower your rear-knee towards the ground.  As you rise from the lunge, extend your arms upwards and push the Medicine Ball above your head. Lower to the Medicine Ball to the top of your Chest before you begin the next lunge.",
            tips:         "Engage your Core to assist in hip stability and balance. Perform the exercise in a slow and controlled manner. Avoid bending your knees forwards over the top of your toes."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Squat With Overhead Press (Medicine Ball)",
            muscle:  "Legs",
            equipment_id: Equipment.find_or_create_by_name("Medicine Ball").id,
            category:    "Muscle",
            description:  "Hold the Medicine Ball at the top of you Chest. Slowly sit back into your hips and bend your knees to perform a squat. As you stand up, straighten your arms above your head. Lower to the Medicine Ball to the top of the Chest before you begin the next squat.",
            tips:         "Maintain a straight Back with natural head position. Engage the Core to assist in hip stability and balance and perform the exercise in a controlled manner. Avoid bending your knees forwards over the top of your toes."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Lateral Step With Tilt",
            muscle:  "Legs",
            equipment_id: Equipment.find_or_create_by_name("ViPR").id,
            category:    "Muscle",
            description:  "Start with your feet Shoulder-width apart and hold the ViPR upright between your legs. Move gently to one side until the ViPR begins to tilt and then step to catch it. Decelerate the ViPR with your outside hand. Return the ViPR to starting position and repeat on the other side.",
            tips:         "Keep your Shoulders back and Chest out throughout the whole movement. Engage your Core to assist in stability. Look forward."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Squat Thread The Legs",
            muscle:  "Legs",
            equipment_id: Equipment.find_or_create_by_name("ViPR").id,
            category:    "Muscle",
            description:  "Stand with your feet Shoulder-width apart and knees slightly bent. Hold the ViPR above your head in a horizontal position. As you perform a squat, turn the ViPR vertically or a 90 degrees and thread it between your legs. As you ascend, return the ViPR to its start position. Repeat on the other side.",
            tips:         "Keep your Shoulders back and Chest out through out the movement. Keep your Core engaged to assist in hip stability. Avoid leaning forward or to the sides during the movement."
          )

        
end