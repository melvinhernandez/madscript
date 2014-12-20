# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Make Authors
@fid = 100
%w(Eminem WizKhalifa Obama YungMula Sam SnoopDogg).each do |name|
  Author.create id: @fid, username: name, email: name+"@madscript.com", password: 'password'
  Script.create title: name+"'s Song", genre: "Song", author_id: @fid, num_of_stanzas: 0, votes: 1, preface: "I am "+name+" and this is the description of mah songgg!"
  @fid += 1
end