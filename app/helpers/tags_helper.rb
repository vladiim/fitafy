module TagsHelper

  def link_to_tag tag
  	filter = [tag]
  	add_param_tags_to_filter filter if params[:sort]
  	link_to tag.upcase, sort: filter
  end

  def link_to_remove_tag tag
    filter = []
    add_param_tags_to_filter filter if params[:sort]
    filter.delete tag
    link_to "x", sort: filter
  end

  def add_param_tags_to_filter filter
  	filter_tags = params[:sort]
  	filter_tags.each do |filter_tag|
  	  filter << filter_tag
      filter.uniq!
  	end
  end
end