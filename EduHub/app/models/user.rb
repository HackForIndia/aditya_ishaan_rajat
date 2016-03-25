class User < ActiveRecord::Base
has_secure_password
	has_many :books, dependent: :destroy

	def User.digest(string)
		cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST : BCrypt::Engine.cost
  		BCrypt::Password.create(string, cost: cost)
	end
end
