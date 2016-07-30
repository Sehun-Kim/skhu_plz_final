class Star < ActiveRecord::Base
    belongs_to :user
    belongs_to :lecture
    validates :user_id, uniqueness: {scope: :lecture_id, message: "한 강의당 평가는 한번만!"}
    
end
