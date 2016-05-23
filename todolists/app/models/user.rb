class User < ActiveRecord::Base

	def self.create_user params
		new_user = User.new(params); new_user.save
	end
end
