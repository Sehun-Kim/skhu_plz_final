class Post < ActiveRecord::Base
    resourcify
    include Authority::Abilities
    belongs_to :lecture
    has_many :likes
    has_many :users, through: :likes
    has_many :comments, dependent: :destroy
    def self.search(search)
      where("title LIKE ?", "%#{search}%") 
      where("content LIKE ?", "%#{search}%")
    end
end
