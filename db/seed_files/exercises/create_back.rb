def create_back
  Exercise.find_or_create_by_name(
    name:        "Chin Up",
    muscle_list:  "Back",
    description: "Begin from a hanging position on a fixed pull-up bar with your grip slightly wider than shoudler width.",
    tips:        "Try using different grips to vary how you work your back and arms. Turn your palms away from you to work more forearm, and turn them toward you to work more biceps. Some facilities have an assisted pull-up machine. Try this if you're having difficulty reaching your goal number or repetitions.")
  

  Exercise.find_or_create_by_name(
    name:        "Lat Pulldown",
    muscle_list:  "Back",
    description: "Adjust the knee pads/seat so your legs touch the knee pad. Grip the bar, wider than shoulder width. Sit upright and slightly lean back.",
    tips:        "Adjust your upper body angle when you perform this exercise. Sitting upright will place more emphasis on your middle back (lats), while leaning back will place more emphasis on the muscles near your spine (rhomboids).")
  

  Exercise.find_or_create_by_name(
    name:        "Seated Row",
    muscle_list:  "Back",
    description: "Sit upright with your legs slightly bent and your feet together. Grasp handle and pull elbows towards to your sides, keeping your hands level with your lower rib cage. Squeeze your shoulder blades together near the end of the pull. Hold for 1/2 second, and then slowly return to the starting position.",
    tips:        "Keep your torso upright. Focus on keeping your chest out and lower back muscles tight.")
  

  Exercise.find_or_create_by_name(
    name:        "Seated Row (Elastic band)",
    muscle_list:  "Back",
    description: "Sit upright with your legs slightly bent and your feet together. Hold one end of the band in each hand, and place the center of the band across the bottoms of your feet. Adjust the tension of the band by grabbing higher or lower on it or by wrapping it around your hands.",
    tips:        "Keep your torso upright. Focus on keeping your chest out and lower back muscles tight.")
  

  Exercise.find_or_create_by_name(
    name:        "Seated Row (Wide bar grip)",
    muscle_list:  "Back",
    description: "Place your feet on the supports with your knees slightly flexed. Grab the bar with a wide grip (As wide as your elbows when you extend them out to the sides). Sit upright with your torso vertical, keeping the natural arch in your lower spine.",
    tips:        "A wonderful exercise for improving your posture. It helps strengthen the muscles that roll your shoulders back.")
  
end