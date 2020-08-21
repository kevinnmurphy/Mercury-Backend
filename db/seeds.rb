# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


trip1 = Trip.create(name: 'Saturday Shopping')
trip2 = Trip.create(name: 'Sunday Brunch')

# Location.create([
#     {name: 'Sugar Hill', lat: 34.1, lon: -84.0, trip_id: '1'}
#     {name: 'Alpharetta', lat: 34.08, lon: -84.29, trip_id: '1'}
#     {name: 'Dunwoody', lat: 33.94, lon: -84.32, trip_id: '1'}
#     {name: 'Cumming', lat: 34.21, lon: -84.14, trip_id: '2'}
#     {name: 'Buckhead', lat: 33.57, lon: -83.36, trip_id: '2'}
# ])