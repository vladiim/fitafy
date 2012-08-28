module TagsHelper

  def link_to_tag tag
  	filter = []
  	filter << tag
  	if params[:sort]
  	  add_param_tags_to_filter filter
  	end
  	link_to tag.upcase, sort: filter
  end

  def add_param_tags_to_filter filter
  	filter_tags = params[:sort]
  	  filter_tags.each do |filter_tag|
  	    filter << filter_tag
        filter.uniq!
  	end
  end
end