class User < ActiveRecord::Base

	def self.create_user params
		new_user = User.new(params); new_user.save
	end

	def self.find_allusers(offset, limit)
			User.all.offset(offset).limit(limit).order(:updated_at)
	end

	def self.find_user_byname(username)
		User.where(username: username)
	end
end
