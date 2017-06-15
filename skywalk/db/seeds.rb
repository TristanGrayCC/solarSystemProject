# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Moon.delete_all
Planet.delete_all

p3 = Planet.create({name: 'Earth', typeofplanet: 'Terrestrial', size: 6371, distancefromsun: 1, lengthofyear: 365.25, description: 'Earth is the third planet from the sun and the fifth largest in the solar system. Just slightly larger than nearby Venus, Earth is the biggest of the terrestrial planets. Our home planet is the only planet in our solar system known to harbor living things.'})

Moon.create({name: 'Moon', planet_id: p3.id, size: 1737, orbit: 384400, description:"The fifth largest moon in the solar system, Earth's moon is the only place beyond Earth where humans have set foot. The brightest and largest object in our night sky, the moon makes Earth a more livable planet by moderating our home planet's wobble on its axis, leading to a relatively stable climate. It also causes tides, creating a rhythm that has guided humans for thousands of years. The moon was likely formed after a Mars-sized body collided with Earth. Earth's only natural satellite is simply called 'the moon' because people didn't know other moons existed until Galileo Galilei discovered four moons orbiting Jupiter in 1610."})
