class Page < ActiveRecord::Base
	belongs_to :book, dependent: :destroy
	
end
