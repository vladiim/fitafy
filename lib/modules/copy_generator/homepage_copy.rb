require_relative '../../../app/helpers/application_helper'

module CopyGenerator
  module HomepageCopy
  	extend ApplicationHelper

  	def self.usp
  	  'We help personal trainers get new clients'
  	end

    def self.sub_heading
      'We made fitafy to finally give personal trainers a sure fire way to drive new clients to their business. We’re currently building the product so sign up to get notified when we launch.'
    end

    def self.features
      [feature_one,
       feature_two,
       feature_three,
       feature_four]
    end

    # --------------------------------------
    # FEATURES
    # --------------------------------------

    def self.feature_one
      OpenStruct.new(
      	title: 'Optimised PT Profiles',
      	image: regular_hard_grey_icon_image_url,
      	copy:  "Fitafy profiles are designed to show off your Personal Training experience."
      )
    end

    def self.feature_two
      OpenStruct.new(
      	title: 'Certifications Verified',
      	image: regular_hard_grey_icon_image_url,
      	copy:  "We confirm accredited certifications to vouch for your credibility."
      )
    end

    def self.feature_three
      OpenStruct.new(
      	title: 'Convert To Booking',
      	image: regular_hard_grey_icon_image_url,
      	copy:  "We quickly convert your profile visitors to a booking. Our paid service guarantees booking conversions."
      )
    end

    def self.feature_four
      OpenStruct.new(
      	title: 'Client Testimonials',
      	image: regular_hard_grey_icon_image_url,
      	copy:  "Let your current clients tell the world how good you are with testimonials."
      )
    end
  end
end