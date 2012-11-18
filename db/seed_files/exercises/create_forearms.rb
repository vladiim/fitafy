#!/bin/env ruby 
# encoding: utf-8

def create_forearms

          Exercise.find_or_create_by_name(
            name:         "Seated Wrist Flexion (Dumbbell)",
            muscle:  "Forearms",
            equipment_id: Equipment.find_or_create_by_name("Dumbbells").id,
            category:    "Muscle",
            description:  "Sit on the edge of a Bench. Place one or both Forearms on your thighs with your wrists hanging over your knee, palms facing up. Hold the Dumbbells and allow your wrists to extend slowly toward the floor. Open up your grip slightly and let the Dumbbell roll down your fingers. Close your grip and curl your wrist to raise the Dumbbell upwards. Return slowly to the start position.",
            tips:         "Initially use a light weight as these muscles represent only a small muscle group. Perform the exercise in a slow and controlled manner."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Seated Wrist Flexion (Barbell)",
            muscle:  "Forearms",
            equipment_id: Equipment.find_or_create_by_name("Barbell").id,
            category:    "Muscle",
            description:  "Sit on the edge of a Bench. Place both Forearms on your thighs with your wrists hanging over your knee, palm facing up. Whilst holding the Barbell, allow your wrist to extend slowly toward the floor. Open up your grip slightly and let the Barbell roll down your fingers. Close your grip and curl your wrist to raise the Barbell upwards. Return slowly to the start position.",
            tips:         "Initially use a light weight as these muscles represent only a small muscle group. Perform the exercise in a slow and controlled manner."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Seated Wrist Extension (Dumbbell)",
            muscle:  "Forearms",
            equipment_id: Equipment.find_or_create_by_name("Dumbbells").id,
            category:    "Muscle",
            description:  "Sit on the edge of a Bench. Place your Forearms on your thighs with your wrists over your knee. Holding the Dumbbells with an overhand grip (palms down), allow your wrists to extend slowly toward the floor. Turn your wrists up to raise the Dumbbells to contract the muscle on top of your Forearms. Return slowly to the start position.",
            tips:         "Use a light weight initially as these muscles represent only a small muscle group. Perform the exercise in a slow and controlled manner."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Seated Wrist Extension (Barbell)",
            muscle:  "Forearms",
            equipment_id: Equipment.find_or_create_by_name("Barbell").id,
            category:    "Muscle",
            description:  "Sit on the edge of a Bench. Place your Forearms on your thighs with your wrists over your knee. Holding a Barbell with an overhand grip (palms down), allow your wrists to extend slowly toward the floor. Turn your wrists upwards to raise the Barbell to contract the muscle on top of your Forearms. Slowly return to the start position.",
            tips:         "Use a light weight initially as these muscles represent only a small muscle group. Perform the exercise in a slow and controlled manner."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Wrist Supination",
            muscle:  "Forearms",
            equipment_id: Equipment.find_or_create_by_name("Dumbbells").id,
            category:    "Muscle",
            description:  "Place one Forearm on your thigh with your wrist hanging over your knee, palm face down. Hold one end of the Dumbbell, slowly rotate your hand outward, keeping your Forearm on your thigh. Return the Dumbbell back to the start position and repeat.",
            tips:         "Use a light weight initially as these muscles represent only a small muscle group. Perform the exercise in a slow and controlled manner."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Wrist Pronation",
            muscle:  "Forearms",
            equipment_id: Equipment.find_or_create_by_name("Dumbbells").id,
            category:    "Muscle",
            description:  "Place one Forearm on your thigh with your wrist hanging over your knee, palm face up. While holding the end of the Dumbbell, slowly rotate your hand inward, keeping your Forearm on your thigh. Return the Dumbbell back to the start position, and repeat.",
            tips:         "Use a light weight initially as these muscles represent only a small muscle group. Perform the exercise in a slow and controlled manner."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Forearm Extensor  Stretch",
            muscle:  "Forearms",
            equipment_id: Equipment.find_or_create_by_name("").id,
            category:    "Stretch",
            description:  "Extend one arm out in front with your palm facing down. Grab your fingers with your other hand and slowly pull them down and toward your body. Bend your wrist down toward the floor.",
            tips:         "With all stretching, you should feel a light stretch not pain or discomfort. This stretch will be felt in the top of forearm."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Forearm Flexor Stretch",
            muscle:  "Forearms",
            equipment_id: Equipment.find_or_create_by_name("").id,
            category:    "Stretch",
            description:  "Extend one arm out in front with your palm facing up. Grab your fingers with your other hand and slowly pull them down and toward your body. Bend your wrist down toward the floor.",
            tips:         "With all stretching, you should feel a light stretch not pain or discomfort."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Kneeling Forearm Stretch",
            muscle:  "Forearms",
            equipment_id: Equipment.find_or_create_by_name("").id,
            category:    "Stretch",
            description:  "Set up on the ground on all fours, with your palms on the ground and your fingers turned towards you. While keeping your entire palms in contact with the ground, slowly lean backwards or sit into your heels to create a stretch in your Forearms.",
            tips:         "Perform this movement in a slow and controlled manner. As with all stretching, you should feel a light stretch not pain or discomfort."
          )

        
end