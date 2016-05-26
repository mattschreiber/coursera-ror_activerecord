# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
num_items = 5 #number of Todoitems to create for each todolist
todoitems = {title: "Item", description: "This is item #", due_date: Date.today+1.year}

User.destroy_all
TodoList.destroy_all

p = User.create!({username: "Fiorina", password_digest: "1234"})
p.create_profile!({first_name: "Carly", last_name: "Fiorina", birth_year: 1954, gender: "female"})
l = TodoList.create!(list_name: "test", list_due_date: Date.today+1.year, user_id: "#{p['id']}")
i = 0
while i < num_items
 	l.todo_items.create(title: "#{todoitems[:title]} #{i}", description: "#{todoitems[:description]} #{i}", due_date: "#{todoitems[:due_date]}", todo_list_id: "#{l['id']}")
 	i += 1
end

p = User.create!({username: "Trump", password_digest: "pword"}) 
p.create_profile!({first_name: "Donald", last_name: "Trump", birth_year: 1946, gender: "male"})
l = TodoList.create!(list_name: "test", list_due_date: Date.today+1.year, user_id: "#{p['id']}")
i = 0
while i < num_items
 	l.todo_items.create(title: "#{todoitems[:title]} #{i}", description: "#{todoitems[:description]} #{i}", due_date: "#{todoitems[:due_date]}", todo_list_id: "#{l['id']}")
 	i += 1
end

p = User.create!({username: "Carson", password_digest: "1234"})
p.create_profile!({first_name: "Ben", last_name: "Carson", birth_year: 1951, gender: "male"})
l = TodoList.create!(list_name: "test", list_due_date: Date.today+1.year, user_id: "#{p['id']}")
i = 0
while i < num_items
 	l.todo_items.create(title: "#{todoitems[:title]} #{i}", description: "#{todoitems[:description]} #{i}", due_date: "#{todoitems[:due_date]}", todo_list_id: "#{l['id']}")
 	i += 1
end

p = User.create!({username: "Clinton", password_digest: "password"})
p.create_profile!({first_name: "Hillary", last_name: "Clinton", birth_year: 1947, gender: "female"})	
l = TodoList.create!(list_name: "test", list_due_date: Date.today+1.year, user_id: "#{p['id']}")
i = 0
while i < num_items
 	l.todo_items.create(title: "#{todoitems[:title]} #{i}", description: "#{todoitems[:description]} #{i}", due_date: "#{todoitems[:due_date]}", todo_list_id: "#{l['id']}")
 	i += 1
end
	
	
	
