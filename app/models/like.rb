class Like < ActiveRecord::Base
    belongs_to :user
<<<<<<< HEAD
    belongs_to :post
    validates :user_id, uniqueness: {scope: :post_id, message: "한 포스트당 좋아요는 한번만!"}
=======
    belongs_to :lecture
    validates :user_id, uniqueness: {scope: :lecture_id, message: "한 포스트당 좋아요는 한번만!"}
>>>>>>> 757ca0fdd669651c076604c41792f5a59d77e9ea
end
