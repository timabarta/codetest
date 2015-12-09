class User < ActiveRecord::Base
	has_secure_password
	  
	EMAIL_REGEX = /\A[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,4}\z/i
	validates :email, :presence => true, :uniqueness => true, :format => EMAIL_REGEX
    validates_length_of :password, :in => 6..20, :on => :create

	has_many :products
end
