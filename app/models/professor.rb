class Professor < ActiveRecord::Base
    has_many :lectures
end
