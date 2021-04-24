module ApplicationHelper
  def gravatar_for(user, size = 30, title = user.name)
    image_tag user.gravatar_url(:email => user.email, size: size), title: title, class: "img-rounded"
  end
end
