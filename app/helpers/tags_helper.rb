module TagsHelper

  # current_filter is an array of tags
  # which the current tag gets inserted into
  def link_to_tag tag
  	filter = []
  	filter << tag
  	if params[:sort]
  	  filter_tags = params[:sort]
  	  filter_tags.each do |filter_tag|
  	    filter << filter_tag
  	  end
  	end
  	link_to tag.upcase, sort: filter
  end
end

# = link_to_tag tag.upcase, sort: tag
#     = link_to_tag tag, current_filter

# pass a filter with list of current tags 
# drive ability to create composite list of tags