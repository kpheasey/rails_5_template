module ApplicationHelper

  def controller_classes
    "#{controller_path.parameterize(separator: '_')} #{action_name}"
  end

end
