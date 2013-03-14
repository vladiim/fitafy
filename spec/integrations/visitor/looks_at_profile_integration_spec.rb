require 'spec_helper'

describe 'Visitor looks at a complete trainers profile' do
  let(:trainer) { create :active_trainer }
  let(:profile) { ProfileAttributes.new(trainer.profile.id) }

  describe 'when I visit the trainers profile' do
  	before { visit user_path(trainer) }

    it 'I should see the trainers details as a vcard' do
      page.should have_css(".vcard")

      page.should have_css('.fn',           text: profile.name.upcase)
      page.should have_css('.country-name', text: profile.country)
      page.should have_css('.nickname',     text: trainer.username)
      # page.should have_css(class: 'category', content: @trainer.specialities)

      page.should have_css('.org',            text: profile.org_name.upcase)
      page.should have_css('.street-address', text: profile.street)
      page.should have_css('.locality',       text: profile.city)
      page.should have_css('.region',         text: profile.state)
      page.should have_css('.postal-code',    text: profile.postcode)
    end
  end
end