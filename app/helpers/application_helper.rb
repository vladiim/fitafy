module ApplicationHelper

  def section_title
    if @title
      @title.upcase
    else 
      'Fitafy'
    end
  end

  def favicon_url
    "https://d3jpl91pxevbkh.cloudfront.net/hdxvaer2w/image/upload/v1362900687/kossw7tuu2yogyptdshg.png"
  end

  def star2_icon_url
    "https://d3jpl91pxevbkh.cloudfront.net/hdxvaer2w/image/upload/v1362901507/bsimss6lfenjyhy6m5t1.png"
  end

  def regular_hard_red_icon_image_url
    "https://d3jpl91pxevbkh.cloudfront.net/hdxvaer2w/image/upload/v1362902460/iujp25dwiepx8bdxra3z.png"
  end

  def regular_hard_grey_icon_image_url
    "https://d3jpl91pxevbkh.cloudfront.net/hdxvaer2w/image/upload/v1362902876/z8prqooqvr6ry6w8d0w6.png"
  end

  def ajax_loader_gif_url
    "https://d3jpl91pxevbkh.cloudfront.net/hdxvaer2w/image/upload/v1362903578/synfhl7zq00z3cq1dnnk.gif"
  end
end