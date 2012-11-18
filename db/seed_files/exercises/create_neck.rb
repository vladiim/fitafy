#!/bin/env ruby 
# encoding: utf-8

def create_neck

          Exercise.find_or_create_by_name(
            name:         "Neck Flexion/Extension",
            muscle:  "Neck",
            equipment_id: Equipment.find_or_create_by_name("").id,
            category:    "Mobility",
            description:  "Stand upright with your Chest out and Shoulders back. Tuck your chin into your Chest as far as possible and then extend your neck back to look up as high as possible.",
            tips:         "Perform this mobility exercise in a slow and controlled manner. Repeat for desired repetitions."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Neck Lateral Flexion",
            muscle:  "Neck",
            equipment_id: Equipment.find_or_create_by_name("").id,
            category:    "Mobility",
            description:  "Stand upright with your Chest out and Shoulders back. Lower one ear towards the Shoulder as far as comfortably possible and then return back to the centre. Repeat immediately on the opposite side.",
            tips:         "Perform this mobility exercise in a slow and controlled manner. Repeat for desired repetitions."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Head Rotation",
            muscle:  "Neck",
            equipment_id: Equipment.find_or_create_by_name("").id,
            category:    "Mobility",
            description:  "Whilst keeping your head in a neutral position,  turn your head as far as possible towards one shoulder, pause briefly and then return to centre line. Repeat immediately towards the opposite side.",
            tips:         "Perform this mobility exercise in a slow and controlled manner. Repeat for desired repetitions."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Side Neck Stretch",
            muscle:  "Neck",
            equipment_id: Equipment.find_or_create_by_name("").id,
            category:    "Stretch",
            description:  "Place one hand on top of your head with your finger tips just above one of your ears. Gently place pressure side ways and lower your opposite ear down towards your Shoulder. Hold for 15-20 seconds and repeat on the opposite side.",
            tips:         "Exhale as you gently stretch. With all stretching, you should feel a light stretch not pain or discomfort."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Rear Neck Stretch",
            muscle:  "Neck",
            equipment_id: Equipment.find_or_create_by_name("").id,
            category:    "Stretch",
            description:  "Place your hand vertically (finger tips pointing down) at the back of your head. Gently place pressure forwards and aim to bring your chin towards your Chest. A stretch should be evenly felt in both sides of the spine on the back of the neck.",
            tips:         "Exhale as you gently stretch. With all stretching, you should feel a light stretch not pain or discomfort."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Chin To Chest Stretch",
            muscle:  "Neck",
            equipment_id: Equipment.find_or_create_by_name("").id,
            category:    "Stretch",
            description:  "Lay on your Back or sit upright. Keeping your Shoulders and Upper-Back relaxed, gently bend your head forwards and bring your chin towards your Chest to create a stretch in the back of your Neck.",
            tips:         "Perform this exercise in a slow and controlled manner. With all stretching, you should feel a light stretch not pain or discomfort. Exhale as you perform the stretch."
          )

        
end