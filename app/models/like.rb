class Like < ActiveRecord::Base
    belongs_to :user
    belongs_to :post
    validates :user_id, uniqueness: {scope: :post_id, message: "한 포스트당 좋아요는 한번만!"}
end
