class TodoItem < ActiveRecord::Base

	def self.num_completed
		TodoItem.where(completed: true).count
	end

end
