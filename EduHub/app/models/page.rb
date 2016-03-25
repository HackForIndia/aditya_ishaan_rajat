class Page < ActiveRecord::Base
	belongs_to :book, dependent: :destroy
	attr_accessor :dir
end
