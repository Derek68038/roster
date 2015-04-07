# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Position.create(category: 'QB')
Position.create(category: 'RB')
Position.create(category: 'WR')
Position.create(category: 'TE')
Position.create(category: 'FB')
Position.create(category: 'DE')
Position.create(category: 'OLB')
Position.create(category: 'MLB')
Position.create(category: 'CB')
Position.create(category: 'S')

Status.create(health: 'Healthy')
Status.create(health: 'Probable')
Status.create(health: 'Doubtful')
Status.create(health: 'Injured Reserve')