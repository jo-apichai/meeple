module ApplicationHelper
  def callout_class(type)
    case type
    when 'notice' then 'success'
    when 'alert' then 'alert'
    end
  end
end
