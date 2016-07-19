class Lecture < ActiveRecord::Base
    belongs_to :major
    belongs_to :professor
    has_many :posts, dependent: :destroy
end
