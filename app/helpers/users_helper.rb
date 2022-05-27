module UsersHelper
  def gravatar_for user, options = {size: Settings.users_helper.size.size_length}
    gravatar_id = Digest::MD5.hexdigest user.email.downcase
    size = options[:size]
    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}"
    image_tag gravatar_url, alt: user.name, class: "gravatar"
  end

  def find_user_active current_user, user
    current_user.active_relationships.find_by(followed_id: user.id)
  end
end
