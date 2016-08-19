class Commentu < ActiveRecord::Base
  belongs_to :postu
  belongs_to :user
  validates :body, presence: true
end
