class Book < ActiveRecord::Base
	has_many :pages, dependent: :destroy
	belongs_to :user, dependent: :destroy
end
