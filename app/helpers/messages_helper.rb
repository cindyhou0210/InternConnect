module MessagesHelper
  def recipients_options
    s = ''
    UserConfid.all.each do |user|
      s << "<option value='#{user.id}'>#{user.name}</option>"
    end
    s.html_safe
  end
end
