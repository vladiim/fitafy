def create_chest
  Exercise.find_or_create_by_name(
    name:        "Barbell Bench Press",
    category_list:  "Chest",
    equipment_list:   "Barbell",
    description: "Lie flat on the bench with the feet firmly pressing into the floor. Place your grip on the bar slightly wider than shoulder width. Remove the bar from the supports.",
    tips:        "Use a wider grip with the elbows perpendicular to the torso to focus on the chest; use a narrow grip with elbows in close to focus on the triceps.")
  

  Exercise.find_or_create_by_name(
    name:        "Dumbbell Bench Press",
    category_list:  "Chest",
    equipment_list:   "Dumbbell",
    description: "Grab two dumbbells, sit and then lie flat on a flat bench.",
    tips:        "Exhale as you press the dumbbells off chest, inhale as the dumbbells are lowered. Take 2-3 seconds to raise the dumbbells, and 3-4 seconds to lower the dumbbells.")
  

  Exercise.find_or_create_by_name(
    name:        "Dumbbell Flyes",
    category_list:  "Chest",
    equipment_list:   "Dumbbell",
    description: "Grab two dumbbells, sit and then lie on a flat bench, holding the dumbbells just above the chest. Start by pressing the weight above you. As you extend the arms turn your palms toward one another.",
    tips:        "Exhale as you press the dumbbells off chest, inhale as the dumbbells are lowered. Take 2-3 seconds to raise the dumbbells, and 3-4 seconds to lower the dumbbells.")
  

  Exercise.find_or_create_by_name(
    name:        "Incline Dumbbell Press",
    category_list:  "Chest",
    equipment_list:   "",
    description: "Set yor incline bench to a 45 degree angle. Lie on your back on the incline bench and position the dumbbells beside your upper chest.",
    tips:        "Exhale as you press the dumbbells off chest, inhale as the dumbbells are lowered. Take 2-3 seconds to raise the dumbbells, and 3-4 seconds to lower the dumbbells.")
  

  Exercise.find_or_create_by_name(
    name:        "Incline Dumbbell Flyes",
    category_list:  "Chest",
    equipment_list:   "Dumbbell",
    description: "Grab two dumbbells, sit and then lie on an incline bench set a a 45 degree angle. Holding dumbbells just above the chest. Start by pressing the weight above you. As you extend the arms turn your palms toward one another.",
    tips:        "Exhale as you press the dumbbells off chest, inhale as the dumbbells are lowered. Take 2-3 seconds to raise the dumbbells, and 3-4 seconds to lower the dumbbells.")
  

  Exercise.find_or_create_by_name(
    name:        "Decline Dumbbell Press",
    category_list:  "Chest",
    equipment_list:   "Dumbbell",
    description: "Set yor adjustable bench to 20 to 30 degree angle below the line of a flat bench.  Lie on your back on the decline bench and position the dumbbells beside your lower chest.",
    tips:        "Exhale as you press the dumbbells off chest, inhale as the dumbbells are lowered. Take 2-3 seconds to raise the dumbbells, and 3-4 seconds to lower the dumbbells.")
  

  Exercise.find_or_create_by_name(
    name:        "Decline Dumbbell Flyes",
    category_list:  "Chest",
    equipment_list:   "Dumbbell",
    description: "Grab two dumbbells, sit and then lie on an decline bench set at 20-30 degree angle below the line of a flat bench. Holding dumbbells just above the chest.",
    tips:        "Exhale as you press the dumbbells off chest, inhale as the dumbbells are lowered. Take 2-3 seconds to raise the dumbbells, and 3-4 seconds to lower the dumbbells.")
  

  Exercise.find_or_create_by_name(
    name:        "Close Grip Bench Press",
    category_list:  "Chest",
    equipment_list:   "Barbell",
    description: "Lie flat on the bench with the feet firmly pressing into the floor. Place your grip on the bar slightly narrower than shoulder width. Remove the bar from the supports.",
    tips:        "Don't expect to use as much weight as with regular bench press since you won't have as much chest involvement. Also, let the wrists adapt gradually to the added strain of the close grip.")
  

  Exercise.find_or_create_by_name(
    name:        "Push Up",
    category_list:  "Chest",
    equipment_list:   "",
    description: "Keeping the body in a straight line, slowly lower yourself until the chest is close to touching the floor. Hold for one second, then press yourself upwards. While doing the push-up, the hands should be directly under the shoulders. Keep the stomach tight to help keep the body straight and prevent lower back pain.",
    tips:        "Inhale as you lower the body, exhale as you press up. Important - if you let the hips sag you will stress your lower back. Keep the stomach tight and back straight. Don't let your head hang down, keep your neck in line with your spine. This exercise can also be modified to the knees to create less resistance.")
  

  Exercise.find_or_create_by_name(
    name:        "Push Up Intermediate",
    category_list:  "Chest",
    equipment_list:   "Bench, Chair",
    description: "Place the back of a chair/bench against a wall to keep it from sliding. Place your hands on the edge of the seat or on the arm rests. Kneel on the ground, and move your knees away from the chair until your upper and lower body are aligned.",
    tips:        "Don't let your hips sag. This places additional stress on the lower back. Keep your abdominals tight. This will help you maintain proper form.")
  

  Exercise.find_or_create_by_name(
    name:        "Push Up               (Beginner)",
    category_list:  "Chest",
    equipment_list:   "Wall",
    description: "Stand a few feet away from a wall or countertop, and place your hands shoulder-width apart on it. Slowly lower yourself down until your chest is close the wall/counter, keeping your body in a straight line throughout the movement. Hold for 1/2 second, and then return to the starting position.",
    tips:        "Try this simpler version of the traditional Push-up if regular and/or Modified Push-ups are difficult for you.")
  

  Exercise.find_or_create_by_name(
    name:        "Cable Cross Over",
    category_list:  "Chest",
    equipment_list:   "Dual Cable Machine",
    description: "Grasp the handles with the palms facing inward. Stand in the middle of the cable machine with one foot slightly in front of one another. Slightly bend forward at the hips, keeping your back in its naturally arched position. Extend your slightly bent arms back and outward until your feel a stretch in your chest.",
    tips:        "This is a traditional exercise used by bodybuilders to focus on their inner chest development. Focus on good form, with slow and controlled movements. Point of contraction can change depending the angle of handle movement i.e. Upper pecs can be targeted with a cross over starting from the bottom setting on the machine to a contraction which finishes at shoulder height.")
  

  Exercise.find_or_create_by_name(
    name:        "Swiss Dumbbell Press",
    category_list:  "Chest",
    equipment_list:   "Swiss ball, Dumbbells",
    description: "Sit on a Swiss ball with the dumbbells on your thighs, feet approximately shoulder width apart. Roll down the ball until your mid and upper back are supported. Bring the weights up to shoulder level in a chest press position.",
    tips:        "Narrow your foot width to decrease stability and further challenge your torso muscles. Try to keep your body as still and stable as possible throughout the exercise.")
  

  Exercise.find_or_create_by_name(
    name:        "Swiss Ball                  Push Up",
    category_list:  "Chest",
    equipment_list:   "Swiss ball, Dumbbells",
    description: "Get in a push-up position with your toes on the ball. Place your hands shoulder width apart. Align your shoulders directly over your hands.",
    tips:        "Focus on keeping your torso very tight and stable. To make the exercise easier, place your shins on the ball. To increase difficulty, place toes on the ball or even have only one foot in contact with the swiss ball.")
  

  Exercise.find_or_create_by_name(
    name:        "Chest Press with Elastic Band",
    category_list:  "Chest",
    equipment_list:   "Elastic Band",
    description: "Sit upright in a chair or on the ground. Hold one end of the band in each hand, and place it around your upper back.",
    tips:        "You don't have to sit on the floor to do this exercise. If the band is long enough, you may wrap it around the back of a chair.")
  

  Exercise.find_or_create_by_name(
    name:        "Chest Press",
    category_list:  "Chest",
    equipment_list:   "Chest Press Machine",
    description: "Adjust the seat so that your hands are level with the middle of your chest when you grasp the handles. Inhale and lift your chest high.",
    tips:        "For variety, try doing the movements iso-laterally. First, extend your left arm, and then bring it back in as you extend your right arm. Continue to alternate.")
  

  Exercise.find_or_create_by_name(
    name:        "Close Grip Bench Press",
    category_list:  "Chest",
    equipment_list:   "Barbell",
    description: "Lie flat on the bench with the feet firmly pressing into the floor. Place your grip on the bar slightly narrower than shoulder width. Remove the bar from the supports.",
    tips:        "Don't expect to use as much weight as with regular bench press since you won't have as much chest involvement. Also, let the wrists adapt gradually to the added strain of the close grip.")
  

  Exercise.find_or_create_by_name(
    name:        "Parallel Bar Dips",
    category_list:  "Tricep",
    equipment_list:   "Parallel Bars",
    description: "Stand securely on elevated step of parallel bar aparatus (if available). Start with arms extended holding entire body weight.Legs can straight or crossed depending on height of individual and aparatus.",
    tips:        "Maintain good posture with chest out and shoulders blades back. Keep elbows soft (not locking out) throught the entire movement and set.")
  

end