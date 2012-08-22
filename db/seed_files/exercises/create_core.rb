def create_core
  Exercise.find_or_create_by_name(
    name:        "Sit Up",
    muscle_list:  "Abs",
    equipment_list:   "none",
    description: "Begin on the ground in a supine (face up) position.",
    tips:        "Increase the intensity of this exercise, you may start with the hands on the knees and then progress to arms crossed over the shoulders. Perform 2 or 3 sets of 15-20 reps.")
  

  Exercise.find_or_create_by_name(
    name:        "Swiss ball Abdominal Crunch",
    muscle_list:  "abs",
    equipment_list:   "swiss ball",
    description: "Commence seated on the ball with your feet shoulder width apart. Slowly roll down until your lumbar spine is comfortably curving with the contour of the ball. Engage the lower abdominal to stabilise your hips and the roll your upper torso up the ball until a contraction is felt in the rectus abdominus (front of abs). Slowly return to start position.",
    tips:        "The following order of arm location will increase the intesnity of this exercise; hands on thighs, Arms crossed over chest, Hand behind the head and finally holding a weight either on the chest or behind the head (advanced). 3 sets of 20 reps.")
  

  Exercise.find_or_create_by_name(
    name:        "Reverse crunch",
    muscle_list:  "abs",
    equipment_list:   "none",
    description: "Lie down on the floor face up with your hands down by your sides. With your legs bent at 90  bring your knees up towards your chest slightly raising your hips up off the ground. Pause for a moment and the return to start position.",
    tips:        "Perform in slow and controlled manner and avoid momentum to complete the exercise. Keep your legs straight to increase the difficulty of the exercise. Perform 10-20 repetitions.")
  

  Exercise.find_or_create_by_name(
    name:        "Bicycle Sit up",
    muscle_list:  "abs",
    equipment_list:   "none",
    description: "Start on the floor with your legs bent at 90 , heels off the ground and your hands behind your head. Contract the abdominals to raise both shoulder blades off the ground and then move the left elbow and towards the right knee while extending  the left leg out straight to 45 . Complete this movement on the other side and then continue to alternate without pause.",
    tips:        "A contraction of the abdominals is required during this entire movement. The exercise can be done for time e.g. 30-60 secs or repetitions e.g. 30-40 reps.")
  

  Exercise.find_or_create_by_name(
    name:        "Side Plank",
    muscle_list:  "abs",
    equipment_list:   "none",
    description: "Commence lying down on one side with your feet scissored for stability. Take your bodyweight on to your elbow and forearm and then raise the hips to form a straight aligminent  in the body. The only points of contact with the ground should be the arm and side of the feet.",
    tips:        "Maintain your elbow directly under your shoulder and leave your free arm for support or safety.You may place it on your hip once comfortable. Engaging the abdominals will prevent your hips from sagging. Start with a 15 second hold and progress to 60 seconds as you are able. Repeat 2-3 times.")
  

  Exercise.find_or_create_by_name(
    name:        "Side Plank (knee on ground)",
    muscle_list:  "abs",
    equipment_list:   "none",
    description: "Commence lying down on one side with your feet scissored for stability. Take your bodyweight on to your elbow and forearm and feet and then raise the hips form a straight aligminent  in the body. Keep the bottom knee bent and incontact with the ground for additional stability.",
    tips:        "Maintain your elbow directly under your shoulder and leave your free arm for support or safety.You may place it on your hip once comfortable. Engaging the abdominals will prevent your hips from sagging. Start with a 15 second hold and progress to 60 seconds as you are able. Repeat 2-3 times.")
  

  Exercise.find_or_create_by_name(
    name:        "Plank (on toes)",
    muscle_list:  "abs",
    equipment_list:   "none",
    description: "Commence face down with your feet shoulder width and take your bodyweight in to your forearms and elbows. Maintain your elbows directly under your shoulders. Raise your chest , hips and knees off the ground to distribute your weight over your toes and elbows only.",
    tips:        "This is an isometric exercise, so try and hold this position with minimal movement. Engaging the abdominals will prevent your hips and lower back from sagging. Start with a 15 second hold and progress to 60 seconds as you are able. Repeat 2-3 times.")
  

  Exercise.find_or_create_by_name(
    name:        "Plank (on knees)",
    muscle_list:  "abs",
    equipment_list:   "none",
    description: "Commence face down with your feet shoulder width and take your bodyweight in to your forearms and elbows. Maintain your elbows directly under your shoulders. Raise your chest , hips off the ground to distribute your weight over your knees, toes and elbows.",
    tips:        "This is an isometric exercise, so try and hold this position with minimal movement. Engaging the abdominals will prevent your hips and lower back from sagging. Start with a 15 second hold and progress to 60 seconds as you are able. Repeat 2-3 times.")
  

  Exercise.find_or_create_by_name(
    name:        "V-Sit up",
    muscle_list:  "abs",
    equipment_list:   "none",
    description: "Begin on the floor sitting up right with your knees tucked in to your chest. If required, place your hands by your sides to stability. Simultaneously slowly recline your torso and extend your legs out in front to engae the abs. Pause and return to start position.",
    tips:        "Perform in slow and controlled manner and avoid momentum to complete the exercise. Inhale on the extension of the logs and exhale on the return to the start position. Can be performed on a bench or BOSU ball also. Perform 10-20 repetitions.")
  

  Exercise.find_or_create_by_name(
    name:        "Decline Reverse Crunch",
    muscle_list:  "abs",
    equipment_list:   "none",
    description: "Lie down on a decline bench or a flat bench that has been raised on one side with a box or step lid. Grasp the bench underneath your head for stability. Slowy lift your knees towards chest, pause for a moment and then return to strating position.",
    tips:        "Perform in slow and controlled manner and avoid momentum to complete the exercise. Keep your legs straight to increase the difficulty of the exercise. Perform 10-20 repetitions.")
  

  Exercise.find_or_create_by_name(
    name:        "Bosu Sit Up + Hip Flexion",
    muscle_list:  "abs",
    equipment_list:   "BOSU",
    description: "Lie back over the BOSU with your buttocks more towards the front edge. Place your hands behind your head with your elbows pointed outwards. Perform a slow contraction of the abs (crunch) raising the shoulder blades of the BOSU and simultaneously bring one knee towards your chest.",
    tips:        "A contraction of the abdominals is required during this entire movement. The exercise can be done for time e.g. 30-60 secs or repetitions e.g. 30-40 reps.")
  

  Exercise.find_or_create_by_name(
    name:        "Push Up + Verical Row",
    muscle_list:  "abs",
    equipment_list:   "dumbbells",
    description: "Grasp 2 dumbbells and set up in a push up position (toes or knees) with your hands placed slightly wider than your shoulders. Maintain alignment/posture in the torso with abs engaged and slowly pull one of the dumbbells inwards the side of the chest. Return to the start position and perform on the other side.",
    tips:        "It is important to maintain good posture during this movement and minimise any excessive torso deviation. Exhale on the vertical rowing motion of this exercise. Perform  2 or 3 sets of 12-15 repetitions.")
  

  Exercise.find_or_create_by_name(
    name:        "Mountain Climber",
    muscle_list:  "abs",
    equipment_list:   "none",
    description: "Commence face down wtih your feet shoulder width apart. Position your hands and straight arms directly under your shoulders to maximise stability. Raise your chest , hips and knees off the ground. While maintaining this plank position, slowly bring one knee towards the upper arm of the corresponding side for contact. Slowly return to start position and repeat on the opposite side.",
    tips:        "Avoid any arching or sagging of the back. Encourage the use of the side abdominals to perform the movement and minimise arching of the back.   Perform 10-20 repetitions.")
  

  Exercise.find_or_create_by_name(
    name:        "hanging knee raises",
    muscle_list:  "abs",
    equipment_list:   "none",
    description: "Hold onto a chin up bar or similar with an overhand grip. Take all your weight in to your arms and hang the yourbody in straight alignment. Slowy lift your knees towards chest, pause for a moment and then return to strating position.",
    tips:        "Perform in slow and controlled manner and avoid momentum to complete the exercise. Keep your legs straight to increase the difficulty of the exercise. Perform 10-20 repetitions.")
  

  Exercise.find_or_create_by_name(
    name:        "Standing cable rotations (woodchop)",
    muscle_list:  "abs",
    equipment_list:   "Cables",
    description: "Adjust the cable handle around shoulder height or slightly above. Position yourself with your feet facing forwards and your sides facing the cable handle. Stand approx 1m away and grasp the handle with extended arms and a rotation in the torso.",
    tips:        "While keeping your arms straight, rotate against the resistance and pull the handle towards the opposite hip (furthest away from the machine). Return to start position.Keep the knees slightly bent the arms softly extended and perfrom the exercise in a controlled manner.")
  

  Exercise.find_or_create_by_name(
    name:        "Wood Chop (on BOSU)",
    muscle_list:  "abs",
    equipment_list:   "BOSU and Cables",
    description: "Adjust the cable handle around shoulder height or slightly above. Position yourself with your feet facing forwards on  wither side of the BOSU and your sides facing the cable handle. Stand approx 1m away and grasp the handle with extended arms and a rotation in the torso.",
    tips:        "While keeping your arms straight, rotate against the resistance and pull the handle towards the opposite hip (furthest away from the machine). Return to start position.Keep the knees slightly bent the arms softly extended and perfrom the exercise in a controlled manner.")
  

  Exercise.find_or_create_by_name(
    name:        "Leg Lifts/Raises",
    muscle_list:  "abs",
    equipment_list:   "none",
    description: "Lie supine (face up) and place your hands by your sides or under your lower back. Raise your slightly bent legs to vertical and then engage your abs while maintaining your natural curve in spine to commence the movement. Slowly lower your legs towards the gound until you feel your lower back increase in arch, pause and return to start position.",
    tips:        "Perform in slow and controlled manner and avoid momentum to complete the exercise. Perform 10-20 repetitions.")
  

  Exercise.find_or_create_by_name(
    name:        "back extension",
    muscle_list:  "back",
    equipment_list:   "none",
    description: "Position yourself face down with your hands down by your sides. Raise chest off the ground to engage the lower back and glutes.",
    tips:        "Difficulty of the exercise can be changed by the position of the arms. Commence with hands by your sides, progress to hand unde the chin. Perform 3 sets of 15 repetitions.")
  

  Exercise.find_or_create_by_name(
    name:        "Reverse back extension",
    muscle_list:  "back",
    equipment_list:   "none",
    description: "Position yourself face down with your hands down by your sides. Raise your extended legs to engage the glutes and lower back and then slowly return them to the start position.",
    tips:        "This exercise shoulde be felt in the lumbar spine (erector spinae) and the glutes.  Perform 3 sets of 15 repetitions.")
  

end