# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Moon.delete_all
Planet.delete_all
OtherPlanetaryObject.delete_all

Planet.create({name: 'Sol', typeofplanet: 'Sun', size: 1400000, distancefromsun: 0, lengthofyear: 24.47, description: ''})
Planet.create({name: 'Mercury', typeofplanet: 'Terrestrial', size: 6371, distancefromsun: 0.4, lengthofyear: 365.25, description: ''})
Planet.create({name: 'Venus', typeofplanet: 'Terrestrial', size: 6371, distancefromsun: 0.7, lengthofyear: 365.25, description: ''})
p3 = Planet.create({name: 'Earth', typeofplanet: 'Terrestrial', size: 12742, distancefromsun: 1, lengthofyear: 365.25, description: 'Earth is the third planet from the sun and the fifth largest in the solar system. Just slightly larger than nearby Venus, Earth is the biggest of the terrestrial planets. Our home planet is the only planet in our solar system known to harbor living things.'})
p4 = Planet.create({name: 'Mars', typeofplanet: 'Terrestrial', size: 6371, distancefromsun: 1.5, lengthofyear: 365.25, description: ''})
p5 = Planet.create({name: 'Jupiter', typeofplanet: 'Gas Giant', size: 6371, distancefromsun: 5.2, lengthofyear: 365.25, description: ''})
p6 = Planet.create({name: 'Saturn', typeofplanet: 'Gas Giant', size: 6371, distancefromsun: 9.5, lengthofyear: 365.25, description: ''})
p7 = Planet.create({name: 'Neptune', typeofplanet: 'Gas Giant', size: 6371, distancefromsun: 19.2, lengthofyear: 365.25, description: ''})
p8 = Planet.create({name: 'Uranus', typeofplanet: 'Gas Giant', size: 6371, distancefromsun: 30.1, lengthofyear: 365.25, description: ''})

s1 = SolarRegion.create({name: 'Kuiper Belt', size: 6371, distancefromsun: 20, description: ''})
OtherPlanetaryObject.create({name: 'Pluto', typeofobject: 'Dwarf Planet', size: 2380, distancefromsun: 39.48, description: '', solar_region_id: s1.id})

Moon.create({name: 'Moon', planet_id: p3.id, size: 1737, orbit: 384400, description:"The fifth largest moon in the solar system, Earth's moon is the only place beyond Earth where humans have set foot. The brightest and largest object in our night sky, the moon makes Earth a more livable planet by moderating our home planet's wobble on its axis, leading to a relatively stable climate. It also causes tides, creating a rhythm that has guided humans for thousands of years. The moon was likely formed after a Mars-sized body collided with Earth. Earth's only natural satellite is simply called 'the moon' because people didn't know other moons existed until Galileo Galilei discovered four moons orbiting Jupiter in 1610."})
Moon.create({name: 'Phobos', planet_id: p4.id, size: 11, orbit: 6000, description:""})
Moon.create({name: 'Deimos', planet_id: p4.id, size: 6, orbit: 23460, description:""})
Moon.create({name: 'Triton', planet_id: p8.id, size: 2700, orbit: 354759, description:""})
Moon.create({name: 'Miranda', planet_id: p7.id, size: 472, orbit: 129390, description:""})
Moon.create({name: 'Ariel', planet_id: p7.id, size: 1158, orbit: 190900, description:""})
Moon.create({name: 'Umbriel', planet_id: p7.id, size: 1169, orbit: 266000, description:""})
Moon.create({name: 'Titania', planet_id: p7.id, size: 1577, orbit: 435910, description:""})
Moon.create({name: 'Oberon', planet_id: p7.id, size: 1523, orbit: 583520, description:""})
Moon.create({name: 'Others', planet_id: p7.id, size: 22, orbit: 300000, description:"22 smaller moons"})
Moon.create({name: 'Mimas', planet_id: p6.id, size: 396, orbit: 185539, description:""})
Moon.create({name: 'Enceladus', planet_id: p6.id, size: 504, orbit: 237948, description:""})
Moon.create({name: 'Tethys', planet_id: p6.id, size: 1062, orbit: 294619, description:""})
Moon.create({name: 'Dione', planet_id: p6.id, size: 1123, orbit: 377396, description:""})
Moon.create({name: 'Rhea', planet_id: p6.id, size: 1527, orbit: 527108, description:""})
Moon.create({name: 'Titan', planet_id: p6.id, size: 5150, orbit: 1221870, description:""})
Moon.create({name: 'Iapetus', planet_id: p6.id, size: 1470, orbit: 3560820, description:""})
Moon.create({name: 'Others', planet_id: p6.id, size: 55, orbit: 180000, description:"55 smaller moons"})
Moon.create({name: 'Metis', planet_id: p5.id, size: 43, orbit: 128000, description:""})
Moon.create({name: 'Adrastea', planet_id: p5.id, size: 16, orbit: 129000, description:""})
Moon.create({name: 'Amalthea', planet_id: p5.id, size: 167, orbit: 181366, description:""})
Moon.create({name: 'Thebe', planet_id: p5.id, size: 99, orbit: 221889, description:""})
Moon.create({name: 'Io', planet_id: p5.id, size: 3643, orbit: 421700, description:""})
Moon.create({name: 'Europa', planet_id: p5.id, size: 3122, orbit: 670900, description:""})
Moon.create({name: 'Ganymede', planet_id: p5.id, size: 5268, orbit: 1070400, description:""})
Moon.create({name: 'Callisto', planet_id: p5.id, size: 4821, orbit: 1882700, description:""})
Moon.create({name: 'Others', planet_id: p5.id, size: 61, orbit: 120000, description:"61 smaller moons"})
