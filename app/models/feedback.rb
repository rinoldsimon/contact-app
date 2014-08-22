class Feedback < ActiveRecord::Base
	validates :email, :email => true
	
	belongs_to :user
end
