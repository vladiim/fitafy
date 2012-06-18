module ApplicationHelper

  def section_title
    if @title 
      @title.upcase
    else 
      SnapzSayz::Information.title
    end
  end

  def logo
  	image_tag 'logo.png', alt: 'fitafy', size: '30x30'
  end
end