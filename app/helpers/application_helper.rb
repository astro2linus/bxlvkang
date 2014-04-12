module ApplicationHelper
	def body_class
    @body_class ||= "#{controller_path.gsub(/\//, ' ')} #{action_name}"
    @body_class
  end
end
