class Post < ActiveRecord::Base
    resourcify
    include Authority::Abilities
    belongs_to :lecture
<<<<<<< HEAD
    has_many :likes
    has_many :users, through: :likes
=======
    belongs_to :user
>>>>>>> 757ca0fdd669651c076604c41792f5a59d77e9ea
    has_many :comments, dependent: :destroy
    def self.search(search)
      where("title LIKE ?", "%#{search}%") 
      where("content LIKE ?", "%#{search}%")
    end
end
