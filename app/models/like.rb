class Like < ActiveRecord::Base
    belongs_to :user
    belongs_to :lecture
    validates :user_id, uniqueness: {scope: :lecture_id, message: "한 포스트당 좋아요는 한번만!"}
end
