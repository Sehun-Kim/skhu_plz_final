class Comment < ActiveRecord::Base
<<<<<<< HEAD

=======
>>>>>>> 757ca0fdd669651c076604c41792f5a59d77e9ea
  belongs_to :post
  belongs_to :user
  validates :body, presence: true
end
