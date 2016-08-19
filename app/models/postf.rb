class Postf < ActiveRecord::Base
    resourcify
    include Authority::Abilities
    belongs_to :user
    has_many :commentfs, dependent: :destroy
    def self.search(search)
      where("title LIKE ?", "%#{search}%") 
      where("content LIKE ?", "%#{search}%")
    end
end
