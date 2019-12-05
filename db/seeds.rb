# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Tag.create(name: 'Conferencia', category: 'Tipo')
Tag.create(name: 'Concierto', category: 'Tipo')
Tag.create(name: 'Ciencia y Tecnología', category: 'Area')
Tag.create(name: 'Arte y Cultura', category: 'Area')
Tag.create(name: 'Economía y Política', category: 'Area')
Tag.create(name: 'Deporte y Recreación', category: 'Area')