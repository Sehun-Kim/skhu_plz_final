class Star < ActiveRecord::Base
    belongs_to :user
    belongs_to :lecture
<<<<<<< HEAD
=======
    validates :user_id, uniqueness: {scope: :lecture_id, message: "한 강의당 평가는 한번만!"}
    
>>>>>>> 757ca0fdd669651c076604c41792f5a59d77e9ea
end
