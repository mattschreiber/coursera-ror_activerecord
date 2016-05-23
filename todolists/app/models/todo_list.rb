class TodoList < ActiveRecord::Base
	#create new todolist
	def self.create_todolist(params) 
		new_todolist = TodoList.new(params); new_todolist.save
	end

	def self.find_alllists(offset, limit)
		#TodoList.all.offset(offset).limit(limit)
		TodoList.all.offset(offset).limit(limit).order(list_due_date: :desc)
	end

	def self.find_todolist_byname(name)
		TodoList.where(list_name: name)
	end

	def self.get_todolist_byid(id)
		TodoList.find_by(id: id)
	end

	def self.update_listname(id, name)
		TodoList.find_by(id: id).update(list_name: name)
	end

	def self.delete_todolist(id)
		TodoList.delete(id)
	end
end
