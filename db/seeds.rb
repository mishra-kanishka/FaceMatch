# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Emanuel', :city => cities.first)
@user = User.create(email: "kanishka@facematch.com", password: "kanishka", role: "admin")
@user = User.create(email: "mishra@facematch.com", password: "mishra", role: "admin")