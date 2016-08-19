class Commentf < ActiveRecord::Base
  belongs_to :postf
  belongs_to :user
  validates :body, presence: true
end
