# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Guest.destroy_all

require 'csv'

csv_text = File.read(Rails.root.join('lib', 'seeds', 'daily_show_guests.csv'))
csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
csv.first(100).each do |row|
  g = Guest.find_or_initialize_by(name: row['Raw_Guest_List'].split(',').first )
  g.occupation = row['GoogleKnowlege_Occupation']
  g.save
end

date = Date.parse('2015-09-08')

(1..40).each do |num|
  Episode.create(date: date, number: num)
  date = date.next
end

# Create Guests

guest1 = Guest.create(name: 'name1', occupation: 'occ1')
guest2 = Guest.create(name: 'name2', occupation: 'occ2')
guest3 = Guest.create(name: 'name3', occupation: 'occ3')
guest4 = Guest.create(name: 'name4', occupation: 'occ4')
guest5 = Guest.create(name: 'name5', occupation: 'occ5')
guest6 = Guest.create(name: 'name6', occupation: 'occ6')
guest7 = Guest.create(name: 'name7', occupation: 'occ7')

# Create Appearances

appearance1 = Appearance.create(guest_rating: 4, guest: guest1, episode: Episode.all.first)
appearance2 = Appearance.create(guest_rating: 4, guest: guest1, episode: Episode.all.second)
appearance3 = Appearance.create(guest_rating: 2, guest: guest2, episode: Episode.all.first)
appearance4 = Appearance.create(guest_rating: 5, guest: guest4, episode: Episode.all.third)
appearance5 = Appearance.create(guest_rating: 1, guest: guest1, episode: Episode.all.first)
appearance6 = Appearance.create(guest_rating: 4, guest: guest3, episode: Episode.all[4])



