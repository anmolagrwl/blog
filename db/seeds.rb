# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

superman_content = "Superman is a fictional superhero appearing in American comic books published by DC Comics. The character was created by writer Jerry Siegel and artist Joe Shuster, high school students living in Cleveland, Ohio, in 1933. They sold Superman to Detective Comics, the future DC Comics, in 1938. Superman debuted in Action Comics #1 (cover-dated June 1938) and subsequently appeared in various radio serials, newspaper strips, television programs, films, and video games. With this success, Superman helped to create the superhero archetype and establish its primacy within the American comic book. The character is also referred to by such epithets as the Big Blue Boy Scout, the Man of Steel, the Man of Tomorrow, and the Last Son of Krypton."

spiderman_content = "Spider-Man is a fictional superhero appearing in American comic books published by Marvel Comics. The character was created by writer-editor Stan Lee and writer-artist Steve Ditko, and first appeared in the anthology comic book Amazing Fantasy #15 (Aug. 1962) in the Silver Age of Comic Books. Lee and Ditko conceived the character as an orphan being raised by his Aunt May and Uncle Ben in New York City, and as a teenager, having to deal with the normal struggles of adolescence in addition to those of a costumed crime-fighter. Spider-Man's creators gave him super strength and agility, the ability to cling to most surfaces, shoot spider-webs using wrist-mounted devices of his own invention, which he calls \"web-shooters\", and react to danger quickly with his \"spider-sense\", enabling him to combat his foes."

hulk_content = "The Hulk is a fictional superhero appearing in American comic books published by Marvel Comics. Created by writer Stan Lee and artist Jack Kirby, the character first appeared in the debut issue of The Incredible Hulk (May 1962). In his comic book appearances, the character is both the Hulk, a green-skinned, hulking and muscular humanoid possessing a vast degree of physical strength, and his alter ego Bruce Banner, a physically weak, socially withdrawn, and emotionally reserved physicist, the two existing as personalities independent and resenting of the other."


wolverine_content = "Wolverine (born James Howlett commonly known as Logan and sometimes as Weapon X) is a fictional character appearing in American comic books published by Marvel Comics, mostly in association with the X-Men. He is a mutant who possesses animal-keen senses, enhanced physical capabilities, powerful regenerative ability known as a healing factor, and three retractable bone claws in each hand. Wolverine has been depicted variously as a member of the X-Men, Alpha Flight, and the Avengers."

Article.create(name: "Superman", content: superman_content)
Article.create(name: "Spiderman", content: spiderman_content)
Article.create(name: "Hulk", content: hulk_content)
Article.create(name: "Wolverine", content: wolverine_content)