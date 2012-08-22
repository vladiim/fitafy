def create_legs
  Exercise.find_or_create_by_name(
    name:        "Squat",
    muscle_list:  "Legs",
    equipment_list:   "barbell",
    description: "Place the bar just behind the neck on the upper rear shoulders. Slowly sit down until the legs are parallel to the floor. Lift the chest up and press the legs into the floor as you press back to a standing position.",
    tips:        "Try not to let the knees bend over the front of the toes. Keep the lower back slightly arched.")
  
  
  Exercise.find_or_create_by_name(
    name:        "Wall Squat",
    muscle_list:  "Legs",
    equipment_list:   "n/a",
    description: "Lean your back against a wall, and stand 1-2 feet away from it with your feet shoulder-width apart.",
    tips:        "Try not to let the knees bend over the front of the toes. Keep the lower back slightly arched.")
  
  
  Exercise.find_or_create_by_name(
    name:        "Wall Squat",
    muscle_list:  "Legs",
    equipment_list:   "Swiss Ball",
    description: "Place the swiss ball in the lumbar region of the back. Lean your back against a wall, and stand 1-2 feet away from it with your feet shoulder-width apart.",
    tips:        "Try not to let the knees bend over the front of the toes. Keep the lower back slightly arched.")
  
  
  Exercise.find_or_create_by_name(
    name:        "Front Squat",
    muscle_list:  "Legs",
    equipment_list:   "barbell",
    description: "Take the bar from the support stands or power rack, or from the floor bring the bar up to the shoulders. Bend the wrists and bring the elbows up as much as possible. The bar should rest on the front of the shoulders.",
    tips:        "Inhale deeply as you squat down, exhale as you begin to squat up.")
  
  
  Exercise.find_or_create_by_name(
    name:        "Squat to bench/chair",
    muscle_list:  "Legs",
    equipment_list:   "",
    description: "Stand with your feet shoulder width apart with a chair directly behind you.",
    tips:        "Keep your knees aligned over your toes. Keep your heels on the ground at all times.")
  
  
  Exercise.find_or_create_by_name(
    name:        "Pistol Squat",
    muscle_list:  "Legs",
    equipment_list:   "n/a",
    description: "From a standing position, place one foot in front of you on an ankle-height box or bench. Slowly squat down on one leg until the knee is bent approximately 90 degrees.",
    tips:        "Inhale deeply as you squat down, exhale as you begin to squat up.")
  
  
  Exercise.find_or_create_by_name(
    name:        "Overhead Squat",
    muscle_list:  "Legs",
    equipment_list:   "barbell",
    description: "Take the bar from a power rack, support stands or the floor using a wide grip. Press the bar overhead.",
    tips:        "Keep your knees aligned over your toes. Keep your heels on the ground at all times.")
end