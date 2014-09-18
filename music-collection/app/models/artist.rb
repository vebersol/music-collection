class Artist < ActiveRecord::Base
	has_many :albums

	validates :name, presence: true
	validates :country, presence: true
end
