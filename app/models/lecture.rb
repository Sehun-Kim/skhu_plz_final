class Lecture < ActiveRecord::Base
    belongs_to :major
    belongs_to :professor
    has_many :stars
    has_many :users
    has_many :posts, dependent: :destroy
    include SearchCop

    search_scope :search do
        attributes :name
        attributes :professor => 'professor.name'
    end
    
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
