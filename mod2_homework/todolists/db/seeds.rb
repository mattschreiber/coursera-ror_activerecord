# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

array_of_todoitems = [
	{title: "Item1", description: "This is item 1"},
	{title: "Item2", description: "This is item 2"},
	{title: "Item3", description: "This is item 3"},
	{title: "Item4", description: "This is item 4"},
	{title: "Item5", description: "This is item 5"}
]

User.destroy_all
TodoList.destroy_all

p = User.create!({username: "Fiorina", password_digest: "1234"})
p.create_profile!({first_name: "Carly", last_name: "Fiorina", birth_year: 1954, gender: "female"})
l = TodoList.create!(list_name: "test", list_due_date: Date.today+1.year, user_id: "#{p['id']}")
array_of_todoitems.each do |item|
 	l.todo_items.create(title: item[:title], description: item[:description], due_date: Date.today+1.year, todo_list_id: "#{l['id']}")
 end

p = User.create!({username: "Trump", password_digest: "pword"}) 
p.create_profile!({first_name: "Donald", last_name: "Trump", birth_year: 1946, gender: "male"})
l = TodoList.create!(list_name: "test", list_due_date: Date.today+1.year, user_id: "#{p['id']}")
array_of_todoitems.each do |item|
 	l.todo_items.create(title: item[:title], description: item[:description], due_date: Date.today+1.year, todo_list_id: "#{l['id']}")
 end

p = User.create!({username: "Carson", password_digest: "1234"})
p.create_profile!({first_name: "Ben", last_name: "Carson", birth_year: 1951, gender: "male"})
l = TodoList.create!(list_name: "test", list_due_date: Date.today+1.year, user_id: "#{p['id']}")
array_of_todoitems.each do |item|
 	l.todo_items.create(title: item[:title], description: item[:description], due_date: Date.today+1.year, todo_list_id: "#{l['id']}")
 end

p = User.create!({username: "Clinton", password_digest: "password"})
p.create_profile!({first_name: "Hillary", last_name: "Clinton", birth_year: 1947, gender: "female"})	
l = TodoList.create!(list_name: "test", list_due_date: Date.today+1.year, user_id: "#{p['id']}")
array_of_todoitems.each do |item|
 	l.todo_items.create(title: item[:title], description: item[:description], due_date: Date.today+1.year, todo_list_id: "#{l['id']}")
 end	
	
	
	
