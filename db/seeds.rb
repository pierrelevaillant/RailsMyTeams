# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# category = Category.create(category_name: 'Séniors')
# Category.create(category_name: 'U19')
# Category.create(category_name: 'U17')
# Category.create(category_name: 'U15')
category = Category.create(category_name: 'U6')

# Player.create(last_name: 'Messi', first_name: 'Lionel', category: category)
# Player.create(last_name: 'Bravo', first_name: 'Christian', category: category)
# Player.create(last_name: 'Potier', first_name: 'Pierre-Olivier', category: category)
# Player.create(last_name: 'Ronaldo', first_name: 'Cristiano', category: category)
# Player.create(last_name: 'Iniesta', first_name: 'Andres', category: category)

100.times do |variable|
	Player.create(last_name: 'Iniesta', first_name: 'Andres', category: category)
end