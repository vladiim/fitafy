def create_biceps
  Exercise.find_or_create_by_name(
    name:        "Bicep Curl",
    categories:  "Biceps",
    equipment:   "barbell",
    description: "Begin from a standing position. Grasp the barbell with a shoulder-width grip, palms facing up. Hold the bar with the arms straight and the bar in front of the waist.",
    tips:        "Exhale as you raise the bar, inhale as you lower the bar. Take 2-3 seconds to raise the bar and 3-4 seconds to lower the bar.")
  

  Exercise.find_or_create_by_name(
    name:        "Bicep Curl",
    categories:  "Biceps",
    equipment:   "Cable machine",
    description: "Grab the cable curl bar (straight or curved) and stand shoulder width, knees slightly flexed and abdominals tight. With your arms straight and tucked in close to your sides, align your elbows with the front of your abdomen.",
    tips:        "Keep those elbows still to isolate your biceps. Keep your body still to eliminate any momentum, and keep your speed controlled. Let the biceps do the work!")
  

  Exercise.find_or_create_by_name(
    name:        "Bicep Curl",
    categories:  "Biceps",
    equipment:   "Dumbbell",
    description: "Stand in an upright position, feet hip-width apart and shoulders back. Place your straight arms close to your sides, palms facing the front. Align your elbows with the front of your abdomen.",
    tips:        "Keep your elbows close to your sides, and don't allow them to move away during the movement. Keep your body still, holding your abdominals tight. This reduces any momentum, forcing the biceps to do all the work.")
  

  Exercise.find_or_create_by_name(
    name:        "Concentration Curl",
    categories:  "Biceps",
    equipment:   "Dumbbell",
    description: "Sit on the edge of a bench, dumbbell in hand. Lean forward and place your elbow on the inside of the thigh, close to your knee.",
    tips:        "Keep your elbow against your thigh and avoid excessive body movement. Try to make the biceps do all the work.")
  

  Exercise.find_or_create_by_name(
    name:        "Inlcine curl",
    categories:  "Biceps",
    equipment:   "Dumbbell",
    description: "Lie back on an incline bench (45 degrees). Let your arms hang down at your sides, with the dumbbells in your hands, and your palms facing each other.",
    tips:        "Keep your elbows close to your sides, and don't allow them to swing or shift position during the exercise.")
  

  Exercise.find_or_create_by_name(
    name:        "Preacher Curl",
    categories:  "Biceps",
    equipment:   "Dumbbell",
    description: "Rest your arms comfortably on the preacher bench pad. Holding one dumbbell, extend the arm as much as comfortably possible.",
    tips:        "Exhale as you raise the dumbbell, and inhale as you lower it. Take 2-3 seconds to raise the dumbbell and 3-4 seconds to lower it.")
  

  Exercise.find_or_create_by_name(
    name:        "EZ bar Bicep Curl",
    categories:  "Biceps",
    equipment:   "EZ bar",
    description: "Grasp the EZ-Bar with a shoulder-width grip.",
    tips:        "Exhale as you raise the bar, inhale as you lower the bar. Take 2-3 seconds to raise the bar and 3-4 seconds to lower the bar.")
  

  Exercise.find_or_create_by_name(
    name:        "EZ Bar Preacher Curl",
    categories:  "Biceps",
    equipment:   "EZ bar, Preacher bench",
    description: "Rest your arms comfortably on the preacher bench pad.",
    tips:        "Exhale as you raise the bar, and inhale as you lower the bar. Take 2-3 seconds to raise the bar and 3-4 seconds to lower the bar.")
  

  Exercise.find_or_create_by_name(
    name:        "EZ Bar Reverse Curl",
    categories:  "Biceps",
    equipment:   "EZ bar",
    description: "Grasp the bar with either a narrow or shoulder-width grip (whichever feels most comfortable). The grip position on the EZ-Bar should be situated so that your palms are facing toward each other as opposed to away from each other.",
    tips:        "Exhale as you raise the bar, inhale as you lower the bar. Take 2-3 seconds to raise the bar and 3-4 seconds to lower the bar. Attempt to keep your elbows close to your sides, and avoid swaying the body.")
  

  Exercise.find_or_create_by_name(
    name:        "Reverse Preacher curl",
    categories:  "Biceps",
    equipment:   "barbell",
    description: "Rest your arms comfortably on the preacher bench pad. Grasp the barbell with a 6-12 inch wide grip.",
    tips:        "Exhale as you raise the bar, inhale as you lower the bar. Take 2-3 seconds to raise the bar and 3-4 seconds to lower the bar.")
  

  Exercise.find_or_create_by_name(
    name:        "curl on Swiss Ball",
    categories:  "Biceps",
    equipment:   "Dumbbell",
    description: "Sit on a Swiss ball with your back straight, your chest up and your head level. Place your arms at your sides holding the dumbbells in your hands.",
    tips:        "Keep your elbows stationary throughout the exercise.")
  

  Exercise.find_or_create_by_name(
    name:        "Hammer Curl",
    categories:  "Biceps",
    equipment:   "Dumbbell",
    description: "Stand in an upright position, feet hip-width apart and shoulders back. Place your straight arms close to your sides, palms facing each other and end of dumbbell pointed to ground (hammer). Align your elbows with the front of your abdomen.",
    tips:        "Keep your elbows close to your sides, and don't allow them to move away during the movement. Keep your body still, holding your abdominals tight. This reduces any momentum, forcing the biceps to do all the work.")
  

end