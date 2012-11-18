#!/bin/env ruby 
# encoding: utf-8

def create_chest

          Exercise.find_or_create_by_name(
            name:         "Barbell Bench Press",
            muscle:  "chest",
            equipment_id: Equipment.find_or_create_by_name("Barbell").id,
            category:    "muscle",
            description:  "Lie flat on the Bench with your feet firmly pressing into the floor. Place your grip on the bar slightly wider than Shoulder-width. Remove the Bar from the supports. Lower the Bar to just above the Lower-chest pause briefly and push the bar back up until your arms are straight.",
            tips:         "Use a wider-grip with your elbows perpendicular to your torso to focus on the chest; use a narrow-grip with elbows in close to focus on the Triceps. Do not excessively arch the Lower-Back and at all times keep the Shoulders and hips in contact with the Bench."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Dumbbell Bench Press",
            muscle:  "chest",
            equipment_id: Equipment.find_or_create_by_name("Dumbbell").id,
            category:    "muscle",
            description:  "Grab two Dumbbells, sit down and then lie down on a Flat-Bench. Start with the Dumbbells beside you at mid-chest level. Push the Dumbbells up until your arms are straight, pause briefly and slowly return to the starting position.",
            tips:         "Exhale as you push the Dumbbells off  the chest, inhale as the Dumbbells are lowered. Perform the movement in a slow and controlled manner. Be careful getting in and out of position with the Dumbbells."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Dumbbell Flyes",
            muscle:  "chest",
            equipment_id: Equipment.find_or_create_by_name("Dumbbell").id,
            category:    "muscle",
            description:  "Grab two Dumbbells, sit down and then lie down on a Flat-Bench. Extend your arms and turn your palms toward one another. In an arch shaped movement, slowly lower your arms out to the side, keeping a slight bend in the elbows. Once your chest is stretched, move back towards the starting position. Follow the same arch you created on the way down.",
            tips:         "Exhale as you press the Dumbbells off your chest, inhale as the Dumbbells are lowered. Perform the movement in a slow and controlled manner. Keep your core engaged and your feet flat on the floor during the entire movement."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Incline Barbell Press",
            muscle:  "chest",
            equipment_id: Equipment.find_or_create_by_name("Barbell").id,
            category:    "muscle",
            description:  "Set your Incline-Bench to approximately 45 degrees. Lie on the Incline-Bench with the feet firmly pressing into the floor. Grip the bar slightly wider than Shoulder-width and then remove the Bar from the supports. Lower the Bar to just above the chest. Pause briefly and push the Bar back up until your arms are straight.",
            tips:         "Use a wide-grip with the elbows perpendicular to the torso to focus on the chest; use a narrow-grip with elbows in close to focus on the Triceps. Avoid excessively arching the Lower-Back and at all times keep the head, Shoulders and hips in contact with the Bench."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Incline Dumbbell Press",
            muscle:  "chest",
            equipment_id: Equipment.find_or_create_by_name("Dumbbell").id,
            category:    "muscle",
            description:  "Set your Incline-Bench to approximately 45 degrees. Lie on the Incline Bench with the feet firmly pressing into the floor. Grasp two Dumbbells and position them slightly wider than Shoulder-width. Push upwards until your arms are fully extended. Pause briefly then lower the Dumbbells to the starting position.",
            tips:         "Avoid excessively arching the Lower-Back and at all times keep the head, Shoulders and hips in contact with the Bench. Straighten the arms until full extension but not hard lock out."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Incline Dumbbell Flyes",
            muscle:  "chest",
            equipment_id: Equipment.find_or_create_by_name("Dumbbell").id,
            category:    "muscle",
            description:  "Grab two Dumbbells and lie down on an Incline-Bench set at 45 degrees. Extend your arms and turn your palms toward one another. In an arch shaped movement, slowly lower your arms out to the side, keeping a slight bend in the elbows. Once you feel a stretch in your chest, move the Dumbbells back towards the starting position. Follow the same arch you created on the way down.",
            tips:         "Perform the movement in a slow and controlled manner. Keep your core engaged and your feet flat on the floor during the entire movement. Inhale as you lower the Dumbbells and exhale as your raise the weight."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Decline Dumbbell Press",
            muscle:  "chest",
            equipment_id: Equipment.find_or_create_by_name("Dumbbell").id,
            category:    "muscle",
            description:  "Hold two Dumbbells and lay down on a Decline-Bench set at 30 degrees. Start with the Dumbbells beside you at mid-chest level. Push the Dumbbells upwards until your arms are straight, pause briefly and then slowly return to start position.",
            tips:         "Exhale as you press the Dumbbells off your chest, inhale as you lower the Dumbbells. Perform the movement in a slow and controlled manner. Do not let the Dumbbells swing out to the sides like you are doing a chest Fly."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Decline Barbell Press",
            muscle:  "chest",
            equipment_id: Equipment.find_or_create_by_name("Barbell").id,
            category:    "muscle",
            description:  "Position a Decline-Bench set at 30 degrees within a Squat Rack or Power Rack. Lie down on the Bench, place your grip on the bar slightly wider than Shoulder-width and remove the bar from the supports. Lower the Bar to just above the Lower-chest, pause briefly, then push the bar upwards until your arms are straight.",
            tips:         "Exhale as you press the Barbell off your chest, inhale as you lower the Barbell. Perform the movement in a slow and controlled manner."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Decline Dumbbell Flyes",
            muscle:  "chest",
            equipment_id: Equipment.find_or_create_by_name("Dumbbell").id,
            category:    "muscle",
            description:  "Grab two Dumbbells and lie down on a Decline-Bench set at 30 degrees. Extend your arms and turn your palms toward one another. In an arch shaped movement, slowly lower your arms out to the side, keeping a slight bend in the elbows. Once your chest is stretched, move the Dumbbells back towards the starting position. Follow the same arch you created on the way down.",
            tips:         "Exhale as you press the Dumbbells off your chest, inhale as the Dumbbells are lowered. Perform the movement in a slow and controlled manner. Be careful getting on and off the Bench with the Dumbbells."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Close Grip Bench Press",
            muscle:  "chest",
            equipment_id: Equipment.find_or_create_by_name("Barbell").id,
            category:    "muscle",
            description:  "Lie down on the Bench, place your hands on the bar with your hands a fist distance apart. Remove the bar from the supports. Lower the Bar to just above the Lower-chest, pause briefly, then push the bar upwards until your arms are straight.",
            tips:         "Don't expect to use as much weight as with regular Bench press as you won't have as much chest involvement. Allow your wrists to adapt gradually to the added strain of the close grip. Keep your core engaged and at all times, keep the Shoulders and hips in contact with the Bench."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Push Up (Wall)",
            muscle:  "chest",
            equipment_id: Equipment.find_or_create_by_name("").id,
            category:    "muscle",
            description:  "Stand a few feet away from a wall or counter top and position your hands Shoulder-width apart to commence the movement. Slowly lower yourself down until your chest is close the wall or counter. Pause briefly and return to the starting position. Keep your body in a straight line throughout the movement. To increase difficulty, move your feet further away from the wall or counter or use a lower counter as you get stronger.",
            tips:         "Prevent your hips from sagging by keeping your core engaged and Back straight. Be sure your hands are firm against the wall, don't let them slip during the push movement. Exhale as you push up and inhale as you lower yourself back to the wall or counter."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Push Up (Bench)",
            muscle:  "chest",
            equipment_id: Equipment.find_or_create_by_name("Bench").id,
            category:    "muscle",
            description:  "Kneel a few feet away from a Bench. With your hands positioned Shoulder-width apart, slowly lower yourself downwards until your chest is close the Bench. Pause briefly, then return to the starting position. To increase difficulty, get on your toes and  position your body in straight alignment. Place your hands closer together to better target your Triceps. You will not be able to do as many reps, but you will enjoy the extra intensity.",
            tips:         "Prevent your hips from sagging by keeping your core engaged and Back straight. Be sure your hands are firm against the bench. Exhale as you push up and inhale as you lower yourself back to the bench."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Push Up",
            muscle:  "chest",
            equipment_id: Equipment.find_or_create_by_name("").id,
            category:    "muscle",
            description:  "Start face down on the ground with your hands positioned Shoulder-width apart. Take your body weight on your toes and your hands. Slowly push yourself back up until your arms are fully extended. Whilst keeping your body in a straight line, slowly lower yourself to the starting position. Place your hands closer together to better target your Triceps.",
            tips:         "Prevent your hips from sagging by keeping your core engaged and back straight. Exhale as you push up and inhale as you lower yourself back to the starting position."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Push Up (BOSU)",
            muscle:  "chest",
            equipment_id: Equipment.find_or_create_by_name("BOSU").id,
            category:    "muscle",
            description:  "Start face down with your feet Shoulder-width apart and position your hands on the sides of the BOSU (flat side up). While maintaining your hands directly under your Shoulders, raise your chest, hips and knees off the ground to distribute your weight over your toes and arms. Slowly lower your chest to the top of the BOSU and then push back up to the starting position.",
            tips:         "Prevent your hips from sagging by keeping your core engaged and Back straight. Exhale as you push up and inhale as you lower yourself back to the starting position."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Push Up On Knees",
            muscle:  "chest",
            equipment_id: Equipment.find_or_create_by_name("BOSU").id,
            category:    "muscle",
            description:  "Start kneeling down on the ground and position your hands on the sides of the BOSU (flat side up). While keeping your hands directly under your Shoulders, raise your chest and hips off the ground to distribute your weight over your knees and arms. Slowly lower your chest to the top of the BOSU and then push through your hands to return to the starting position.",
            tips:         "Prevent your hips from sagging by keeping your core engaged and Back straight. Exhale as you push up and inhale as you lower yourself back to the starting position."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Medicine Ball Push Up On Knees",
            muscle:  "chest",
            equipment_id: Equipment.find_or_create_by_name("Medicine Ball").id,
            category:    "muscle",
            description:  "Start face down with your feet Shoulder-width apart. Take your bodyweight through your arms, with one hand on top of the Medicine Ball. Push through both arms equally to raise your chest , hips and knees off the ground. Extend your arms as far as a possible without a 'hard lock' and return to starting position. Reverse the position of your hands and complete another rep. Continue to alternate hands with each push up to complete your set.",
            tips:         "Engage your core to stop your hips and Lower-Back from sagging. Exhale on the way up and inhale on the way down. Look down."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Medicine Ball Push Up",
            muscle:  "chest",
            equipment_id: Equipment.find_or_create_by_name("Medicine Ball").id,
            category:    "muscle",
            description:  "Start by kneeling down in front of the Medicine Ball. Take your bodyweight through your arms, with one hand on top of the Medicine Ball. Push through both arms equally to raise your chest , hips and knees off the ground. Extend your arms as far as a possible without a 'hard lock' and return to starting position. Reverse the position of your hands and complete another rep. Continue to alternate hands with each push up to complete your set.",
            tips:         "Engage your core to stop your hips and Lower-Back from sagging. Exhale on the way up and inhale on the way down. Look down."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Single Arm Dumbbell Press On Swiss Ball",
            muscle:  "chest",
            equipment_id: Equipment.find_or_create_by_name("Dumbbell").id,
            category:    "muscle",
            description:  "Sit on a Swiss Ball with one Dumbbell on your thigh. Set your feet Shoulder-width apart and roll down the Swiss Ball until your Upper-Back is supported. Raise your hips up as high as possible. Bring the Dumbbell up to one Shoulder and place your free hand on the opposite hip. Push the Dumbbell upwards until your arm is vertical. Pause briefly and lower the Dumbbell back to starting position.",
            tips:         "Sit up to change arms during this exercise.  Exhale on the way up and inhale on the way down. Perform the exercise in a slow and controlled manner and maintain hip level as you perform the movement."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Swiss Ball Alternating Dumbbell Press",
            muscle:  "chest",
            equipment_id: Equipment.find_or_create_by_name("Dumbbell").id,
            category:    "muscle",
            description:  "Sit on a Swiss Ball with two Dumbbells on each thigh. Set your feet Shoulder-width apart and roll down the ball until your Upper-Back is supported. Raise your hips up as high as possible. Bring the Dumbbells up to Shoulder-height as if you were doing a chest Press. Perform a Dumbbell Press with one arm. As you begin to lower that Dumbbell, push the opposite Dumbbell upwards. Continue the alternating pressing movements between each arm without resting.",
            tips:         "Keep your body as still as possible throughout the exercise.  Exhale on the way up and inhale on the way down. Perform the exercise in a slow and controlled manner. Keep your vision upwards at all times."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Swiss Ball Push Up",
            muscle:  "chest",
            equipment_id: Equipment.find_or_create_by_name("Swiss Ball").id,
            category:    "muscle",
            description:  "Place your hands Shoulder-width apart on the ground. Align your Shoulders directly over your hands and place your shins on top of a Swiss Ball behind you. Push up until your arms are straight and raise your hips to create alignment between your feet and Shoulders. Lower your chest until just off the floor. Pause briefly and push up to the starting position.",
            tips:         "Engage your core for more stability. To increase difficulty, place toes on the Swiss Ball or even have only one foot in contact with the Swiss Ball. Avoid allowing your hips to sag downwards.  Exhale as you push upwards and perform the exercise in a slow and controlled manner."
          )

        


          Exercise.find_or_create_by_name(
            name:         "chest Press With Elastic Band",
            muscle:  "chest",
            equipment_id: Equipment.find_or_create_by_name("Elastic Band").id,
            category:    "muscle",
            description:  "Sit upright in a chair or on the ground. Hold one end of the band in each hand and loop the band around your Upper-Back. Keeping your hands at Shoulder-height, straighten your arms out in front of you. Your hands should come together at full extension. Pause briefly, then slowly return to the starting position.",
            tips:         "If the band is long enough, you may wrap it around the back of a chair. This exercise can also be done lying down on the ground in a supine (face-up) position. Perform the exercise in a slow and controlled manner. Exhale as your extend your arms and inhale on their return."
          )

        


          Exercise.find_or_create_by_name(
            name:         "chest Press Machine",
            muscle:  "chest",
            equipment_id: Equipment.find_or_create_by_name("Machine").id,
            category:    "muscle",
            description:  "Adjust your seat so that your hands are level with the middle of your chest when you grasp the handles of the chest Press Machine. Smoothly push the handles away from you. Pause briefly then slowly return to the starting position.",
            tips:         "Avoid slumping your chest and Shoulders. Keep your Upper-Back and hips in contact with the cushions behind you at all times. Perform the exercise in a slow and controlled manner. Exhale as your push outwards and inhale as you return to your start position."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Close Grip Barbell Bench Press",
            muscle:  "chest",
            equipment_id: Equipment.find_or_create_by_name("Barbell").id,
            category:    "muscle",
            description:  "Lie flat on the Bench with your feet firmly pressed into the floor. Grasp the Barbell slightly narrower than Shoulder-width. Remove the Barbell from the supports and lower it to just above the chest. Push the Barbell upwards until your arms are straight. Pause briefly and slowly return to your starting position.",
            tips:         "Exhale as you push the Barbell off your chest and inhale as it is lowered. Perform the exercise slowly and in complete control. Avoid excessive arching of the Lower-Back and keep your Shoulders and hips in contact with the Bench at all times."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Parallel Bar Dips",
            muscle:  "chest",
            equipment_id: Equipment.find_or_create_by_name("Parallel Bars").id,
            category:    "muscle",
            description:  "Stand securely on the elevated step of the Parallel Bar apparatus. Start with your arms extended, holding your entire body weight. Your legs can be straight or crossed depending on your height or the height of the Parallel Bars. While maintaining good posture, lower your body towards the ground to a point where your elbows are bent at 90 degrees. Straighten your arms to full extension but don't fully lock them out.",
            tips:         "Maintain good posture with your chest out and Shoulders back. Avoid lowering your body to a point where your elbows are flexed to less than 90 degrees. Exhale as you extend your arms and always perform the exercise in a slow and controlled manner."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Assisted Dips",
            muscle:  "chest",
            equipment_id: Equipment.find_or_create_by_name("Assisted Dip Machine").id,
            category:    "muscle",
            description:  "Stand securely on the elevated step of the Assisted Dip Machine. Place one knee on the cushion located at hip height. Take your body weight into your arms and raise the second leg onto the cushion. Progress to a position where your arms are extended and supporting your entire body weight. While maintaining good posture, lower your body towards the ground, to a point where your elbows are at 90 degrees. Straighten your arms to full extension but don't fully lock them out.",
            tips:         "Maintain good posture with your chest out and Shoulders back. Avoid lowering your body to a point where your elbows are flexed to less than 90 degrees. Exhale as you extend your arms and always perform the exercise in a slow and controlled manner."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Smith Machine Bench Press",
            muscle:  "chest",
            equipment_id: Equipment.find_or_create_by_name("Smith Machine").id,
            category:    "muscle",
            description:  "Before applying weight to the Smith Machine, lie flat on the Bench, grasp the Bar and lock the Bar at slightly less than full extension of your arms. This will be your starting position. Place your grip on the bar slightly wider than Shoulder width. Remove the Bar from the supports and proceed to lower the Bar to your chest. Push the Bar upwards until your arms are at full extension but not locked.",
            tips:         "Use a wide-grip with the elbows perpendicular to the torso to focus on the chest; use a narrow-grip with elbows in close to focus on the Triceps. Avoid excessive arch the Lower-Back and keep your Shoulders and hips in contact with the Bench at all times. Exhale as you push upwards and inhale as you lower the Bar to your chest. Perform the exercise in a slow and controlled manner."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Incline Bench Press (Smith Machine)",
            muscle:  "chest",
            equipment_id: Equipment.find_or_create_by_name("Smith Machine").id,
            category:    "muscle",
            description:  "Set an adjustable Bench to a 45 degree incline and place is within the Smith Machine frame. Before applying weight to the Smith Machine, lie flat on the Bench, grasp the Bar and lock it at slightly less than full extension of your arms. This will be your starting position. Place your grip on the Bar slightly wider than Shoulder-width. Remove the Bar from the supports and lower it to just above the chest. Push the Bar back up until your arms are at full extension but not locked.",
            tips:         "Use a wider-grip with the elbows perpendicular to the torso to focus on the chest; use a narrow-grip with elbows in close to focus on the Triceps. Do not excessively arch the Lower-Back. At all times keep the Shoulders and hips in contact with the Bench. Exhale on the way up and inhale on the way down. Perform the exercise in a slow and controlled manner."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Decline Smith Machine Press",
            muscle:  "chest",
            equipment_id: Equipment.find_or_create_by_name("Smith Machine").id,
            category:    "muscle",
            description:  "Set your Bench to a 30 degree angle and place it within the Smith Machine. Before adding weight, lie flat on the Bench, grasp the Bar and lock it at slightly less than full extension of your arms. This will be your starting position. Place your grip on the Bar slightly wider than Shoulder-width. Remove the Bar from its supports and lower it to your chest. Push the Bar upwards until your arms are at full extension but not locked.",
            tips:         "Exhale as you push the Barbell off your chest and inhale as it is lowered. At all times keep the shoulders and hips in contact with the bench. Perform the exercise in a slow and controlled manner."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Dumbbell Pullover",
            muscle:  "chest",
            equipment_id: Equipment.find_or_create_by_name("Dumbbell").id,
            category:    "muscle",
            description:  "Lie down with only your Upper-Back and head in contact with the Bench. Contract your Glutes and push your hips up in line with your torso and knees. Grasp a pre-placed Dumbbell from beside your head and fasten your hands over one end of the Dumbbell i.e. under the inner plates on the handle. Position the Dumbbell over your chest with softly extended arms. Keeping your arms in this position, slowly lower the weight behind your head towards the ground. Once your upper-arms are in line your torso, slowly pull the Dumbbell back to the start position.",
            tips:         "Keep your elbows fixed in a slightly bent position. Perform the exercise slowly and stay in a comfortable range of motion i.e. Don’t aim to touch the floor by over extending the shoulders. Perform the exercise in a slow and controlled manner."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Push Up (Swiss Ball on Toes)",
            muscle:  "chest",
            equipment_id: Equipment.find_or_create_by_name("Swiss Ball").id,
            category:    "muscle",
            description:  "Lie face down with your chest on the Swiss Ball. Position your hands by the sides of your chest with your fingers facing forwards. Extend your knees and hips and  straighten your arms to start the exercise. Slowly lower your chest to the Swiss Ball and push back to the start position to complete a repetition.",
            tips:         "Engage the Abdominals and continue breathing throughout the entire movement. Perform this exercise in a slow and controlled movement."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Push Up (Swiss Ball On Knees)",
            muscle:  "chest",
            equipment_id: Equipment.find_or_create_by_name("Swiss Ball").id,
            category:    "muscle",
            description:  "Kneel down facing the Swiss Ball. Lower your torso to the ball and place your hands by the sides of your chest with your fingers facing forwards. Keep your hips in line with your knees and Shoulders and push through your hands to extend your elbows. Slowly lower your chest to the Swiss Ball and push back to the start position to complete one repetition.",
            tips:         "Engage the Abdominals and maintain breathing throughout the exercise. Perform this movement in a slow and controlled manner."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Dumbbell Press  On Swiss Ball",
            muscle:  "chest",
            equipment_id: Equipment.find_or_create_by_name("Swiss Ball").id,
            category:    "muscle",
            description:  "Hold the Dumbbells at the side of your chest and lie down on the Swiss Ball face up. Your Shoulders and head must always be in contact with the Swiss Ball. Position your feet Shoulder-width apart with your hips fully extended to start. Point your elbows outwards and proceed to push the Dumbbells up in a narrow arch. Pause briefly and then return to the start position.",
            tips:         "Straighten the arms to full extension but do not lock out your elbows. Maintain complete control throughout the exercise and exhale as you push the Dumbbells upwards. Engage the Core for greater stability."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Dip",
            muscle:  "chest",
            equipment_id: Equipment.find_or_create_by_name("Roman RIngs").id,
            category:    "Crossfit",
            description:  "Start with your arms extended holding your entire body weight. Your legs can be straight or crossed depending on your height or the height of the Roman RIngs. While maintaining good posture, lower your body towards the ground to a point where the elbows are at 90 degrees. Straighten your arms to full extension.",
            tips:         "Maintain good posture with your chest out and Shoulders back. Avoid lowering your body to a point where the elbows are flexed to less than 90 degrees. Perform the exercise in a slow and controlled manner."
          )

        


          Exercise.find_or_create_by_name(
            name:         "chest to Wall Stretch",
            muscle:  "chest",
            equipment_id: Equipment.find_or_create_by_name("").id,
            category:    "Stretch",
            description:  "Stand upright and place your hand up against a wall. Your arm may be straight or bent at a 90 degree angle. Slowly rotate your body outwards until you begin to feel a stretch in your chest. Relax and repeat with the other arm.",
            tips:         "Ensure that you do this stretch gently and release it slowly to avoid injury. As with all stretching, you should feel a light stretch not pain or discomfort."
          )

        


          Exercise.find_or_create_by_name(
            name:         "chest Stretch on Swiss Ball",
            muscle:  "chest",
            equipment_id: Equipment.find_or_create_by_name("").id,
            category:    "Stretch",
            description:  "Start in a horse-stance on the ground with a Swiss Ball by your side. Place your arm on top of the Swiss Ball with your elbow bent at 90 degrees. Slowly rotate your body outwards from the Swiss Ball until you begin to feel a stretch in your chest.",
            tips:         "Ensure that you do this stretch gently and release it slowly to avoid injury. As with all stretching, you should feel a light stretch not pain or discomfort."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Push Up (Feet In Straps)",
            muscle:  "chest",
            equipment_id: Equipment.find_or_create_by_name("TRX").id,
            category:    "muscle",
            description:  "Start face down and secure your feet in the TRX straps. Take your bodyweight into your hands to create a straight line in your body and keep your arms directly under your Shoulders. Lower your chest towards the ground until your upper-arms are parallel with the floor. Extend your arms and push your torso back up to the starting position.",
            tips:         "Engage the Abdominals to prevent your hips and Lower-Back from sagging. Keep you head in a neutral position and look downwards. Perform the exercise in a slow and controlled manner."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Push Up On Knees (Feet In Straps)",
            muscle:  "chest",
            equipment_id: Equipment.find_or_create_by_name("TRX").id,
            category:    "muscle",
            description:  "Start face down and secure your feet in the TRX straps. Take your bodyweight into your knees and hands to create a straight line in your body and keep your arms directly under your Shoulders. Lower your chest towards the ground until your upper-arms are parallel with the floor. Extend your arms and push your torso back up to the starting position.",
            tips:         "Engage the Abdominals to prevent your hips and Lower-Back from sagging. Keep you head in a neutral position and look down. Perform the exercise in a slow and controlled manner."
          )

        


          Exercise.find_or_create_by_name(
            name:         "chest Press",
            muscle:  "chest",
            equipment_id: Equipment.find_or_create_by_name("TRX").id,
            category:    "muscle",
            description:  "Grasp the TRX handles and lean forward with a split stance. The TRX straps should be set in a diagonal position away from you. While keeping good posture along with a straight back leg, bend your elbows outwards and lower your chest towards the handles. Extend your arms and push your torso back to the starting position.",
            tips:         "Keep your Abdominals tight and your Back straight. Inhale as you lower your body towards the TRX handles and exhale as you push upwards. Increase the intensity of this exercise by lengthening the TRX straps and commencing in a more horizontal position."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Overhead Throws",
            muscle:  "chest",
            equipment_id: Equipment.find_or_create_by_name("Medicine Ball").id,
            category:    "Plyometrics",
            description:  "Stand approximately 3 metres in front of a wall with your feet Shoulder-width apart in a split stance. Hold a Medicine Ball behind your head with your elbows pointing forwards. Explosively throw the Medicine Ball against the wall and catch it at chest-level or aim lower to catch the Medicine Ball off the bounce.",
            tips:         "Engage the core to maintain stability and avoid excessive arching of the lumbar spine to perform the movement. This exercise can also be performed with a partner, throwing to one another."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Over Back Throws",
            muscle:  "chest",
            equipment_id: Equipment.find_or_create_by_name("Medicine Ball").id,
            category:    "Plyometrics",
            description:  "Set your feet Shoulder-width apart with your Back facing the direction you would like to throw. Grasp the Medicine Ball with two hands and hold it at your hips. Lower the Medicine Ball towards the ground with a medium squat and explosively extend upwards to launch the Medicine Ball overhead and backwards as far as possible. Retrieve the Medicine Ball and repeat.",
            tips:         "Ensure you have sufficient ceiling height and open space when performing this exercise. Maintain good posture at all times during the movement and engage the core for stability and injury prevention. Keep your vision straight ahead."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Squat Throws",
            muscle:  "chest",
            equipment_id: Equipment.find_or_create_by_name("Medicine Ball").id,
            category:    "Plyometrics",
            description:  "Stand with your feet Shoulder-width apart and hold a Medicine Ball under your chin to assume the starting position. Squat down to 90 degrees in the knees and then explosively jump in the air. Thrust the Medicine Ball with your arms in to the air as high as possible. Catch the Medicine Ball with slightly bent arms and lower it to starting position.",
            tips:         "Ensure you have sufficient ceiling height and open space when performing this exercise. Maintain good posture at all times during this movement and engage the core for stability and injury prevention."
          )

        


          Exercise.find_or_create_by_name(
            name:         "chest Pass",
            muscle:  "chest",
            equipment_id: Equipment.find_or_create_by_name("Medicine Ball").id,
            category:    "Plyometrics",
            description:  "Perform this exercise facing your partner who is positioned 3 metres away. Set your feet in a staggered stance and hold a Medicine Ball at your chest. Explosively throw the Medicine Ball with both arms and aim for your partners chest. Instruct your partner to catch and return the Medicine Ball with the same explosive throw. Continue to throw back and forth until desired reps or time frame is achieved.",
            tips:         "Maintain and engage your core for stability and Back support. Have your fingers spread and your elbows soft when catching to prevent injury. Exhale as your throw the Medicine Ball."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Lying chest Throw",
            muscle:  "chest",
            equipment_id: Equipment.find_or_create_by_name("Medicine Ball").id,
            category:    "Plyometrics",
            description:  "Lie down on the ground face-up. Have your partner standing at your head, ready with a Medicine Ball. Extend your arms towards the Medicine Ball, keep your Shoulder blades back and bend your knees to 90 degrees. Prepare to catch the Medicine Ball as your partner to drops it towards your chest. Lower the Medicine Ball to your chest and explosively push upwards to thrust the Medicine Ball as high as possible. Instruct your partner to catch the Medicine Ball and repeat the ball drop action.",
            tips:         "Maintain good posture throughout the movement. Exhale as you push upwards and always keep your elbows slightly bent on the impact phases of the exercise."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Alternating Plyo Push Up (On Toes)",
            muscle:  "chest",
            equipment_id: Equipment.find_or_create_by_name("Medicine Ball").id,
            category:    "Plyometrics",
            description:  "Commence in a push up position with your hands set slightly wider than your Shoulders. Place a Medicine Ball underneath one hand and lower your chest down towards the ground. Reaching near the bottom, explosively push upwards and simultaneously roll the Medicine Ball across your body to position it underneath the opposite hand. Repeat the same movement and continue to roll the Medicine Ball side to side between the push ups.",
            tips:         "Maintain an engaged core for stability and Back support. Protect the elbow joints by keep them slightly bent and soft. Keep your head in a neutral position and keep your vision downwards."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Shoulder Tap Push Up",
            muscle:  "chest",
            equipment_id: Equipment.find_or_create_by_name("").id,
            category:    "Plyometrics",
            description:  "Start in a push up position with your hands set slightly wider than your Shoulders. With your arms extended and body in straight alignment, raise one hand off the ground and tap your opposite Shoulder. Quickly return to the starting push up position. Once stable, repeat on the other Shoulder with the other hand. As you become stronger, increase the speed of the movement.",
            tips:         "Maintain an engaged core for stability and Back support. Protect the elbow joints by keep them slightly bent and soft. Keep your head in a neutral position and keep your vision downwards."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Alternating Plyo Push Up (On Knees)",
            muscle:  "chest",
            equipment_id: Equipment.find_or_create_by_name("Medicine Ball").id,
            category:    "Plyometrics",
            description:  "Start in a push up position with your knees on the ground. Set your hands slightly wider than your Shoulders. Place a Medicine Ball underneath one hand and lower your chest down towards the ground. Reaching near the bottom, explosively push upwards and simultaneously roll the Medicine Ball across your body to position it underneath the opposite hand. Repeat the same movement and continue to roll the Medicine Ball side to side between the push ups.",
            tips:         "Maintain an engaged core for stability and Back support. Protect the elbow joints by keep them slightly bent and soft. Keep your head in a neutral position and keep your vision downwards."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Plyo Push Up",
            muscle:  "chest",
            equipment_id: Equipment.find_or_create_by_name("").id,
            category:    "Plyometrics",
            description:  "Start in a push up position with your hands set slightly wider than your Shoulders. Starting with your arms extended, lower yourself to the ground and then explosively push upwards that your hands leave the ground. Once your hands are in contact with the ground again, slowly lower your chest to the ground. Repeat desired number of repetitions.",
            tips:         "Maintain good posture throughout the movement. Exhale as your push upwards and always keep slightly bent or soft elbows on the down phase of the push up. Aim to get as much height off the ground as possible in the up phase."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Depth Push Ups",
            muscle:  "chest",
            equipment_id: Equipment.find_or_create_by_name("").id,
            category:    "Plyometrics",
            description:  "Start in a push up position with your hands set slightly wider than your Shoulders. Have two blocks or steps set up just outside your hands at this point. Lower yourself to the ground and then explosively push upwards and land your hands on the blocks/steps. Lower your chest to the ground again. Explosively push up and return the hands to the ground. Slowly lower your body to the original starting push up position.",
            tips:         "Maintain good posture throughout the movement. Exhale as your push upwards and always keep your elbows soft or slightly bent on the down phase of the push up. Aim to get as much height off the ground as possible in the up phase."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Clap Push Up",
            muscle:  "chest",
            equipment_id: Equipment.find_or_create_by_name("").id,
            category:    "Plyometrics",
            description:  "Start in a push up position with your hands set slightly wider than your Shoulders. Lower your chest to the ground and then explosively push upwards that your hands leave the ground. Clap your hands together and return them to their original position. Slowly lower your chest towards the ground and repeat.",
            tips:         "Maintain good posture throughout the movement. Exhale as your push upwards and always keep your elbows soft or slightly bent on the down phase of the push up. Aim to get as much height off the ground as possible in the up phase."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Push Up (BOSU)",
            muscle:  "chest",
            equipment_id: Equipment.find_or_create_by_name("BOSU").id,
            category:    "muscle",
            description:  "Start face down with your feet Shoulder-width apart and position your hands on the sides of the BOSU (flat side up). While maintaining your hands directly under your Shoulders, raise your chest, hips and knees off the ground to distribute your weight evenly over your toes and arms. Slowly lower your chest to the top of the BOSU and then push through your hands to return to the starting position.",
            tips:         "Prevent your hips from sagging by keeping your core engaged and back straight. Exhale as you push up and inhale as you lower yourself back to the starting position."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Push Up On Knees (BOSU)",
            muscle:  "chest",
            equipment_id: Equipment.find_or_create_by_name("BOSU").id,
            category:    "muscle",
            description:  "Start face-down with your knees on the ground and position your hands on the sides of the BOSU (flat side up). While maintaining your hands directly under your Shoulders, raise your chest and hips off the ground to distribute your weight over your knees and arms. Slowly lower your chest to the top of the BOSU and then push through your hands to return to the starting position.",
            tips:         "Prevent your hips from sagging by keeping your core engaged and back straight. Exhale as you push up and inhale as you lower yourself back to the starting position. Inhale on the down phase and exhale as you push upwards."
          )

        


          Exercise.find_or_create_by_name(
            name:         "chest Stretch",
            muscle:  "chest",
            equipment_id: Equipment.find_or_create_by_name("Foam Roller").id,
            category:    "Stretch",
            description:  "Lie back on the Foam Roller face up, with your head resting at one end and your buttocks down the other. Bend your knees to 90 degrees and place your feet flat on the ground Shoulder-width apart. Position your arms at 90 degrees from your torso. Take a deep breath in and open your chest to enable the arms to sink towards the ground.",
            tips:         "Perform this movement slowly. Focus on breathing and relaxing into a long and deep stretch."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Push Up On Toes With Lateral Roll",
            muscle:  "chest",
            equipment_id: Equipment.find_or_create_by_name("ViPR").id,
            category:    "muscle",
            description:  "Start in a push up position with your hands wider than Shoulder-width. Place one hand flat on the ground and the other on top of the ViPR.  Lower your chest towards the ground and then as you push up, roll the ViPR through to the other side. Place your opposite hand on the ViPR and repeat the push up. Repeat with alternating push ups.",
            tips:         "Keep your Shoulders back and chest out throughout the whole movement. Engage your core to prevent your hips from sagging downwards. Avoid a full lock out of the elbows on the up phase and keep your vision downwards."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Push Up On Knees With Lateral Roll",
            muscle:  "chest",
            equipment_id: Equipment.find_or_create_by_name("ViPR").id,
            category:    "muscle",
            description:  "Start on your knees in a push up position with your hands set wider than Shoulder-width. Place one hand flat on the ground and the other on top of the ViPR.  Lower your chest towards the ground and then as you push upwards, roll the ViPR through to the other side. Place your opposite hand on the ViPR and repeat the push up. Repeat with alternating push ups.",
            tips:         "Keep your Shoulders back and chest out throughout the whole movement. Engage your core to prevent your hips from sagging downwards. Avoid a full lock out of the elbows on the up phase and keep your vision downwards."
          )

        


          Exercise.find_or_create_by_name(
            name:         "chest Press With Elastic Band",
            muscle:  "chest",
            equipment_id: Equipment.find_or_create_by_name("Elastic Band").id,
            category:    "muscle",
            description:  "Sit upright in a Chair or on the ground. Hold the tow ends of the band in each hand and loop the Elastic Band around your upper-back. Keeping your grip at Shoulder-height, straighten your arms out in front of you. Your hands should come together at full extension of the arms. Pause briefly and slowly return to the starting position.",
            tips:         "If your band is long enough, you may wrap it around the back of a Chair. This exercise can also be done lying down on the ground in a supine (face up) position. Perform the exercise in a slow and controlled manner. Exhale as your extend your arms and inhale on their return."
          )

        
end