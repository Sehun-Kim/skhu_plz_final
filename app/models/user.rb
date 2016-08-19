class User < ActiveRecord::Base
  rolify
  include Authority::UserAbilities
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable#, :confirmable

    has_many :stars
    has_many :lectures
    has_many :comments
    has_many :postfs
    has_many :postus
    has_many :commentfs
    has_many :commentus
    has_many :likes
    has_many :posts, through: :likes
end
