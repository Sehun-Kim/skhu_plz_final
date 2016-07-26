class User < ActiveRecord::Base
  rolify
  include Authority::UserAbilities
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable#, :confirmable
    has_many :stars
<<<<<<< HEAD
    has_many :lectures
    has_many :comments
    has_many :likes
    has_many :posts, through: :likes
=======
    has_many :posts
    has_many :comments
    has_many :lectures, through: :likes
>>>>>>> 757ca0fdd669651c076604c41792f5a59d77e9ea
end


