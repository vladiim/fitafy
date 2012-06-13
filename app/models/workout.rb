class Workout < ActiveRecord::Base

  attr_accessible :name, :notes, :exercises

  serialize :exercises

  validates_presence_of :name, :notes, :exercises

  # validate :exercises_are_right_type

  def titleize_name
  	name.titleize
  end

  def capitalize_notes
  	notes.capitalize
  end

  def self.serialized_attr_accessor *args
    args.each do |method_name|
      serialized_getter method_name
      serialized_setter method_name
    end
  end

  def self.serialized_getter method_name
    eval "
      def #{method_name}
        (self.exercises || {})[:#{method_name}]
      end
    "    
  end

  def self.serialized_setter method_name
    eval "
      def #{method_name}=(value)
        self.exercises ||= {}
        self.exercises[:#{method_name}] = value
      end
    "
  end

  serialized_attr_accessor :exercise_id, :sets, :reps

  def exercises_are_right_type
    checker = WorkoutExerciseValidator.new self.exercises
    checker.each_exercise_is_the_right_type
  end

  def all_exercises
    Exercise.all
  end
end