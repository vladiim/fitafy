module HoverOver
  def hover_over(element)
    begin
      page.evaluate_script( "$('#{element}').trigger('mouseover')" )
      rescue Capybara::NotSupportedByDriverError
    end
  end
end

World HoverOver