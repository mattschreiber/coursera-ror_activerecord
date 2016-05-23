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

	def self.get_user_byid(id)
		User.find_by(id: id)
	end

	def self.update_password(id, password_digest)
		User.find_by(id: id).update(password_digest: password_digest)
	end

	def self.delete_user(id)
		User.delete(id)
	end
end
