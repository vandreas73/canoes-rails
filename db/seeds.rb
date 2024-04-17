# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

canoe = Canoe.create name: "Tina", max_crew: 4
crew_member1 = CrewMember.create name: "András Vesztergombi", age: 22, canoe: canoe
crew_member2 = CrewMember.create name: "Gábor Kovács", age: 45, canoe: canoe
competition = Competition.create name: "World Cup", date: "2023-07-01", canoe: canoe