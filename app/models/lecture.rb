class Lecture < ActiveRecord::Base
    belongs_to :major
    belongs_to :professor
    has_many :likes
    has_many :users, through: :likes
    has_many :posts, dependent: :destroy
end
