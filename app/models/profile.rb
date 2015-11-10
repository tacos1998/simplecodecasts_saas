class Profile < ActiveRecord::Base
  belongs_to :user
  
  has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "https://www.heartinternet.uk/assets/images/cache/assets/images/powerup/icon-user-blog_100x100.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/
end