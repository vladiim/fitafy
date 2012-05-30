module ApplicationHelper

  def section_title
    @title ||= SnapzSayz::Information.title
  end
end