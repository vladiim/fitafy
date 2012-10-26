require 'spec_helper'
require 'carrierwave/test/matchers'

describe AvatarUploader do
  # test takes too long with cloudinary

  # include CarrierWave::Test::Matchers
  # let(:trainer) { create :trainer }
  # let(:avatar)  { AvatarUploader.new(trainer, :avatar) }

  # before do
  #   AvatarUploader.enable_processing = true
  #   avatar.store!(File.open("#{Dir.pwd}/app/assets/images/das_boot.png"))
  # end

  # after do
  #   AvatarUploader.enable_processing = false
  #   avatar.remove!
  # end

  # context "the uploaded image" do
  #   it "should resize to limit of 150x200" do
  #     avatar.should have_dimensions 137, 200 # resize to limit so width is smaller than 150
  #   end
  # end

  # context 'the thumb version' do
  #   it "should scale down a landscape image to be exactly 64 by 64 pixels" do
  #     # avatar.thumb.should have_dimensions(64, 64)
  #   end
  # end

  # context 'the small version' do
  #   it "should scale down a landscape image to fit within 200 by 200 pixels" do
  #     avatar.small.should be_no_larger_than(200, 200)
  #   end
  # end

  # it "should make the image readable only to the owner and not executable" do
  #   avatar.should have_permissions(0600)
  # end
end