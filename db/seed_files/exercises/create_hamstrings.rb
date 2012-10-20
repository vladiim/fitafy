#!/bin/env ruby 
# encoding: utf-8

def create_hamstrings

          Exercise.find_or_create_by_name(
            name:         "Leg Curl",
            muscle_list:  "Hamstrings",
            equipment_id: Equipment.find_or_create_by_name("Leg Curl Machine").id,
            type_list:    "Muscle",
            description:  "Lie face down on the Bench and adjust the rolls of the machine so they are located just above your heels. Bend your knees and bring your heels into your buttocks. Pause briefly and return to the starting position.",
            tips:         "Avoid raising your hips off the pad as you pull your heels towards your buttocks. Perform the exercise in a slow and controlled manner."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Swiss Ball Leg Curl",
            muscle_list:  "Hamstrings",
            equipment_id: Equipment.find_or_create_by_name("Swiss Ball").id,
            type_list:    "Muscle",
            description:  "Lie down on the ground, face up with both feet placed upon the Swiss Ball. Keep you hands by your side for stability and raise your hips as high as possible. Slowly pull your heels towards your buttocks. Pause briefly and slowly return to start position.",
            tips:         "Keep the movement smooth and controlled and maintain your elevated hips. Increase the difficulty of by widening the placement of your arms and even raise them off the ground if you are advanced."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Swiss Ball Single Leg Curl",
            muscle_list:  "Hamstrings",
            equipment_id: Equipment.find_or_create_by_name("Swiss Ball").id,
            type_list:    "Muscle",
            description:  "Lie down on the ground, face up with both feet placed upon the Swiss Ball. Keep you hands by your side for stability and raise your hips as high as possible. Raise one leg off the ball and slowly pull the other heel towards your Buttocks. Pause briefly and slowly return to start position.",
            tips:         "Keep the movement smooth and controlled and maintain your elevated hips. Increase the difficulty of by widening the placement of your arms and even raise them off the ground if you are advanced."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Straight Leg Deadlift (Dumbbells)",
            muscle_list:  "Hamstrings",
            equipment_id: Equipment.find_or_create_by_name("Dumbbells").id,
            type_list:    "Muscle",
            description:  "Stand with your feet Shoulder-width apart and hold the Dumbbells in front of your hips. Keeping your spine straight and slightly bent knees, tip forward from the hips until you feel a light stretch in the Hamstrings. Pause briefly and slowly return to an upright position.",
            tips:         "Keep you shoulders back and core engaged at all times. This exercise should be done carefully, in a slow and controlled manner."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Straight Leg Deadlift (Barbell)",
            muscle_list:  "Hamstrings",
            equipment_id: Equipment.find_or_create_by_name("Barbell").id,
            type_list:    "Muscle",
            description:  "Stand with your feet Shoulder-width apart and hold the Barbell in front of your hips. Keeping your spine straight and slightly bent knees, tip forward from the hips until you feel a light stretch in the Hamstrings. Pause briefly and slowly return to an upright position.",
            tips:         "Keep you shoulders back and core engaged at all times. This exercise should be done carefully, in a slow and controlled manner."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Russian Leg Curls",
            muscle_list:  "Hamstrings",
            equipment_id: Equipment.find_or_create_by_name("").id,
            type_list:    "Muscle",
            description:  "Commence in a kneeling position on the floor with a training partner behind you, holding your ankles. While keeping good posture, tip forward and slowly lower your torso towards the floor. Place your hands on the floor to catch your fall. Use your arms to push yourself up off the floor, while contracting the Hamstrings to return you to your starting position.",
            tips:         "For advanced trainers only. During your first attempt at this exercise work through a small range of motion i.e. The first 25 percent of the full-range. As your strength increases, increase your range of motion. Keep your Shoulder back and core engaged throughout the exercise."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Single Leg Deadlift",
            muscle_list:  "Hamstrings",
            equipment_id: Equipment.find_or_create_by_name("Dumbbells").id,
            type_list:    "Muscle",
            description:  "Hold the Dumbbells in front of you with straight arms. Take your weight into one leg and allow the opposite leg to counter balance behind you. Bend forward from the hips and slowly lower the Dumbbells towards the ground until you feel a stretch in your Hamstrings of your stationary leg. Slowly return to your upright position.",
            tips:         "Perform the exercise in a slow and controlled manner and maintain good posture at all times."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Lying Hamstring Stretch",
            muscle_list:  "Hamstrings",
            equipment_id: Equipment.find_or_create_by_name("").id,
            type_list:    "Stretch",
            description:  "Lie on your Back, raise one leg in the air while the other remains flat on the ground. Grasp behind the knee of the vertical leg and pull it towards your torso. Extend the knee until you feel a stretch in the rear of the upper leg.",
            tips:         "Keep the natural curve of the spine. With all stretching, your aim is to feel a light stretch not pain or discomfort."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Hamstring Stretch On Bench",
            muscle_list:  "Hamstrings",
            equipment_id: Equipment.find_or_create_by_name("").id,
            type_list:    "Stretch",
            description:  "Stand upright and place one heel on a sturdy Bench. While maintaining your posture, slowly lean forward directly over the leg to feel a stretch in the rear of the upper-leg.",
            tips:         "Flattening or rounding the spine during this stretch will increase your range of motion without increasing the flexibility of the Hamstrings. With all stretching, you should feel a light stretch not pain or discomfort."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Seated Forward Lean",
            muscle_list:  "Hamstrings",
            equipment_id: Equipment.find_or_create_by_name("").id,
            type_list:    "Stretch",
            description:  "Sit on the floor and extend both legs out in front of you. Lean forward and reach towards your toes. A bent leg will create a stretch towards the centre of the Hamstrings while a straight leg will also create a total-leg stretch.",
            tips:         "Flattening or rounding the spine during this stretch will increase your range of motion without increasing the flexibility of the Hamstrings. With all stretching, you should feel a light stretch not pain or discomfort."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Hurdler Stretch",
            muscle_list:  "Hamstrings",
            equipment_id: Equipment.find_or_create_by_name("").id,
            type_list:    "Stretch",
            description:  "Sit down on the floor with one leg straight out in front and the other leg bent outwards. Lean forward from the hips towards the direction of the straight leg. You should feel a stretch down the back of the upper-leg.",
            tips:         "Exhale as you gently stretch. As with all stretching, you should feel a light stretch not pain or discomfort."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Hamstring Curl",
            muscle_list:  "Hamstrings",
            equipment_id: Equipment.find_or_create_by_name("TRX").id,
            type_list:    "Muscle",
            description:  "Lie back on the floor and place your heels in the TRX stirrups. Position your hands down by your sides for stability and elevate your hips by contracting your Buttocks. Whilst maintaining this position, slowly pull your heels towards your buttocks. Pause briefly and return to the starting position.",
            tips:         "Keep you vision upwards and sustain an engaged core for stability. To increase the difficulty of this exercise, move your arms further away from your body."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Hamstring Roll",
            muscle_list:  "Hamstrings",
            equipment_id: Equipment.find_or_create_by_name("Foam Roller").id,
            type_list:    "Stretch",
            description:  "Sit on the floor with the Foam Roller positioned just below your buttocks. Place your hands beside but slightly behind your body to support your weight. Raise your buttocks off the floor to increase pressure on your Hamstrings by the Foam Roller. Roll the foam downwards, from your buttocks to just above your knee. Slowly roll in the reverse direction to the start position.",
            tips:         "Perform this roll slowly and spend a little more time of tighter areas. Take 10-15 seconds to complete a directional roll. Increase the intensity of this roll by crossing your legs to have contact with only one leg."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Hamstring Curls (Medicine Ball)",
            muscle_list:  "Hamstrings",
            equipment_id: Equipment.find_or_create_by_name("Medicine Ball").id,
            type_list:    "Muscle",
            description:  "Lie face down with your partner standing at your head with a Medicine Ball. Get your partner to roll the Medicine Ball from your Buttocks, down your legs towards your ankles. As the Medicine Ball reaches your ankles, powerfully bend your knees to thrust the Medicine Ball back to your partner.",
            tips:         "Commence with a light Medicine Ball to perfect the action and ensure you are thoroughly warmed up before starting. Minimise any upper-body movement and avoid raising the hips to assist in the movement."
          )

        
end