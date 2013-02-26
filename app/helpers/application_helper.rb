module ApplicationHelper

  def section_title
    if @title
      @title.upcase
    else 
      'Fitafy'
    end
  end

  def logo
  	image_tag 'logo.png', alt: 'fitafy', size: '30x30'
  end
end