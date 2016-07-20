class Post < ActiveRecord::Base
    resourcify
    include Authority::Abilities
    
    belongs_to :lecture
    belongs_to :user
    has_many :comments, dependent: :destroy
end
