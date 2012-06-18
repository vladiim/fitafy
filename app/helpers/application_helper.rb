module ApplicationHelper

  def section_title
    @title.upcase ||= SnapzSayz::Information.title
  end

  def logo
  	image_tag 'logo.png', alt: 'fitafy', size: '30x30'
  end
end