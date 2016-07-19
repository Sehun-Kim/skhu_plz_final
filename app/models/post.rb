class Post < ActiveRecord::Base
    belongs_to :lecture
    belongs_to :user
    has_many :comments, dependent: :destroy
end
