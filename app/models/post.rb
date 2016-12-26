class Post < ApplicationRecord
  belongs_to :user
  belongs_to :group

  validates :content, presence: true
  scopr :recent, -> {order("create_at DESC")}

end
