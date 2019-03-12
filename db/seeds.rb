# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database
# with its default values.
# The data can then be loaded with the rails db:seed (or created alongside the
# db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Movie.delete_all
Movie.create(name: 'Captain Marvel', release_date: '20190308', poster: 'https://i.redd.it/byqexntpuyk21.jpg')
Movie.create(name: 'Watchmen', release_date: '20090306', poster: 'https://i.redd.it/ob7kfa6wd7l21.jpg')
Movie.create(name: 'The Dark Knight', release_date: '20080718', poster: 'https://i.redd.it/exzbdpka26l21.jpg')
Movie.create(name: 'Deadpool', release_date: '20160212', poster: 'https://i.redd.it/26yrbxeodsk21.jpg')
Movie.create(name: 'Black Panther', release_date: '20180216', poster: 'https://i.redd.it/4y99cw69okk21.jpg')
Movie.create(name: 'Trainspotting', release_date: '19960719', poster: 'https://i.redd.it/kytmk2jrpkk21.jpg')
Movie.create(name: 'The Fifth Element', release_date: '19970509', poster: 'https://i.redd.it/05c8mt66x7k21.jpg')
Movie.create(name: 'Hereditary', release_date: '20180608', poster: 'https://i.redd.it/703gewzdj5k21.jpg')

puts 'Success: Movie data loaded'
