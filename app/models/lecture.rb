class Lecture < ActiveRecord::Base
    belongs_to :major
    belongs_to :professor
    has_many :stars
<<<<<<< HEAD
    has_many :users
=======
    has_many :likes
    has_many :users, through: :likes
>>>>>>> 757ca0fdd669651c076604c41792f5a59d77e9ea
    has_many :posts, dependent: :destroy
    
    
    def avg
        total = 0
        stars.each do |s|
        total += s.score
        end
        if stars.count == 0
        0
        else
        total.to_f / stars.count
        end
    end
    
    
end
