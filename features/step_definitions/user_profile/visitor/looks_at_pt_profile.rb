When /^I visit the trainer's profile page$/ do
  visit user_path(@trainer)
end

Then /^I should see useful profile information$/ do
  # http://microformats.org/wiki/hcard
  # http://microformats.org/wiki/hcalendar
  # http://microformats.org/wiki/hresume#Microformats_Draft_Specification
  page.should have_css(".vcard")
  page.should have_css('.fn', text: @trainer.name)
  page.should have_css('.org', text: @trainer.org)

  # these come from orginisation
  # page.should have_css(class: 'org', content: @trainer.org)
  # page.should have_css(class: 'street-address', content: @trainer.street)
  # page.should have_css(class: 'locality', content: @trainer.city)
  # page.should have_css(class: 'postal-code', content: @trainer.postcode)
  # page.should have_css(class: 'category', content: @trainer.specialities)

  # these come from user ::
  # page.should have_css(class: 'summary', content: @trainer.bio)
  # page.should have_css(class: 'nickname', content: @trainer.username)
  # page.should have_css(class: 'photo', content: @trainer.avatar)
  # 
end
# <div class="vcard">
# <span class="fn">Sally Ride</span>
# (<span class="n">
# <span class="honorific-prefix">Dr.</span>
# <span class="given-name">Sally</span>
# <abbr class="additional-name">K.</abbr>
# <span class="family-name">Ride</span>
# <span class="honorific-suffix">Ph.D.</span></span>),
# <span class="nickname">sallykride</span> (IRC)
# <div class="org">Sally Ride Science</div>
# <img class="photo" src="http://example.com/sk.jpg"/>
# <a class="url" href="http://sally.example.com">w</a>,
# <a class="email" href="mailto:sally@example.com">e</a>
# <div class="tel">+1.818.555.1212</div>
# <div class="adr">
# <div class="street-address">123 Main st.</div>
# <span class="locality">Los Angeles</span>,
# <abbr class="region" title="California">CA</abbr>,
# <span class="postal-code">91316</span>
# <div class="country-name">U.S.A</div></div>
# <time class="bday">1951-05-26</time> birthday
# <div class="category">physicist</div>
# <div class="note">1st American woman in space.</div>
# </div>