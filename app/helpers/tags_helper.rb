module TagsHelper

  def link_to_single_param_tags tag
    link_to tag.upcase, { tag: tag }, class: "tag_link"
  end

  def link_to_tag tag, tag_type
  	filter = [tag]
  	add_param_tags_to_filter filter, tag_type if params[tag_type]
  	link_to tag.upcase, { tag_type => filter }, class: "tag_link"
  end

  def link_to_remove_tag tag, tag_type
    filter = filter_existing_tags(tag, tag_type)
    link_to "#{tag.upcase} x", { tag_type => filter }, class: "remove_tag_link hidden"
  end

  def link_to_primary_tag tag, tag_type
    filter = filter_existing_tags(tag, tag_type)
    link_to "#{tag.upcase}", { tag_type => filter }, class: "remove_tag_link hidden"
  end

  def filter_existing_tags tag, tag_type
    filter = []
    add_param_tags_to_filter(filter, tag_type) if params[tag_type]
    filter.delete tag
    filter
  end

  def add_param_tags_to_filter filter, tag_type
  	filter_tags = params[tag_type]
  	filter_tags.each do |filter_tag|
  	  filter << filter_tag
      filter.uniq!
  	end
  end
end