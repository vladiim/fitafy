def create_shoulders
  Exercise.find_or_create_by_name(
    name:        "Shoulder Press",
    category_list:  "Shoulders",
    equipment_list:   "dumbbell",
    description: "This exercise may be performed equally well standing or sitting. Raise the dumbbells to the shoulders. Hold the dumbbells such that the palms are facing forward (same hand position as when using a barbell).",
    tips:        "You may inhale or exhale as you raise the dumbbells, opposite while lowering the dumbbells - do not hold your breath. Take 2-3 seconds to raise, and 3-4 seconds to lower the dumbbells. Keep the knees slightly bent and pelvis slightly tucked.")
  

  Exercise.find_or_create_by_name(
    name:        "Shoulder Press",
    category_list:  "Shoulders",
    equipment_list:   "barbell",
    description: "This exercise may be performed equally well standing or sitting. Stand straight and raise the barbell from the floor or supports and place in front of the neck, just above the chest .",
    tips:        "You may inhale or exhale as you raise the bar, opposite while lowering the bar - do not hold your breath. Take 2-3 seconds to raise the bar and 3-4 seconds to lower the bar.")
  

  Exercise.find_or_create_by_name(
    name:        "Shoulder Press",
    category_list:  "Shoulders",
    equipment_list:   "dumbell, swissball",
    description: "Sit upright on a Swiss Ball, with your chest lifted and your head level. Place your feet approximately shoulder width apart. Begin by holding the dumbbells at ear level, with your palms facing forward.",
    tips:        "Develop strong shoulders, learn to stabilize your torso, and improve your balance with this Swiss Ball variation of the Shoulder Press. Narrow your foot width to further challenge your torso stability, and widen it to add ease.")
  

  Exercise.find_or_create_by_name(
    name:        "Shoulder Press",
    category_list:  "Shoulders",
    equipment_list:   "elastic band",
    description: "Sit upright on a Swiss Ball, with your chest lifted and your head level. Place your feet approximately shoulder width apart. Begin by holding the dumbbells at ear level, with your palms facing forward.",
    tips:        "Develop strong shoulders, learn to stabilize your torso, and improve your balance with this Swiss Ball variation of the Shoulder Press. Narrow your foot width to further challenge your torso stability, and widen it to add ease.")
  

  Exercise.find_or_create_by_name(
    name:        "Upright Row",
    category_list:  "Shoulders",
    equipment_list:   "barbell",
    description: "From a standing position, grasp a barbell and raise to waist level.",
    tips:        "Try a wider grip to shift focus on the shoulders, a narrow grip to focus more on the neck.")
  

  Exercise.find_or_create_by_name(
    name:        "Side Raise",
    category_list:  "Shoulders",
    equipment_list:   "dumbbell",
    description: "From either a standing or seated position, begin with the dumbbells at the sides and palms facing inward towards the waist.",
    tips:        "Keep the elbows slightly bent to relieve elbow strain. Maintain good posture throughout the exercise.")
  

  Exercise.find_or_create_by_name(
    name:        "Side Raise",
    category_list:  "Shoulders",
    equipment_list:   "cable cross over machine",
    description: "Attach a handle to the low cable pulley. Stand to the side of the pulley, with the handle on the left side. Grab the handle with the right hand and step 1-2 feet away. Stand tall, holding the handle in front of the hips with a slightly bent elbow.",
    tips:        "Keep the elbows slightly bent to relieve elbow strain. Maintain good posture throughout the exercise.")
  

  Exercise.find_or_create_by_name(
    name:        "Front Raise",
    category_list:  "Shoulders",
    equipment_list:   "dumbbell",
    description: "From a standing position, grab the dumbbells and hold in front of the body at waist height with the palms facing towards the body.",
    tips:        "Remember this is an isolating exercise, don't expect to use a lot of weight. Do not swing the dumbbells quickly up")
  

  Exercise.find_or_create_by_name(
    name:        "Front Raise",
    category_list:  "Shoulders",
    equipment_list:   "elastic band",
    description: "From a standing position, Place the band under one or both feet. Stand upright and hold the ends of the band in each hand.",
    tips:        "Remember this is an isolating exercise. Slowly raise both arm straight out in front of you. Hold for 1/2 second, then slowly return.")
  

  Exercise.find_or_create_by_name(
    name:        "External Rotation",
    category_list:  "Shoulders",
    equipment_list:   "dumbbell",
    description: "Raise the dumbbell to the side as if doing a side raise. Stop when the upper arm is shoulder level, then bend the elbow 90 degrees such that the dumbbell is in front of the elbow.",
    tips:        "The rotator cuff is comprised of small muscles, don't expect to use heavy weights.")
  

  Exercise.find_or_create_by_name(
    name:        "External Rotation             (Lying on side)",
    category_list:  "Shoulders",
    equipment_list:   "dumbbell",
    description: "Lie on your side with a dumbbell in your top hand, bend your arm at a 90 degree angle with your elbow pressed at the side of your body. Lower the dumbbell towards the floor.",
    tips:        "The rotator cuff is comprised of small muscles, don't expect to use heavy weights.")
  

  Exercise.find_or_create_by_name(
    name:        "External Rotation",
    category_list:  "Shoulders",
    equipment_list:   "elastic band",
    description: "Tie one end of the elastic band onto a fixed object.",
    tips:        "The rotator cuff is comprised of small muscles, don't expect to use heavy weights.")
  

  Exercise.find_or_create_by_name(
    name:        "Rear Shoulder Flyes",
    category_list:  "Shoulders",
    equipment_list:   "dumbells, flyes",
    description: "Grab the dumbbells and Slowly bend forward at the waist until the upper body is nearly parallel to the floor. Allow the dumbbells to swing forward until directly beneath the shoulders.",
    tips:        "Take 2-3 seconds to raise the bar and 3-4 seconds to lower the bar. Avoid over-arching the lower back")
  

  Exercise.find_or_create_by_name(
    name:        "Push Press",
    category_list:  "Shoulders",
    equipment_list:   "Barbell or Dumbbell",
    description: "Stand with your feet shoulder width apart. Raise the dumbbells or Barbell to your shoulders.",
    tips:        "Powerfully exhale as you press the dumbbellsl overhead.")
end