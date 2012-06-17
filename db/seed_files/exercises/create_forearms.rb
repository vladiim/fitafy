def create_forearms
  Exercise.find_or_create_by_name(
    name:        "Seated                       wrist curl                     (wrist flexion)",
    categories:  "Forearms",
    equipment:   "Dumbbell",
    description: "Sit on the edge of a bench. Place one forearm on your thigh with your wrists over the edge, palm facing up.",
    tips:        "Use a light weight initially as these muscles represent only a small muscle gourp.")
  

  Exercise.find_or_create_by_name(
    name:        "Seated                       wrist curl                     (wrist flexion)",
    categories:  "Forearms",
    equipment:   "barbell",
    description: "Sit on the edge of a bench. Place both forearms on your thighs with your wrists over the edge, palm facing up.",
    tips:        "Use a light weight initially as these muscles represent only a small muscle gourp.")
  

  Exercise.find_or_create_by_name(
    name:        "Seated                          Wrist extension",
    categories:  "Forearms",
    equipment:   "Dumbbell",
    description: "Sit on the edge of a bench. Place one forearm on your thigh with your wrists over the edge, palm facing down.",
    tips:        "Use a light weight initially as these muscles represent only a small muscle gourp.")
  

  Exercise.find_or_create_by_name(
    name:        "Seated                        Wrist extension",
    categories:  "Forearms",
    equipment:   "barbell",
    description: "Sit on the edge of a bench. Place both forearms on your thighs with your wrists over the edge, palm facing down.",
    tips:        "Use a light weight initially as these muscles represent only a small muscle gourp.")
  

  Exercise.find_or_create_by_name(
    name:        "Wrist supination",
    categories:  "Forearms",
    equipment:   "Dumbbell",
    description: "Sit on the edge of an exercise bench. Hold a  dumbbell in one hand with your palms facing down.",
    tips:        "Use a light weight initially as these muscles represent only a small muscle gourp.")
  

  Exercise.find_or_create_by_name(
    name:        "Wrist pronation",
    categories:  "Forearms",
    equipment:   "Dumbbell",
    description: "Sit on the edge of an exercise bench. Hold a  dumbbell in one hand with your palms facing up.",
    tips:        "Use a light weight initially as these muscles represent only a small muscle gourp.")
end