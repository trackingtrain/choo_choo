class Post < ActiveRecord::Base
  include ChooChoo::ParentNode

  attr_accessible :body, :title, :user

  has_many :comments
  belongs_to :user

  def excerpt(max_length = 60)
    self.body[0..60]
  end

end
