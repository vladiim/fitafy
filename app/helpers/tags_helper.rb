module TagsHelper

  def link_to_tag tag, tag_type
  	filter = [tag]
  	add_param_tags_to_filter filter if params[:muscles]
  	link_to tag.upcase, muscles: filter
  end

  def link_to_remove_tag tag, tag_type
    filter = []
    add_param_tags_to_filter filter if params[:muscles]
    filter.delete tag
    link_to "x", muscles: filter
  end

  def add_param_tags_to_filter filter
  	filter_tags = params[:muscles]
  	filter_tags.each do |filter_tag|
  	  filter << filter_tag
      filter.uniq!
  	end
  end
end