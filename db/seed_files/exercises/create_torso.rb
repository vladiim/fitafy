#!/bin/env ruby 
# encoding: utf-8

def create_torso

          Exercise.find_or_create_by_name(
            name:         "Jammer Press",
            muscle_list:  "Torso",
            equipment_id: Equipment.find_or_create_by_name("Jammer Machine").id,
            type_list:    "Plyometrics",
            description:  "Stand inside the Jammer apparatus and face the two handles. Grasp the handles at arm-pit-height and stand behind them with your feet Shoulder-width apart. Perform a partial squat and explosively push the handles out and up. Slowly return to starting position of the partial squat.",
            tips:         "Maintain good posture throughout the movement. Exhale as you exert force upwards and always keep slightly bent or soft elbows on the up phase of the out and upward thrust."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Torsonator Twist",
            muscle_list:  "Torso",
            equipment_id: Equipment.find_or_create_by_name("Machine").id,
            type_list:    "Plyometrics",
            description:  "Stand with your feet Shoulder-width apart and hold the Torsonator in both hands. Position the handles at head-height. Rotate the Torsonator Bar in a semi-circular motion, ensuring you turn the hip, knee and heel of the opposite side as you do. Once the handles reaches hip level, return the bar back to the start position and repeat on the opposite side.",
            tips:         "Maintain good posture throughout the movement. Exhale as you rotate the Torsonator and always keep a slight bend in the knees and elbows. Perform the exercise in a slow and controlled manner."
          )

        


          Exercise.find_or_create_by_name(
            name:         "Rope Wave",
            muscle_list:  "Torso",
            equipment_id: Equipment.find_or_create_by_name("Rope").id,
            type_list:    "Plyometrics",
            description:  "Stand with your feet shoulder width apart and grasp the two ends of a rope that has been looped around a stationery object. As you bend your knees and remain upright, start a gentle wave in the rope by raising your arms up and down. Progress to explosively pulling the rope upwards and then ripping it downwards as quick as possible. The arms can work simultaneously or independently in this exercise.",
            tips:         "Maintain good posture throughout the movement. Exhale as you push upwards and always keep slightly bent in the knees and elbows. Engage the core and keep your vision forwards."
          )

        
end