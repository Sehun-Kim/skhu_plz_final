class Post < ActiveRecord::Base
    resourcify
    include Authority::Abilities
    belongs_to :lecture
    belongs_to :user
    has_many :comments, dependent: :destroy
    def self.search(search)
      where("title LIKE ?", "%#{search}%") 
      where("content LIKE ?", "%#{search}%")
    end
end
