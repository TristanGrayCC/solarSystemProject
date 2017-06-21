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

Planet.create({name: 'Sun', typeofplanet: 'Sun', size: 1400000, distancefromsun: 0, lengthofyear: 24.47, description: "The Sun is the star at the center of the Solar System. It is a nearly perfect sphere of hot plasma, with internal convective motion that generates a magnetic field via a dynamo process. It is by far the most important source of energy for life on Earth. Its diameter is about 109 times that of Earth, and its mass is about 330,000 times that of Earth, accounting for about 99.86% of the total mass of the Solar System. About three quarters of the Sun's mass consists of hydrogen (~73%); the rest is mostly helium (~25%). The Sun is is informally referred to as a yellow dwarf. It formed approximately 4.6 billion years ago from the gravitational collapse of matter within a region of a large molecular cloud. Most of this matter gathered in the center, whereas the rest flattened into an orbiting disk that became the Solar System. The central mass became so hot and dense that it eventually initiated nuclear fusion in its core. The Sun has not changed dramatically for more than four billion years, and will remain fairly stable for more than another five billion years.", image: "https://scfh.ru/files/medialibrary/9c3/9c3736aff819a910a58d2b78b6de4a5b.gif"})
Planet.create({name: 'Mercury', typeofplanet: 'Terrestrial', size: 6371, distancefromsun: 0.4, lengthofyear: 88, description: "Mercury is the smallest and innermost planet in the Solar System. It is named after the Roman deity Mercury, the messenger to the gods. Like Venus, Mercury orbits the Sun within Earth's orbit as an inferior planet, so it can only be seen visually in the morning or the evening sky, and never exceeds 28° away from the Sun. Although Mercury can appear as a bright star-like object when viewed from Earth, its proximity to the Sun often makes it more difficult to see than Venus. Mercury is tidally or gravitationally locked with the Sun in a 3:2 resonance, and rotates in a way that is unique in the Solar System.", image: "https://upload.wikimedia.org/wikipedia/commons/d/d9/Mercury_in_color_-_Prockter07-edit1.jpg"})
Planet.create({name: 'Venus', typeofplanet: 'Terrestrial', size: 6371, distancefromsun: 0.7, lengthofyear: 224.7, description: "Venus is the second planet from the Sun. It rotates in the opposite direction to most other planets. It is named after the Roman goddess of love and beauty. It is the second-brightest natural object in the night sky after the Moon bright enough to cast shadows at night. Because Venus orbits within Earth's orbit it is an inferior planet and never appears to venture far from the Sun; its maximum angular distance from the Sun (elongation) is 47.8°. It has the densest atmosphere of the four terrestrial planets, consisting of more than 96% carbon dioxide. The atmospheric pressure at the planet's surface is 92 times that of Earth, or roughly the pressure found 900 m (3,000 ft) underwater on Earth. Venus is by far the hottest planet in the Solar System, with a mean surface temperature of 735 K (462 °C; 863 °F). Venus is shrouded by an opaque layer of highly reflective clouds of sulfuric acid, preventing its surface from being seen from space in visible light. Venus's surface is a dry desertscape interspersed with slab-like rocks and is periodically resurfaced by volcanism. It has been made sacred to gods of many cultures, and has been a prime inspiration for writers and poets as the 'morning star'.", image: "https://www.nasa.gov/sites/default/files/thumbnails/image/pia00271.jpg"})
Planet.create({name: 'Earth', typeofplanet: 'Terrestrial', size: 12742, distancefromsun: 1, lengthofyear: 365.25, description: 'Earth is the third planet from the sun and the fifth largest in the solar system. Just slightly larger than nearby Venus, Earth is the biggest of the terrestrial planets. Our home planet is the only planet in our solar system known to harbor living things.', image: "https://www.nasa.gov/centers/goddard/images/content/638831main_globe_east_2048.jpg"})
p4 = Planet.create({name: 'Mars', typeofplanet: 'Terrestrial', size: 6371, distancefromsun: 1.5, lengthofyear: 669, description: "Mars is the fourth planet from the Sun and the second-smallest planet in the Solar System, after Mercury. Named after the Roman god of war, it is often referred to as the 'Red Planet'. Mars is a terrestrial planet with a thin atmosphere, having surface features reminiscent both of the impact craters of the Moon and the valleys, deserts, and polar ice caps of Earth. Mars is the site of Olympus Mons, the largest volcano and second-highest known mountain in the Solar System, and of Valles Marineris, one of the largest canyons in the Solar System. There are ongoing investigations assessing the past habitability potential of Mars, as well as the possibility of extant life. Liquid water cannot exist on the surface of Mars due to low atmospheric pressure, which is about 6⁄1000 that of the Earth's. The two polar ice caps appear to be made largely of water. The volume of water ice in the south polar ice cap, if melted, would be sufficient to cover the entire planetary surface to a depth of 11 meters (36 ft). Mars can easily be seen from Earth with the naked eye.", image: "https://mars.nasa.gov/images/mars-globe-valles-marineris-enhanced.jpg"})
p5 = Planet.create({name: 'Jupiter', typeofplanet: 'Gas Giant', size: 6371, distancefromsun: 5.2, lengthofyear: 4333, description: "Jupiter is the fifth planet from the Sun and the largest in the Solar System. It is a giant planet with a mass one-thousandth that of the Sun, but two and a half times that of all the other planets in the Solar System combined. Jupiter has been known to astronomers since antiquity. The Romans named it after their god Jupiter. When viewed from Earth, Jupiter can reach an apparent magnitude of −2.94, bright enough for its reflected light to cast shadows. Jupiter is primarily composed of hydrogen with a quarter of its mass being helium. It may also have a rocky core of heavier elements, but like the other giant planets, Jupiter lacks a well-defined solid surface. Because of its rapid rotation, the planet's shape is that of an oblate spheroid (it has a slight but noticeable bulge around the equator). The outer atmosphere is visibly segregated into several bands at different latitudes, resulting in turbulence and storms along their interacting boundaries. A prominent result is the Great Red Spot, a giant storm that is known to have existed since at least the 17th century when it was first seen by telescope. Surrounding Jupiter is a faint planetary ring system and a powerful magnetosphere.", image: "http://www.themonitordaily.com/wp-content/uploads/2015/10/51.png"})
p6 = Planet.create({name: 'Saturn', typeofplanet: 'Gas Giant', size: 6371, distancefromsun: 9.5, lengthofyear: 10759, description: "Saturn is the sixth planet from the Sun and the second-largest in the Solar System, after Jupiter. Although it has only one-eighth the average density of Earth, with its larger volume Saturn is just over 95 times more massive. Saturn is named after the Roman god of agriculture; its astronomical symbol (♄) represents the god's sickle. Saturn's interior is probably composed of a core of iron–nickel and rock (silicon and oxygen compounds). This core is surrounded by a deep layer of metallic hydrogen, an intermediate layer of liquid hydrogen and liquid helium, and finally outside the Frenkel line a gaseous outer layer. Saturn has a pale yellow hue due to ammonia crystals in its upper atmosphere. Electrical current within the metallic hydrogen layer is thought to give rise to Saturn's planetary magnetic field, which is weaker than Earth's. The outer atmosphere is generally bland and lacking in contrast to Jupiter, although long-lived features can appear. Wind speeds on Saturn can reach 1,800 km/h (500 m/s). Saturn has a prominent ring system that consists of nine continuous main rings and three discontinuous arcs and that is composed mostly of ice particles with a smaller amount of rocky debris and dust", image: "https://upload.wikimedia.org/wikipedia/commons/7/79/Saturn_from_Hubble.jpg"})
p7 = Planet.create({name: 'Neptune', typeofplanet: 'Ice Giant', size: 6371, distancefromsun: 19.2, lengthofyear: 30688, description: "Uranus is the seventh planet from the Sun. Uranus is similar in composition to Neptune, and both have different bulk chemical composition from that of the larger gas giants Jupiter and Saturn. Uranus's atmosphere is similar to Jupiter's and Saturn's in its primary composition of hydrogen and helium, but it contains more 'ices' such as water, ammonia, and methane, along with traces of other hydrocarbons. It is the coldest planetary atmosphere in the Solar System, with a minimum temperature of 49 K (−224 °C; −371 °F), and has a complex, layered cloud structure with water thought to make up the lowest clouds and methane the uppermost layer of clouds. The interior of Uranus is mainly composed of ices and rock. Uranus is the only planet whose name is derived from a figure from Greek mythology, from the Latinised version of the Greek god of the sky Ouranos. Like the other giant planets, Uranus has a ring system, a magnetosphere, and numerous moons. The Uranian system has a unique configuration among those of the planets because its axis of rotation is tilted sideways, nearly into the plane of its solar orbit. Its north and south poles, therefore, lie where most other planets have their equators. Wind speeds can reach 250 metres per second (900 km/h; 560 mph).", image: "http://news.nationalgeographic.com/content/dam/news/2016/08/15/skywatch0815/01skywatch0815.jpg"})
p8 = Planet.create({name: 'Uranus', typeofplanet: 'Ice Giant', size: 6371, distancefromsun: 30.1, lengthofyear: 60182, description: "Neptune is the eighth and farthest known planet from the Sun in the Solar System. It is named after the Roman god of the sea and has the astronomical symbol ♆, a stylised version of the god Neptune's trident. Neptune is not visible to the unaided eye and is the only planet in the Solar System found by mathematical prediction rather than by empirical observation. Unexpected changes in the orbit of Uranus led Alexis Bouvard to deduce that its orbit was subject to gravitational perturbation by an unknown planet. Neptune was subsequently observed with a telescope on 23 September 1846 by Johann Galle within a degree of the position predicted by Urbain Le Verrier. Like Jupiter and Saturn, Neptune's atmosphere is composed primarily of hydrogen and helium, along with traces of hydrocarbons and possibly nitrogen, but it contains a higher proportion of 'ices' such as water, ammonia, and methane. Traces of methane in the outermost regions in part account for the planet's blue appearance. Neptune's atmosphere has active and visible weather patterns. These weather patterns are driven by the strongest sustained winds of any planet in the Solar System, with recorded wind speeds as high as 2,100 kilometres per hour . Because of its great distance from the Sun, Neptune's outer atmosphere is one of the coldest places in the Solar System, with temperatures at its cloud tops approaching 55 K (−218 °C). Temperatures at the planet's centre are approximately 5,400 K (5,100 °C). Neptune has a faint and fragmented ring system (labelled 'arcs'), which was first detected during the 1960s and confirmed by Voyager 2.", image: "http://solarstory.net/img/articles/big/planet-uranus-by-voyager-2-in-1986.jpg"})
Planet.create({name: 'Asteroid-Belt', typeofplanet: 'Field', size: 1400000, distancefromsun: 2.7, lengthofyear: 0, description: "The asteroid belt is the circumstellar disc in the Solar System located roughly between the orbits of the planets Mars and Jupiter. It is occupied by numerous irregularly shaped bodies called asteroids or minor planets. The asteroid belt is also termed the main asteroid belt or main belt to distinguish it from other asteroid populations in the Solar System such as near-Earth asteroids and trojan asteroids. About half the mass of the belt is contained in the four largest asteroids: Ceres, Vesta, Pallas, and Hygiea. The total mass of the asteroid belt is approximately 4% that of the Moon, or 22% that of Pluto, and roughly twice that of Pluto's moon Charon (whose diameter is 1200 km). Ceres, the asteroid belt's only dwarf planet, is about 950 km in diameter, whereas 4 Vesta, 2 Pallas, and 10 Hygiea have mean diameters of less than 600 km. The remaining bodies range down to the size of a dust particle.", image: "N/a"})
Planet.create({name: 'Pluto', typeofplanet: 'Dwarf Planet', size: 2380, distancefromsun: 39.48, lengthofyear: 90560, description: "Pluto is a dwarf planet in the Kuiper belt, a ring of bodies beyond Neptune. It was the first Kuiper belt object to be discovered. Pluto was discovered by Clyde Tombaugh in 1930 and was originally considered to be the ninth planet from the Sun. After 1992, its planethood was questioned following the discovery of several objects of similar size in the Kuiper belt. In 2005, Eris, a dwarf planet in the scattered disc which is 27% more massive than Pluto, was discovered. This led the International Astronomical Union (IAU) to define the term 'planet' formally in 2006, during their 26th General Assembly. That definition excluded Pluto and reclassified it as a dwarf planet. Pluto is the largest and second-most-massive known dwarf planet in the Solar System and the ninth-largest and tenth-most-massive known object directly orbiting the Sun. Like other Kuiper belt objects, Pluto is primarily made of ice and rock and is relatively small—about one-sixth the mass of the Moon and one-third its volume. It has a moderately eccentric and inclined orbit during which it ranges from 30 to 49 astronomical units or AU (4.4–7.4 billion km) from the Sun. This means that Pluto periodically comes closer to the Sun than Neptune, but a stable orbital resonance with Neptune prevents them from colliding. Light from the Sun takes about 5.5 hours to reach Pluto at its average distance (39.5 AU).", image: "N/a"})
Planet.create({name: 'Charon', typeofplanet: 'Moon', size: 1212, distancefromsun: 39.48, lengthofyear: 90560, description: "Charon, also known as (134340) Pluto I, is the largest of the five known natural satellites of the dwarf planet Pluto. It was discovered in 1978 at the United States Naval Observatory in Washington, D.C., using photographic plates taken at the United States Naval Observatory Flagstaff Station (NOFS). With half the diameter and one eighth the mass of Pluto, it is a very large moon in comparison to its parent body. Its gravitational influence is such that the barycenter of the Pluto–Charon system lies outside Pluto. In September 2016, astronomers announced that the reddish-brown cap of the north pole of Charon is composed of tholins, organic macromolecules that may be essential ingredients of life, and produced from methane, nitrogen and related gases released from the atmosphere of Pluto and transferred over about 19,000 km (12,000 mi) distance to the orbiting moon.", image: "N/a"})
Planet.create({name: 'Kuiper-Belt', size: 6371, distancefromsun: 20, lengthofyear: 0, description: "The Kuiper belt (/ˈkaɪpər/ or Dutch pronunciation: ['kœy̯pǝr]),[1] sometimes called the Edgeworth–Kuiper belt, is a circumstellar disc in the Solar System beyond the (known) planets, extending from the orbit of Neptune (at 30 AU) to approximately 50 AU from the Sun.[2] It is similar to the asteroid belt, but is far larger—20 times as wide and 20 to 200 times as massive.[3][4] Like the asteroid belt, it consists mainly of small bodies, or remnants from the Solar System's formation. While many asteroids are composed primarily of rock and metal, most Kuiper belt objects are composed largely of frozen volatiles (termed 'ices'), such as methane, ammonia and water. The Kuiper belt is home to three officially recognized dwarf planets: Pluto, Haumea, and Makemake. Some of the Solar System's moons, such as Neptune's Triton and Saturn's Phoebe, are thought to have originated in the region.", image: "N/a"})

Planet.create({name: 'Moon', size: 1737, distancefromsun: 1, lengthofyear: 365.25, description:"The fifth largest moon in the solar system, Earth's moon is the only place beyond Earth where humans have set foot. The brightest and largest object in our night sky, the moon makes Earth a more livable planet by moderating our home planet's wobble on its axis, leading to a relatively stable climate. It also causes tides, creating a rhythm that has guided humans for thousands of years. The moon was likely formed after a Mars-sized body collided with Earth. Earth's only natural satellite is simply called 'the moon' because people didn't know other moons existed until Galileo Galilei discovered four moons orbiting Jupiter in 1610.", image: "N/a"})

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
