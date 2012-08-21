def create_back
  Exercise.find_or_create_by_name(
    name:        "Chin Up",
    category_list:  "Back",
    equipment_list:   "Pull Bar",
    description: "Begin from a hanging position on a fixed pull-up bar with your grip slightly wider than shoudler width.",
    tips:        "Try using different grips to vary how you work your back and arms. Turn your palms away from you to work more forearm, and turn them toward you to work more biceps. Some facilities have an assisted pull-up machine. Try this if you're having difficulty reaching your goal number or repetitions.")
  

  Exercise.find_or_create_by_name(
    name:        "Lat Pulldown",
    category_list:  "Back",
    equipment_list:   "Pulldown machine",
    description: "Adjust the knee pads/seat so your legs touch the knee pad. Grip the bar, wider than shoulder width. Sit upright and slightly lean back.",
    tips:        "Adjust your upper body angle when you perform this exercise. Sitting upright will place more emphasis on your middle back (lats), while leaning back will place more emphasis on the muscles near your spine (rhomboids).")
  

  Exercise.find_or_create_by_name(
    name:        "Seated Row",
    category_list:  "Back",
    equipment_list:   "Low cable row",
    description: "Sit upright with your legs slightly bent and your feet together. Grasp handle and pull elbows towards to your sides, keeping your hands level with your lower rib cage. Squeeze your shoulder blades together near the end of the pull. Hold for 1/2 second, and then slowly return to the starting position.",
    tips:        "Keep your torso upright. Focus on keeping your chest out and lower back muscles tight.")
  

  Exercise.find_or_create_by_name(
    name:        "Seated Row (Elastic band)",
    category_list:  "Back",
    equipment_list:   "Elastic band",
    description: "Sit upright with your legs slightly bent and your feet together. Hold one end of the band in each hand, and place the center of the band across the bottoms of your feet. Adjust the tension of the band by grabbing higher or lower on it or by wrapping it around your hands.",
    tips:        "Keep your torso upright. Focus on keeping your chest out and lower back muscles tight.")
  

  Exercise.find_or_create_by_name(
    name:        "Seated Row (Wide bar grip)",
    category_list:  "Back",
    equipment_list:   "low cable row, Wide bar",
    description: "Place your feet on the supports with your knees slightly flexed. Grab the bar with a wide grip (As wide as your elbows when you extend them out to the sides). Sit upright with your torso vertical, keeping the natural arch in your lower spine.",
    tips:        "A wonderful exercise for improving your posture. It helps strengthen the muscles that roll your shoulders back.")
  

  Exercise.find_or_create_by_name(
    name:        "Prone Row",
    category_list:  "Back",
    equipment_list:   "Dumbbells",
    description: "Lay face down on a stable flat bench. While maintaining good posture i.e. Head face down and back straight, grasp two dumbbells (from floor) and pull vertically in to your sides.",
    tips:        "A wonderful exercise for improving your posture. It helps strengthen the muscles that roll your shoulders back. Feel your upper back muscles initiate the entire movement.")
  

  Exercise.find_or_create_by_name(
    name:        "Prone Row",
    category_list:  "Back",
    equipment_list:   "barbell",
    description: "Lay face down on a stable flat bench. While maintaining good posture i.e. Head face down and back straight, grasp barbell (from floor) and pull vertically so your elbows reach your sides.",
    tips:        "A wonderful exercise for improving your posture. It helps strengthen the muscles that roll your shoulders back. Feel your upper back muscles initiate the entire movement.")
  

  Exercise.find_or_create_by_name(
    name:        "Bent Over Row",
    category_list:  "Back",
    equipment_list:   "barbell",
    description: "Stand over the barbell with the legs slightly bent and back flat. Bend down and grasp the barbell about shoulder width. Pull the bar to the lower chest. Keep the back approximately parallel to the floor, try not to rest the bar on the floor between repetition.",
    tips:        "Be careful with this exercise if you have lower back problems, start light and progress slowly. If problems persist substitute for another exercise such as a machine based seated row.")
  

  Exercise.find_or_create_by_name(
    name:        "Bent Over Row (dumbbells)",
    category_list:  "Back",
    equipment_list:   "Dumbbells",
    description: "Hold the dumbbells in front of you with your palms facing the back. Bend over at the waist. Keep your knees slightly bent and your back flat.",
    tips:        "Exhale as you pull the dumbbells up, inhale as you lower the dumbbells towards the floor. Take 2-3 seconds to raise the dumbbells, and 3-4 seconds to lower the dumbbells.")
  

  Exercise.find_or_create_by_name(
    name:        "Close grip Pulldown",
    category_list:  "Back",
    equipment_list:   "Lat pulldown machine",
    description: "Adjust the knee pads/seat so your legs touch the knee pad. Use the handle which resembles a traingular prism or arternatively use a reverse grip on a long bar. Sit upright and slightly lean back.",
    tips:        "Adjust your upper body angle when you perform this exercise. Sitting upright will place more emphasis on your middle back (lats), while leaning back will place more emphasis on the muscles near your spine (rhomboids).")
  

  Exercise.find_or_create_by_name(
    name:        "Deadlift",
    category_list:  "Back",
    equipment_list:   "barbell",
    description: "Stand as close to the bar as possible, feet shoulder width apart. Grip the bar with one palm facing down and one palm facing up (mixed grip), slightly wider than shoulder width apart. Keep your spine as straight as possible, bending at the hips. You should have a moderate bend in the knees.",
    tips:        "One of the best exercises to develop strength in your lower back, thighs, and butt in one movement. It's a functional exercise, which strengthens your muscles for lifting activities and helps to prevent lower back injury.")
  

  Exercise.find_or_create_by_name(
    name:        "Deadlift",
    category_list:  "Back",
    equipment_list:   "Dumbbells",
    description: "Stand as close to the bar as possible, feet shoulder width apart. Hold a dumbbell in each hand in front of your hips. Keep your spine as straight as possible and gently bend at the hips. You should have a moderate bend in the knees.",
    tips:        "One of the best exercises to develop strength in your lower back, thighs, and butt in one movement. It's a functional exercise, which strengthens your muscles for lifting activities and helps to prevent lower back injury.")
  

  Exercise.find_or_create_by_name(
    name:        "Pull Over",
    category_list:  "Back",
    equipment_list:   "Dumbbells",
    description: "Lying on a bench, grasp one end of the dumbbell with both hands. Place your palms so they face the inside end-plate of the dumbbell, with your fingers and thumbs touching. Press it above your shoulders, leaving a slight bend in the elbows.",
    tips:        "Inhale deeply as you lower the dumbbell, and exhale as you lift it back to your starting position. Go slowly, taking 3-4 seconds to lower and raise the dumbbell.")
  

  Exercise.find_or_create_by_name(
    name:        "Good Morning",
    category_list:  "Back",
    equipment_list:   "barbell",
    description: "Place a barbell on the base fo your neck, comfortably on the upper back (trapezius) muscle. Stand with feet shoulder width apart.",
    tips:        "Bend at the hips, not at the lower spine. Keep your back flat throughout the whole movement.")
  

  Exercise.find_or_create_by_name(
    name:        "One arm row",
    category_list:  "Back",
    equipment_list:   "Dumbbells",
    description: "Hold a dumbbell in one hand and place the opposite side knee and hand on a padded bench.",
    tips:        "Exhale as you pull the dumbbell to the chest, inhale as you lower the dumbbell towards the floor. Take 2-3 seconds to raise the dumbbell, 3-4 seconds to lower the dumbbell.")
  

  Exercise.find_or_create_by_name(
    name:        "Back Extension",
    category_list:  "Back",
    equipment_list:   "Swiss ball",
    description: "Lay over the ball and find your balance point. Place your feet wider than shoulder width. Extend your arms straight at a 45 degree angle from your head, thumbs facing the ceiling.",
    tips:        "Make sure your head is in proper spinal alignment (like you were standing up straight). Avoid overextending the lower spine. Only do as many reps as perfect form allows!")
  

  Exercise.find_or_create_by_name(
    name:        "Back Extension",
    category_list:  "Back",
    equipment_list:   "roman chair",
    description: "Get into a back extension bench and check the height of the pad. Adjust the pad height so that the top of the pad is just below your front hip bones. Hold a dumbbell or weight plate across your chest with both hands to increase intensity.",
    tips:        "Lower your torso as far you comfortably can, focusing on rounding your spine. Contract your lower back, buttocks and thigh muscles simuultaneously to lift your torso until your upper body is aligned with your lower body. Hold for 1 second at the top, then repeat.")
  

  Exercise.find_or_create_by_name(
    name:        "Superman",
    category_list:  "Back",
    equipment_list:   "",
    description: "Lie on your stomach, and bring your arms up by your ears.",
    tips:        "Feel your gluteal (butt) and lower back muscles contract, and hold that position. Keep your neck in line with your spine throughout the exercise.")
  

end