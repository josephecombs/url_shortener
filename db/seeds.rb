# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

ActiveRecord::Base.transaction do
  # p "inside seeds"
  # ShortenedUrl.create_for_user_and_long_url!(
  #   User.create!(:email => "joseph@josephecombs.com"), "www.josephecombs.com")
  #
  # ShortenedUrl.create_for_user_and_long_url!(
  #   User.create!(:email => "zachchen@yahoo.com"), "espn.com")
  # p "inside seeds 2"
  # ShortenedUrl.create_for_user_and_long_url!(
  #   User.create!(:email => "santaclaus@northpole.com"), "christmas.com")
  # ShortenedUrl.create_for_user_and_long_url!(
#     User.find(3), "elves.com")
  # ShortenedUrl.create_for_user_and_long_url!(
  #   User.find(3), "coal.com")
  # Visit.create!(:user_id => 1, :shortened_url_id => 2)
#   Visit.create!(:user_id => 1, :shortened_url_id => 4)
#   Visit.create!(:user_id => 2, :shortened_url_id => 4)
#   Visit.create!(:user_id => 3, :shortened_url_id => 1)
Visit.create!(:user_id => 3, :shortened_url_id => 1)
Visit.create!(:user_id => 2, :shortened_url_id => 1)
Visit.create!(:user_id => 1, :shortened_url_id => 1)
Visit.create!(:user_id => 3, :shortened_url_id => 1)
end