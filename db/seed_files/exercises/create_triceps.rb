def create_triceps
  Exercise.find_or_create_by_name(
    name:        "Tricep Cable Pushdown",
    muscle_list:  "Tricep",
    equipment_list:   "Cable machine",
    description: "Stand with your feet shoulder width apart with your knees slightly bent. Grab the bar and bring your elbows in close to your sides. Align your elbows with the front of your abdomen.",
    tips:        "Keep your elbows stationary to isolate your triceps. Keep your body still to eliminate momentum, and keep your speed controlled.")
  

  Exercise.find_or_create_by_name(
    name:        "One Arm Kickback",
    muscle_list:  "Tricep",
    equipment_list:   "dumbbell",
    description: "Place one knee and hand on a bench for support. Bend over at the hips so your back is approximately parallel to the floor. With a dumbbell in the other hand, raise the upper arm so it too is parallel to the ground. Let your lower arm hang vertical.",
    tips:        "As you bend over to support with one arm, keep your hips and shoulders aligned so your spine stays in it's natual aligned position. Keep your upper arm horizontal and only return your arm to the vertical position to further isolate the triceps. Lower and raise the dumbbell slowly to avoid letting momentum do the work.")
  

  Exercise.find_or_create_by_name(
    name:        "Above head arm extension",
    muscle_list:  "Tricep",
    equipment_list:   "dumbbell",
    description: "Seated on a bench, grasp one end of the dumbbell with both hands (palms up) and raise it overhead. Position your palms so they face the inside end-plate of the dumbbell. Keep your fingers and thumbs touching.",
    tips:        "Keep your elbows stationary and close to your head. Do not let them flare out.")
  

  Exercise.find_or_create_by_name(
    name:        "Above head One arm extension",
    muscle_list:  "Tricep",
    equipment_list:   "dumbbell",
    description: "With a dumbbell in your right hand, raise your right arm directly overhead. Keep your body upright and your abdominals tight to support your spine",
    tips:        "Keep your elbow stationary throughout the movement to effectively isolate your triceps.")
  

  Exercise.find_or_create_by_name(
    name:        "Above head One arm extension",
    muscle_list:  "Tricep",
    equipment_list:   "elastic band",
    description: "Hold the dyna band in your right hand, and raise your right arm directly overhead. Let your right elbow bend so your wrist is behind your neck. Reach behind you with your left hand, and grab the dangling band.",
    tips:        "You can easily adjust the resistance by changing your grip width on the band. Experiment until you find your optimal level of resistance.")
  

  Exercise.find_or_create_by_name(
    name:        "EZ Bar Arm Extension               (lying Supine)",
    muscle_list:  "Tricep",
    equipment_list:   "EZY Bar",
    description: "Lying on a flat bench, raise the bar over the chest. Keep the elbows in place and lower the bar behind the forehead to neck level. Raise the bar back to the starting position, keeping your elbows stationary throughout.",
    tips:        "Do not lower the bar toward your face, and be careful not to hit your head with the barbell. Move the elbows if necessary to allow the bar to drop below the head.")
  

  Exercise.find_or_create_by_name(
    name:        "Close grip      Push-up",
    muscle_list:  "Tricep",
    equipment_list:   "n/a",
    description: "Kneel down and place your hands a few inches apart on the mat. Form a spade with your hands by pointing your index fingers inward. Extend your legs out straight and balance on your toes.",
    tips:        "Prevent your hips from sagging by keeping your abdominals tight. Never lock out your elbows.")
  

  Exercise.find_or_create_by_name(
    name:        "Bench Dip",
    muscle_list:  "Tricep",
    equipment_list:   "Bench, chair",
    description: "Sit down on bench with hands placed hip width. Secure hands so all pressure is taken through the butt of the palm to minimise stress on wrist joint.",
    tips:        "Maintain good posture with chest out and shoulders blades back. Keep elbows soft (not locking out) throught the entire movement and set.")
  

  Exercise.find_or_create_by_name(
    name:        "Parallel Bar Dips",
    muscle_list:  "Tricep",
    equipment_list:   "parallel bars",
    description: "Stand securely on elevated step of parallel bar aparatus (if available). Start with arms extended holding entire body weight.Legs can straight or crossed depending on height of individual and aparatus.",
    tips:        "Maintain good posture with chest out and shoulders blades back. Keep elbows soft (not locking out) throught the entire movement and set.")
end