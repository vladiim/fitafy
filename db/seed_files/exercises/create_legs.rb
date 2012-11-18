#!/bin/env ruby 
# encoding: utf-8

def create_legs

          Exercise.find_or_create_by_name(
            name:         "Barbell Squat",
            muscle:  "legs",
            equipment_id: Equipment.find_or_create_by_name("Barbell").id,
            category:    "muscle",
            description:  "Place the Barbell behind your neck on your Upper-Back muscles. Stand with your feet Shoulder-width apart and point your feet forwards. Slowly bend your knees and sit back until your thighs are parallel to the floor.  Push through your heels as you straighten back up to the standing position.",
            tips:         "Maintain a straight back with neutral head position to minimise neck stress. Engage the core to assist in hip stability and balance. Perform the exercise in a slow and controlled manner."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Isometric Wall Squat",
            muscle:  "legs",
            equipment_id: Equipment.find_or_create_by_name("").id,
            category:    "muscle",
            description:  "Lean back against a wall with your feet placed half metre in front of you, Shoulder-width apart. Slowly slide down the wall until your thighs are parallel to the floor. Hold this position as long as you can or until you reach your desired time frame.",
            tips:         "Maintain a straight back and look straight ahead. Keep your core engaged and maintain your breathing throughout the exercise. As you bend your knees, sit back into your hips instead of allowing your knees to travel forwards past your toes."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Front Squat (Barbell)",
            muscle:  "legs",
            equipment_id: Equipment.find_or_create_by_name("Barbell").id,
            category:    "muscle",
            description:  "Grasp the Bar with an over hand grip (palms forward). Hold the Bar at Shoulder-height by bending your wrists and pointing your elbows straight ahead. The Bar should rest on the front of your Shoulders. Slowly squat down until your thighs are parallel to the floor. Keep your Chest up and Shoulders back as you push through your heels, back to a standing position.",
            tips:         "Maintain a straight back and look straight ahead. Keep your core engaged and maintain your breathing throughout the exercise. As you bend your knees, sit back into your hips instead of allowing your knees to travel forwards past your toes."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Squat to Bench",
            muscle:  "legs",
            equipment_id: Equipment.find_or_create_by_name("").id,
            category:    "muscle",
            description:  "Stand with your feet Shoulder-width apart with a chair or bench directly behind you. Begin your squat by sitting back and bending at the hips and knees. Raise your arms in front of you to help you balance. Continue to squat down until your buttocks lightly brushes the seat. Keep your Chest up and Shoulders back as you push through your heels, back to a standing position.",
            tips:         "Maintain a straight back and look straight ahead. Keep your core engaged and maintain your breathing throughout the exercise. As you bend your knees, sit back into your hips instead of allowing your knees to travel forwards past your toes."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Pistol Squat",
            muscle:  "legs",
            equipment_id: Equipment.find_or_create_by_name("").id,
            category:    "muscle",
            description:  "From a standing position, place one leg in front of you and raise your foot off the ground. Slowly squat down on one leg until the knee is bent to 90 degrees. Place your hands on your hips or straight out in front of you for balance. Maintain good posture and push upwards back to the standing position.",
            tips:         "Perform the exercise in a slow and controlled manner. As you bend your knees, sit back into your hips instead of allowing your knees to travel forwards past your toes. Place your front foot on a step or a small box to decrease the level of intensity."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Overhead Squat",
            muscle:  "legs",
            equipment_id: Equipment.find_or_create_by_name("Barbell").id,
            category:    "muscle",
            description:  "Hold the Barbell with an over-hand grip with your hands Shoulder-width apart. Push the Barbell overhead until your arms are straight. Slowly squat down until your thighs are parallel to the floor. Maintain good posture and straighten the legs to return to a standing position.",
            tips:         "Maintain natural head position and engage the core to assist in hip stability and balance. Perform the exercise in a slow and controlled manner. As you bend your knees, sit back into your hips and avoid allowing your knees to travel forwards past your toes."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Lunge (Dumbbell)",
            muscle:  "legs",
            equipment_id: Equipment.find_or_create_by_name("Dumbbells").id,
            category:    "muscle",
            description:  "Hold two Dumbbells by your side. Take a comfortable long step forward and keep your torso upright. Lower your back knee towards the ground, stopping only moments before contact. Push through your front foot to return to starting position.",
            tips:         "Maintain your vision forwards and engage the core to assist in hip stability and balance. Perform the exercise in a slow and controlled manner. As you bend your front knee, sit back into your hips and avoid allowing your knee to travel forwards past your toes."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Lunge (Barbell)",
            muscle:  "legs",
            equipment_id: Equipment.find_or_create_by_name("Barbell").id,
            category:    "muscle",
            description:  "Place a Barbell on your Upper-Back muscles. Take a comfortable long step forward and keep your torso upright. Lower your back knee towards the ground, stopping only moments before contact. Push through your front foot to return to starting position.",
            tips:         "Maintain your vision forwards and engage the core to assist in hip stability and balance. Perform the exercise in a slow and controlled manner. As you bend your front knee, sit back into your hips and avoid allowing your knee to travel forwards past your toes."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Walking Lunge",
            muscle:  "legs",
            equipment_id: Equipment.find_or_create_by_name("Dumbbells").id,
            category:    "muscle",
            description:  "Hold two Dumbbells at your sides. Take one long step forward with your right leg and lower the left back knee towards the ground. Continue down until you are moments from contact with the ground. As you come upwards, bring the back leg forwards to be in line with the front leg. Immediately take another step forward with the left leg. Continue alternating these lunges to create the walking lunge.",
            tips:         "Maintain your vision forwards and engage the core to assist in hip stability and balance. Perform the exercise in a slow and controlled manner. As you bend your front knee, sit back into your hips and avoid allowing your knee to travel forwards past your toes."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Back Lunge (Barbell)",
            muscle:  "legs",
            equipment_id: Equipment.find_or_create_by_name("Barbell").id,
            category:    "muscle",
            description:  "Place the Barbell one your Upper-Back muscles. Take a long step backwards with one leg and lower the knee towards the ground. Push upwards with your front leg to return the rear leg back to a standing position. Repeat the process with the other leg forward.",
            tips:         "Maintain your vision forwards and engage the core to assist in hip stability and balance. Perform the exercise in a slow and controlled manner. As you bend your front knee, sit back into your hips and avoid allowing your knee to travel forwards past your toes."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Back Lunge (Dumbbells)",
            muscle:  "legs",
            equipment_id: Equipment.find_or_create_by_name("Dumbbells").id,
            category:    "muscle",
            description:  "Hold two Dumbbells by your sides. Take a long step backwards with one leg and lower the knee towards the 
ground. Push upwards with your front leg to return the rear leg back to a standing position. Repeat the process with the other leg forward.",
            tips:         "Maintain your vision forwards and engage the core to assist in hip stability and balance. Perform the exercise in a slow and controlled manner. As you bend your front knee, sit back into your hips and avoid allowing your knee to travel forwards past your toes."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Dynamic Lunge",
            muscle:  "legs",
            equipment_id: Equipment.find_or_create_by_name("Dumbbells").id,
            category:    "muscle",
            description:  "Hold two Dumbbells at your sides. Take a step forward with one leg and lower your rear knee to towards the ground. Push upwards with your front leg to return back to a standing position. Repeat the process with the other leg.",
            tips:         "Maintain your vision forwards and engage the core to assist in hip stability and balance. Perform the exercise in a slow and controlled manner. As you bend your front knee, sit back into your hips and avoid allowing your knee to travel forwards past your toes."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Side Lunge",
            muscle:  "legs",
            equipment_id: Equipment.find_or_create_by_name("Dumbbells").id,
            category:    "muscle",
            description:  "Stand upright with your feet close together. Take a long step out to one side. Angle your lead foot out about 45 degrees as you step. Bend that knee until your thigh is parallel to the ground. Keep your stationary leg straight throughout the exercise. Push firmly into the ground with your stepping leg and return to the starting position. ",
            tips:         "Maintain your vision forwards and engage the core to assist in hip stability and balance. Perform the exercise in a slow and controlled manner. As you bend your knee, sit back into your hips and avoid allowing your knee to travel forwards past your toes."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Deadlift (Barbell)",
            muscle:  "legs",
            equipment_id: Equipment.find_or_create_by_name("Barbell").id,
            category:    "muscle",
            description:  "Stand with your feet Shoulder-width apart, as close to the Barbell as possible. Grip the Bar with one palm facing down and one palm facing up (mixed grip), slightly wider than Shoulder-width apart. Keep your spine as straight as possible, squat down and lift the Barbell to your standing position. Squat down slowly and lower the Barbell to your starting position.",
            tips:         "Keep you Shoulders back and core engaged at all times. Any exercise involving the lower back should be done carefully, in a slow and controlled manner. Exhale as you raise the Barbell off the ground."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Hack Squat",
            muscle:  "legs",
            equipment_id: Equipment.find_or_create_by_name("Hack Squat Machine").id,
            category:    "muscle",
            description:  "Position your Shoulders underneath the pads provided and grasp the handles of the apparatus. Place your feet Shoulder-width apart and point your feet forwards. Release the safety latches outwards to disengage the lock mechanism. Squat downwards until your knees are bent at 90 degrees, pause briefly and push upwards to starting position.",
            tips:         "Maintain pad contact with your hips, Shoulders and head at all times. Ensure your knees are aligned over the centre of your toes and keep your heels on the platforms at all times. Perform this exercise in slow and controlled manner."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Squat (BOSU)",
            muscle:  "legs",
            equipment_id: Equipment.find_or_create_by_name("BOSU").id,
            category:    "muscle",
            description:  "Stand with your feet Shoulder-width apart on top the BOSU (round side up). Begin your squat by sitting back and bending at the hips and knees. Raise your arms in front of you to help with balance. Continue to squat until your knees reach a 90 degree angle and then stand back up to starting position.",
            tips:         "Avoid allowing your knees to bend over the front of the toes. Keep your Shoulders back and your vision forwards."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Step Up (BOSU)",
            muscle:  "legs",
            equipment_id: Equipment.find_or_create_by_name("BOSU").id,
            category:    "muscle",
            description:  "Stand with your feet Shoulder-width apart behind a BOSU (round side up). Raise your right foot and place it one the top of the BOSU and follow with the left foot. Once you are standing on top of the BOSU, step back down with the right foot followed by the left.",
            tips:         "As this exercise involves tremendous balance, minimise distractions and remove any objects surrounding the workout area."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Squat and press (BOSU)",
            muscle:  "legs",
            equipment_id: Equipment.find_or_create_by_name("BOSU").id,
            category:    "muscle",
            description:  "Grasp the BOSU (round side facing out) with hands on opposite sides of the rim and hold it at Shoulder-height. Squat down until the knees are at 90 degrees and then thrust up out of the squat. Straighten your arms and push the BOSU above your head. Lower the BOSU to Shoulder-height and start again.",
            tips:         "Inhale as you squat down and exhale as you straighten the legs and arms in the shoulder press. Maintain an engaged core and good posture during the movement."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Lunge (Foot On BOSU)",
            muscle:  "legs",
            equipment_id: Equipment.find_or_create_by_name("BOSU").id,
            category:    "muscle",
            description:  "Take a step forward and place your foot on top of the BOSU. Lower your rear knee towards the ground. Once your front-thigh is parallel to the floor or your knee is close to the ground, push upwards with your front-leg to return to the starting position.",
            tips:         "Keep the front-leg stationary and ensure your foot is always in contact with the BOSU. Perform this exercise in a slow and controlled manner and ensure you maintain an engaged core and good posture at all times."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Lunge (Foot Behind On BOSU)",
            muscle:  "legs",
            equipment_id: Equipment.find_or_create_by_name("BOSU").id,
            category:    "muscle",
            description:  "Take a step backwards and place your foot on top of the BOSU. Lower your back-knee towards the ground to a depth where your front-thigh is parallel to the ground. Push upwards with your front-leg to full extension of the knee.",
            tips:         "Keep the front-leg is stationary and ensure your rear-foot is always in contact with the BOSU. Perform this exercise in a slow and controlled manner and ensure you maintain an engaged core and good posture at all times."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Squat (Dumbbells)",
            muscle:  "legs",
            equipment_id: Equipment.find_or_create_by_name("Dumbbells").id,
            category:    "muscle",
            description:  "Hold two Dumbbells by your side. Slowly bend your knees and sit back until your knees are at 90 degrees or until your thighs are parallel to the floor. Keep your Chest out and Shoulders back and push through your heels to return to a standing position.",
            tips:         "Maintain a straight back and look straight ahead. Keep your core engaged and maintain your breathing throughout the exercise. As you bend your knees, sit back into your hips instead of allowing your knees to travel forwards past your toes."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Lying Hip Extension",
            muscle:  "legs",
            equipment_id: Equipment.find_or_create_by_name("").id,
            category:    "muscle",
            description:  "Lie down on the ground face up with your hands by your sides. Bend both knees to 90 degrees and keep your feet flat on the ground. Push through your heels and raise your hips as high as possible. Slowly lower the buttocks to the ground.",
            tips:         "Maintain an engaged core and lumbar curve at all times and perform this exercise under strict control. Focus on control rather than speed to feel the Glutes and Hamstrings contract in the movement."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Lying Single Leg Hip Extension",
            muscle:  "legs",
            equipment_id: Equipment.find_or_create_by_name("").id,
            category:    "muscle",
            description:  "Lie down on the ground face up with your hands down by your side. Keep one foot on the ground and bend your knee to 90 degrees. Keep the other knee out straight or vertical. Push through your heel and raise your hips as high as possible and then slowly lower the buttocks to the ground.",
            tips:         "Maintain an engaged core and lumbar curve at all times and perform this exercise under control. Focus on control rather than speed to feel your Buttocks and Hamstrings contract during the movement."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Seated Leg Press",
            muscle:  "legs",
            equipment_id: Equipment.find_or_create_by_name("Leg Press Machine").id,
            category:    "muscle",
            description:  "Sit in the Leg Press Machine and place your feet on the platforms, Shoulder-width apart. Adjust the seat so that your knees are bent at 90 degrees when your back is flat against the rear seat pad. Push evenly through the soles of your feet until your legs are straight but not locked out. Pause briefly and slowly lower the weight down to the start position.",
            tips:         "Keep your Buttocks in contact with seat. Ensure your knees are aligned over the centre of your feet and maintain contact with your heels on the platforms at all times. Perform the exercise in slow and controlled manner. Exhale as you straighten your legs."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Single Leg Press",
            muscle:  "legs",
            equipment_id: Equipment.find_or_create_by_name("Leg Press Machine").id,
            category:    "muscle",
            description:  "Sit in the Leg Press Machine and place one foot on the platform. Adjust the seat so that your knee is bent at 90 degrees when your back is flat against the rear seat pad. Push through the sole of your foot until your leg is straight but not locked. Pause briefly and slowly lower the weight down to the start position.",
            tips:         "Keep your Buttocks in contact with seat. Ensure your knee is aligned over the centre of your foot and maintain contact with your heel on the platform at all times. Perform the exercise in slow and controlled manner. Exhale as you straighten your leg."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Lunge With Rotation",
            muscle:  "legs",
            equipment_id: Equipment.find_or_create_by_name("Medicine Ball").id,
            category:    "muscle",
            description:  "Hold the Medicine Ball with your elbows at your sides. Take a step forward and lower your rear-knee to the ground by bending both legs. Once your front-thigh is parallel to the ground, rotate your torso outwards of the front-leg. Return to facing forward and push upwards with your front-leg to return to a standing position.",
            tips:         "Maintain good posture throughout the lunge and the external rotation. Avoid allowing your knee to travel past the toes upon bending of the front leg."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Sumo Squat (Dumbbell)",
            muscle:  "legs",
            equipment_id: Equipment.find_or_create_by_name("Dumbbell").id,
            category:    "muscle",
            description:  "Grasp the end of a Dumbbell and hang it towards the ground. Whilst keeping your feet Shoulder-width apart, slowly bend your knees and sit back until your thighs are parallel to the floor. Push through your heels as you straighten back up to standing position.",
            tips:         "Avoid allowing the knees to bend over the front of the toes. Engage your core and maintain a natural lumbar curve. Maintain good posture with your Chest out and Shoulders back. Perform in a slow and controlled manner."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Overhead Split Squat (Barbell)",
            muscle:  "legs",
            equipment_id: Equipment.find_or_create_by_name("Barbell").id,
            category:    "muscle",
            description:  "Push a Barbell above your head until your arms are straight. Take a comfortable long step forward and set up a lunge stance. Whilst maintain good posture, slowly lower your back knee down to the ground. Prior to contact, straighten both legs to return to starting position. The arms must remain straight above your head for the duration of the exercise.",
            tips:         "Maintain a straight Back with natural head position and engage the core to assist in hip stability and balance. Perform the exercise in a slow and controlled manner."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Overhead Split Squat",
            muscle:  "legs",
            equipment_id: Equipment.find_or_create_by_name("").id,
            category:    "muscle",
            description:  "Hold a weight plate above your head with your arms straight. Take a comfortable long step forward and set up a lunge stance. Whilst maintain good posture, slowly lower your back knee down to the ground. Prior to contact, straighten both legs to return to starting position. The arms must remain straight above your head for the duration of the exercise.",
            tips:         "Maintain a straight Back with natural head position and engage the core to assist in hip stability and balance. Perform the exercise in a slow and controlled manner."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Single Leg Split Squat",
            muscle:  "legs",
            equipment_id: Equipment.find_or_create_by_name("").id,
            category:    "muscle",
            description:  "Position one foot behind you, on top of a bench or box. Whilst maintaining good posture, carefully bend your knees until your rear-knee almost touches the ground. Slowly extend the legs and return to starting position.",
            tips:         "Maintain a straight Back and keep your vision forwards. Perform the exercise in a slow and controlled manner."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Single Leg Split Squat (Dumbbells)",
            muscle:  "legs",
            equipment_id: Equipment.find_or_create_by_name("Dumbbells").id,
            category:    "muscle",
            description:  "Grasp two Dumbbells and hold them by your sides. Position one foot behind you on the step. Whilst maintaining good posture, bend your knees and until your rear-knee is almost in contact with the ground. Slowly extend both legs and return to starting position.",
            tips:         "Stay upright and engage your core to assist in hip stability and balance. Perform the exercise in a slow and controlled manner. Keep your vision forwards."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Wall Squat (Swiss Ball)",
            muscle:  "legs",
            equipment_id: Equipment.find_or_create_by_name("Swiss Ball").id,
            category:    "muscle",
            description:  "Stand with your feet Shoulder-width apart and place a Swiss Ball between your lower back and the wall. Gently squat downwards, rolling the Swiss Ball down the wall until your thighs are parallel to the ground. Hold this position briefly and then return to your starting position.",
            tips:         "Maintain a straight back with neutral head position. Look straight ahead. Keep your core engaged and maintain your breathing throughout the exercise. As you bend your knees, sit back into your hips instead of allowing your knees to travel forwards past your toes."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Half Squats",
            muscle:  "legs",
            equipment_id: Equipment.find_or_create_by_name("").id,
            category:    "Mobility",
            description:  "Stand with your feet Shoulder-width apart with a chair directly behind you. Begin your squat by sitting back and bending at the hips and knees. Raise your arms in front of you to help your balance. Continue until your knees reach 90 degrees and then stand upright.",
            tips:         "Keep your knees aligned over your toes and maintain contact on the ground with your entire foot print at all times. Avoid allowing the knees to bend passed the front of the toes as you squat."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Front Leg Swings",
            muscle:  "legs",
            equipment_id: Equipment.find_or_create_by_name("").id,
            category:    "Mobility",
            description:  "Stand side on to a wall. Place your closest hand against the wall for balance and take all your weight in the outside leg. Swing your inner leg forwards and backwards, increasing the range of motion every time. Keep your torso upright and your vision forwards.",
            tips:         "Avoid rounding the back or leaning backwards as you swing your leg. Standing on a step or a weight plate with the outer leg can also allow greater freedom to swing your inner leg."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Side Leg Swings",
            muscle:  "legs",
            equipment_id: Equipment.find_or_create_by_name("").id,
            category:    "Mobility",
            description:  "Stand facing a wall. Place your hands against the wall for balance and take all your weight in one leg. Hold the opposite leg slightly forwards and begin to swing your leg outwards and inwards past your stationery leg. Increase the range of motion every time. Keep the torso stable and upright as possible.",
            tips:         "Avoid rounding the back or leaning backwards as you swing your leg. Standing on a step or a weight plate with the outer leg can also allow greater freedom to swing your inner leg."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Double Leg Ankle Bounce",
            muscle:  "legs",
            equipment_id: Equipment.find_or_create_by_name("").id,
            category:    "Mobility",
            description:  "Stand facing a wall with your feet Shoulder-width apart. Place you hands against the wall for balance and raise your heels to take all your weight on to your toes. Lower your heels to the ground and back up to starting position. Continue with a rapid up and down (bouncing) movement.",
            tips:         "Perform this mobility exercise in a controlled manner. Start slowly with a small range of motion and increase with every repetition."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Single Leg Ankle Bounce",
            muscle:  "legs",
            equipment_id: Equipment.find_or_create_by_name("").id,
            category:    "Mobility",
            description:  "Stand facing a wall with your feet Shoulder-width apart. Place you hands against the wall for balance and raise one foot off the ground. Raise your planted heel to assume all your weight on to your toes. Lower your heel back to the ground and back up to starting position. Continue with a rapid up and down (bouncing) movement.",
            tips:         "Perform this mobility exercise in a controlled manner. Start slowly with a small range of motion and increase with every repetition."
          )

        


          Exercise.find_or_create_by_name(
            name:         "45 Degree Leg Press",
            muscle:  "legs",
            equipment_id: Equipment.find_or_create_by_name("45 Degree Leg Press Machine").id,
            category:    "muscle",
            description:  "Sit in the Leg Press machine and position your back flat against the rear seat pad. Place your feet on the platforms shoulder width apart and point your toes forwards. Extend your legs slightly to unlock the Leg Press safety mechanism. Slowly lower the weight until your knees are bent at 90 degrees. Extend your legs back to the starting position.",
            tips:         "Keep your Buttocks in contact with the seat at all times. Ensure your knees are aligned with your feet and maintain contact with your entire foot print on the platforms. Perform this exercise in slow and controlled manner. Exhale as you straighten your legs."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Upward Dog",
            muscle:  "Hip Flexors",
            equipment_id: Equipment.find_or_create_by_name("").id,
            category:    "Stretch",
            description:  "Lie face down on the ground with the top of your feet in contact with the floor. Place your hands palms down by your side, positioned at your lower ribs. Push upwards until your arms are straight. As your torso rises, ensure legs and feet should still in contact with the ground. At the top of this movement, pull your Shoulder blades backwards and look forwards.",
            tips:         "Perform this exercise in a slow and controlled manner. With all stretching, you should feel a light stretch not pain or discomfort."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Lunge Stretch",
            muscle:  "legs",
            equipment_id: Equipment.find_or_create_by_name("").id,
            category:    "Stretch",
            description:  "Position one knee on the ground with the opposite leg out in front. Whilst maintaining an upright torso, lean forwards into your front-knee to create a stretch in the front-hip and thigh your rear-leg. Your hands can be positioned on your hips or the ground for greater stability.",
            tips:         "With all stretching, you should feel a light tension and not pain or discomfort. Exhale as you gently stretch."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Butterfly Stretch",
            muscle:  "legs",
            equipment_id: Equipment.find_or_create_by_name("").id,
            category:    "Stretch",
            description:  "Sit on the floor with good posture and position the soles of your feet together. Flare your knees out to the side and slowly relax the legs towards the ground. This stretch will target your Adductors (inner thighs).",
            tips:         "Perform this exercise in a slow and controlled manner. With all stretching, you should feel a light stretch not pain or discomfort."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Adductor Side Lunge",
            muscle:  "legs",
            equipment_id: Equipment.find_or_create_by_name("").id,
            category:    "Stretch",
            description:  "Stand upright with your feet facing forwards and position them wide apart. Maintain good posture and move your body weight to one side. Bend the knee of that side to create a stretch in the inner upper-thigh of the straight leg. Place your hands on your hips or out-stretched to the sides for balance.",
            tips:         "Perform this exercise in a slow and controlled manner. With all stretching, you should feel a light stretch not pain or discomfort."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Straight Leg Adduction",
            muscle:  "legs",
            equipment_id: Equipment.find_or_create_by_name("").id,
            category:    "Rehab",
            description:  "Lie down on your side with your bottom-leg slightly forward of the top-leg. Tighten the Quadriceps (front-thigh) to straighten the bottom-leg and flex the ankle towards you. Take all the weight into your good leg and proceed to raise the bottom-leg as high as comfortably possible. Pause briefly and slowly return your leg to the start position.",
            tips:         "This exercise engages the Adductor (inner-thigh) of the bottom-leg. Perform slowly and in a controlled manner."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Standing Knee Flexion",
            muscle:  "legs",
            equipment_id: Equipment.find_or_create_by_name("").id,
            category:    "Rehab",
            description:  "Stand upright with good posture and your core engaged. Using a stable object for balance (Chair or Table), flex the knee towards the buttocks, pause briefly at peak contraction and slowly return to starting position.",
            tips:         "Perform the exercise in a slow and controlled manner."
          )

        


          Exercise.find_or_create_by_name(
            name:         "1/4 Squats",
            muscle:  "legs",
            equipment_id: Equipment.find_or_create_by_name("").id,
            category:    "Rehab",
            description:  "Stand upright with your feet in a Shoulder-width stance. Using a stable object for balance (Chair or Bench), do a gentle squat down to create knee angle of no less than 135 degrees (1/2 squat is knees at 90 degrees angles). Once achieving this depth, slowly stand upright return to starting position.",
            tips:         "Look straight ahead. Keep your Shoulders back and your Core engaged. Keep your knees tracking same direction as the feet. Perform the exercise in a slow and controlled manner."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Forward Step Ups",
            muscle:  "legs",
            equipment_id: Equipment.find_or_create_by_name("").id,
            category:    "Rehab",
            description:  "Stand behind a 15-20cm Step or Box. Step up with the injured leg followed by the healthy leg. Once standing on top of the box, step back down with the injured leg followed by the healthy leg.",
            tips:         "Look straight ahead. Keep your Shoulders back and your Core engaged. Keep your knees tracking same direction as the feet. Perform the exercise in a slow and controlled manner."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Lateral (Side) Step Ups",
            muscle:  "legs",
            equipment_id: Equipment.find_or_create_by_name("").id,
            category:    "Rehab",
            description:  "Stand beside a 10-15cm Step or Box. Place the foot of the injured leg on top of the Box and slowly straighten the leg with your entire body weight. Once leg is softly extended, lower your body weight back down so the heel of the healthy leg gently touches the ground. Repeat.",
            tips:         "Look straight ahead. Keep your Shoulders back and your Core engaged. Keep your knees tracking same direction as the feet. Inhale as you squat and exhale as you stand upright. Perform the exercise in a slow and controlled manner."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Adductor Ball Squeeze",
            muscle:  "legs",
            equipment_id: Equipment.find_or_create_by_name("").id,
            category:    "Rehab",
            description:  "Sit down on a Chair with a small ball between your legs. Gently squeeze as tight as possible to engage the inner thigh muscles. Hold for 10 seconds and relax.",
            tips:         "Maintain good posture with your Shoulder back and a natural lumbar curve. Exhale as you squeeze the Ball and inhale as you relax. Perform the exercise in a slow and controlled manner."
          )

        


          Exercise.find_or_create_by_name(
            name:         "ABC Mobility",
            muscle:  "legs",
            equipment_id: Equipment.find_or_create_by_name("").id,
            category:    "Rehab",
            description:  "Focus on the big toe on the inured ankle and begin to write the alphabet by only moving the foot with the ankle.",
            tips:         "Start with smaller movements and progress to larger ones as your pain threshold increases."
          )

        


          Exercise.find_or_create_by_name(
            name:         "ABC Mobility",
            muscle:  "legs",
            equipment_id: Equipment.find_or_create_by_name("Resistance Band").id,
            category:    "Rehab",
            description:  "Grasp the ends of the Resistance Band and loop it around the balls of your foot. Focus on the big toe on the inured ankle and begin to write the alphabet by only moving the foot with the ankle.",
            tips:         "Start with smaller movements and progress to larger ones as your pain threshold increases. Due to its intensity perform this exercise initially only once per day."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Ankle Extension",
            muscle:  "legs",
            equipment_id: Equipment.find_or_create_by_name("Resistance Band").id,
            category:    "Rehab",
            description:  "Grasp the ends of the Resistance Band and loop it around the balls of the foot. Pull on the Resistance Band to flex the ankle towards the torso. Once achieving maximum flexion of the ankle, extend your ankle and push against the band resistance by pointing the toes.",
            tips:         "Start with smaller movements and progress to larger ones as your pain threshold and strength increases. Due to its intensity perform this exercise initially only once per day."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Inversion",
            muscle:  "legs",
            equipment_id: Equipment.find_or_create_by_name("Resistance Band").id,
            category:    "Rehab",
            description:  "Grasp the ends of the Resistance Band and loop it around the balls and inner arch of your foot. Pull the Resistance Band and turn your ankle and foot inwards against resistance. Slowly return to starting position.",
            tips:         "Start with smaller movements and progress to larger ones as your pain threshold and strength increases. Due to its intensity perform this exercise initially only once per day."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Eversion",
            muscle:  "legs",
            equipment_id: Equipment.find_or_create_by_name("Resistance Band").id,
            category:    "Rehab",
            description:  "Grasp the ends of the Resistance Band and loop it around the outer edge of your foot. Pull the Resistance Band and turn your ankle and foot outwards against the resistance. Slowly return to starting position.",
            tips:         "Start with smaller movements and progress to larger ones as your pain threshold increases. Due to its intensity perform this exercise initially only once per day."
          )

        


          Exercise.find_or_create_by_name(
            name:         "One Leg Balance",
            muscle:  "legs",
            equipment_id: Equipment.find_or_create_by_name("").id,
            category:    "Rehab",
            description:  "Challenge your balance by standing upright un-assisted on your injured ankle only. Stand near a Chair for safety. Once you have mastered this balance exercise, attempt it with your eyes closed.",
            tips:         "Challenge yourself with this exercise for 2-3 minutes."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Suspended Lunge",
            muscle:  "legs",
            equipment_id: Equipment.find_or_create_by_name("TRX").id,
            category:    "muscle",
            description:  "Stand with your feet hip-width facing away from the TRX. Take a comfortable long step forward and place your back-foot inside the TRX handles to de-stabilise your stance. Lower your back-knee towards the ground, stopping only moments before making  contact. Push through your front foot to return to starting position.",
            tips:         "Keep the knee of your front-leg directly over your heel and prevent your front-knee travelling past your front toes as you perform the movement. Engage your core to increase stability."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Goblet Squat",
            muscle:  "legs",
            equipment_id: Equipment.find_or_create_by_name("Kettlebell").id,
            category:    "muscle",
            description:  "Stand with your feet Shoulder-width apart, support the Kettlebell from its base and hold it at the top of your Chest. Slowly sit back into your hips and squat deeply. Pause briefly and stand to return to your starting position.",
            tips:         "Start with a light weight to ensure the movement is done under complete control. Keep the knees tracking over the centre of the feet. Inhale as you squat down and exhale on the way up."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Tuck Jumps",
            muscle:  "legs",
            equipment_id: Equipment.find_or_create_by_name("").id,
            category:    "Plyometrics",
            description:  "Position your feet Shoulder-width apart with your arms bent by your side. While maintaining good posture, explosively jump as high as possible and bring your knees into your Chest. Land on the balls of your feet to minimise impact and repeat immediately.",
            tips:         "Maintain an engaged core for stability and Back support. Keep your knee joints soft on landing."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Box Jumps",
            muscle:  "legs",
            equipment_id: Equipment.find_or_create_by_name("Box").id,
            category:    "Plyometrics",
            description:  "Position your feet Shoulder-width apart with your arms by your side. Explosively jump up on to the Box, landing with both feet at the same time. Step off the Box one foot at a time or jump back off depending on your fitness level.",
            tips:         "Start with a Box, 20cm in height and ensure the Box is sturdy. Clear any hard or sharp objects from the exercise area. Always land on the Box and the ground with soft knees."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Drop Jumps",
            muscle:  "legs",
            equipment_id: Equipment.find_or_create_by_name("Box").id,
            category:    "Plyometrics",
            description:  "Stand with your feet hip-width apart on a Box or Step, 20cm -30cm in height. Step off the Box and land on the ground with relaxed joints. Immediately rebound off the ground with an explosive maximum jump. Rest briefly, step back up onto the Box and repeat.",
            tips:         "Engage your core for stability and Back support. Land softly with slightly bent knee joints. Keep your vision forwards."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Split Squat Jumps",
            muscle:  "legs",
            equipment_id: Equipment.find_or_create_by_name("").id,
            category:    "Plyometrics",
            description:  "Take a long step forward with one leg, keeping your feet hip-width apart. Drop your back-knee towards the ground by bending both knees. Once your front-thigh is parallel to the ground, explode upwards into a jump and interchange legs mid-air to land in a lunge position with the opposite leg forward. Repeat the exercise, switching legs continuously.",
            tips:         "The knee of your front-leg should always be positioned directly over your ankle. Avoid knocking your kneecap into the ground and ensure your front-knee does not travel past your toes when bending."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Forward Shuffle Jumps",
            muscle:  "legs",
            equipment_id: Equipment.find_or_create_by_name("Box").id,
            category:    "Plyometrics",
            description:  "Place one foot on a box or step. Explosively jump up and interchange legs mid-air to land in the same position with the opposite leg forward. Repeat the exercise, switching legs continuously.",
            tips:         "Start with a Box, 20cm in height and ensure the Box is sturdy. Clear any hard or sharp objects from the exercise area. Always land on the Box and the ground with soft knees."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Lateral Box Jumps",
            muscle:  "legs",
            equipment_id: Equipment.find_or_create_by_name("").id,
            category:    "Plyometrics",
            description:  "Position your feet Shoulder-width apart, with your arms bent by your side. Explosively jump sideways (laterally) on to the Box. Land on top of the Box with your full foot print. Step off the Box one foot at a time or jump back off depending on your fitness level. Land with soft joints on the Box and on the ground.",
            tips:         "Start with a Box, 15-20cm in height and ensure the Box is sturdy. Clear any hard or sharp objects from the exercise area. Always land on the Box and the ground with soft knees."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Squat Jumps",
            muscle:  "legs",
            equipment_id: Equipment.find_or_create_by_name("").id,
            category:    "Plyometrics",
            description:  "Position your feet Shoulder-width apart with your arms by your side. Perform a deep squat and explosively jump up as high as you can. Land softly, pause very briefly and repeat.",
            tips:         "Maintain an engaged core for stability and Back support. Look forwards and maintain consistent breathing."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Lateral Bounds",
            muscle:  "legs",
            equipment_id: Equipment.find_or_create_by_name("").id,
            category:    "Plyometrics",
            description:  "Stand with your feet close together and bend your knees and hips to a medium depth squat. While maintaining good posture, lift one foot and take a long sideways jump, landing on the other foot. Bound continuously side to side for desired repetitions.",
            tips:         "Maintain an engaged core for stability and Back support. Start with narrow bounds and increase their width as your strength and co-ordination improves. Land softly with slightly bent knee joints."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Hurdle Jumps",
            muscle:  "legs",
            equipment_id: Equipment.find_or_create_by_name("").id,
            category:    "Plyometrics",
            description:  "Set up several hurdles in a row with a height depending on ability (30cm to 1 metre). Stand facing the hurdles with your feet Shoulder-width apart. Perform a mid squat and explosively jump with both feet over the hurdles. Use a double arm swing to assist in this movement. Continue to jump over all hurdles without resting in between.",
            tips:         "Start with 2 to 3 hurdles and increase number as strength and conditioning increases. Consider not only height but space between hurdles to increase intensity. Always land with soft knees to protect your knee joints. Maintain an engaged core for stability and Back support."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Box Jump",
            muscle:  "legs",
            equipment_id: Equipment.find_or_create_by_name("Box").id,
            category:    "Crossfit",
            description:  "Position your feet Shoulder-width apart with your arms by your side. Explosively jump up on to the Box, landing with both feet at the same time. Step off the Box one foot at a time or jump back off depending on your fitness level.",
            tips:         "Start with a Box, 20cm in height and ensure the Box is sturdy. Clear any hard or sharp objects from the exercise area. Always land on the Box and the ground with soft knees."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Squat Jumps (BOSU)",
            muscle:  "legs",
            equipment_id: Equipment.find_or_create_by_name("BOSU").id,
            category:    "Plyometric",
            description:  "Place the BOSU (round side up) approximately 30cm to 50cm in front of you. Position your feet Shoulder-width apart with your arms by your side. Jump up on to the BOSU, landing with soft knees. Step off one foot at a time or jump back off depending on your fitness level and repeat.",
            tips:         "Engage the core for greater stability and try and maintain good posture when landing the squat and stepping off. Attempt to land with your feet at the same time."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Lateral Jumps (BOSU)",
            muscle:  "legs",
            equipment_id: Equipment.find_or_create_by_name("BOSU").id,
            category:    "Plyometric",
            description:  "Place the BOSU (round side up) approximately  30cm to 50cm beside you. Position your feet Shoulder-width apart with your arms by your side. Jump sideways (laterally) up onto the BOSU. Step off one foot at a time or jump back off to the opposite side.",
            tips:         "Engage the core for greater stability and try and maintain good posture when landing the squat and stepping off. Keep you knees soft at all times."
          )

        


          Exercise.find_or_create_by_name(
            name:         "ITB Roll",
            muscle:  "legs",
            equipment_id: Equipment.find_or_create_by_name("Foam Roller").id,
            category:    "Stretch",
            description:  "Lie down on your side and place the Foam Roller just below your hip joint. Position your arms out in front of you and your legs slightly crossed for balance. Move your body to run the Foam Roller down the side of your leg from your hip to just above your knee joint. Slowly roll in the reverse direction to the start position.",
            tips:         "Perform this roll slowly and spend a little more time of tighter areas. Take 10-20 seconds to complete a directional roll."
          )

        


          Exercise.find_or_create_by_name(
            name:         "TFL Roll",
            muscle:  "legs",
            equipment_id: Equipment.find_or_create_by_name("Foam Roller").id,
            category:    "Stretch",
            description:  "Lie down on your side and position the Foam Roller just above your hip joint. Keep your arms out in front and your legs crossed for balance. Move your body to run the roller from the top of hip joint to the front of the pelvis.",
            tips:         "Perform this roll slowly and spend more time of tighter areas. Take 5-10 seconds to complete a directional roll as this area is relatively small."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Peroneal Roll",
            muscle:  "legs",
            equipment_id: Equipment.find_or_create_by_name("Foam Roller").id,
            category:    "Stretch",
            description:  "Lie down on your side and position the Foam Roller to just below the side of your knee joint. Keep your arms out in front and your legs crossed for balance. Move your body to run the Foam Roller from the knee joint to just above the ankle. Slowly roll in the reverse direction to the start position.",
            tips:         "Perform this roll slowly and spend a little more time of tighter areas. Take 5-10 seconds to complete a directional roll as this area is relatively small."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Step-Over  Squats",
            muscle:  "legs",
            equipment_id: Equipment.find_or_create_by_name("ViPR").id,
            category:    "muscle",
            description:  "Stand with your feet Shoulder-width apart and hold the ViPR with both hands in a neutral grip. Position the ViPR at Shoulder-height with your elbows gently tucked in. Rotate your torso and feet to the left 45 degrees and perform a squat. Proceed to swing your left leg around to the right and rotate your body 90 degrees. Perform another squat. Continue to swing each outside leg around and rotate the body 90 degrees before your squat.",
            tips:         "This exercise will have you travelling forwards in a zig-zag fashion. Ensure you have sufficient room to rotate and travel forwards. Keep your Shoulders back and Chest out throughout the whole movement. Keep the core engaged to assist in stability."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Walking Lunge With Twists (Medicine Ball)",
            muscle:  "legs",
            equipment_id: Equipment.find_or_create_by_name("Medicine Ball").id,
            category:    "muscle",
            description:  "Hold the Medicine Ball with both hands at your waist. Take a step forward with one leg and lower your rear knee towards the ground. As you reach a comfortable depth, rotate your entire torso towards the outside of the front-leg. Return back to facing forwards and step forward with your back-leg. Continue to move forward with each lunge.",
            tips:         "Maintain a straight Back and keep your vision forwards. Engage the Core to assist in hip stability and balance and perform the exercise in a controlled manner. Avoid bending your knees past your  toes as you lunge."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Squat (Resistance Band)",
            muscle:  "legs",
            equipment_id: Equipment.find_or_create_by_name("Resistance Band").id,
            category:    "muscle",
            description:  "Stand with your feet Shoulder-width apart. Loop the Resistance Band under your feet and hold it with your palms facing inwards at hip height. Whilst maintaining good posture, slowly perform a squat by bending the knees and hips. As your knees reach 90 degrees, stand upright.",
            tips:         "Maintain upright posture and engage the core at all times. Perform the exercise slowly and in a controlled manner. Avoid a hard lock out of the knees. Inhale as your lower into the squat and exhale as you stand upright. Re-grasp and shorten the Resistance Band to increase difficulty."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Goblet Squat (Medicine Ball)",
            muscle:  "legs",
            equipment_id: Equipment.find_or_create_by_name("Medicine Ball").id,
            category:    "muscle",
            description:  "Start with you feet Shoulder-width apart, holding the Medicine Ball at the top of the Chest. Slowly squat until your thighs are parallel to the ground. Stand to return to your starting position.",
            tips:         "Hold the Medicine Ball with both hands and your elbows firmly by your sides. Keep the knees tracking over the centre of the feet. Inhale on the way down and exhale on the way up."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Standing Leg Adduction (Resistance Band)",
            muscle:  "legs",
            equipment_id: Equipment.find_or_create_by_name("Resistance Band").id,
            category:    "muscle",
            description:  "Tie a Resistance Band around a vertical structure. Standing side-on to the Resistance Band and tie the opposite end around the ankle closest to the bands anchor point. Position the tied ankle slightly forwards and proceed to take all your weight on your back-foot. Move the front-foot away from the anchor and raise it as high as you can without allowing your hips to shift position. Pause briefly and then slowly return to start position.",
            tips:         "Maintain upright posture and engage the core at all times. Avoid a shift in hips in any direction and minimise any momentum occurring from a moving Torso. Position yourself far away enough to feel slight tension in the band when in starting position."
          )

        
end