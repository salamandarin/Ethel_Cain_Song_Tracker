-- Add artists
INSERT INTO artists (artist_id, artist_name, artist_real_name, artist_image, artist_description)
VALUES
    (1,"Ethel Cain","Hayden","Spotify_2023.jpg","Ethel Cain is the main project of Hayden Silas Anhedonia. She started the Ethel Cain project in 2019 after scrapping White Silas. Ethel Cain is technically a fictional character, and her story is told in Hayden's debut album ""Preacher's Daughter."""),
    (2,"White Silas","Hayden","White_Silas_3.png","White Silas Hayden's old project, which spanned from roughly 2018 - 2019. There are several EPs & albums under the moniker. Some of the sounds rougher due to being some of her oldest work and she was still learning how to produce. She also put out two EPs under this name in collaboration with Little Triste"),
    (3,"ΛTLΛS (Atlas)","Hayden","Atlas_2.jpg","Atlas is likely the first moniker that Hayden released music under, but then she later changed it to White Silas instead after releasing the album Colossus"),
    (4,"tommy / Miss Anhedonia","Hayden","tommy_2024.jpg","Tommy is one of Hayden's side projects, and it exists only on Soundcloud. It consists of slightly more experimental sounds than her normal work, and tends to be more trap or pop inspired. It used to be known as Miss Anhedonia, but she later changed the username to tommygunbaby"),
    (5,"אשמדאי","Hayden","ashmedaii_2024.jpg","Ashmedaii is Hayden's ambient side project, and it exists only on Soundcloud. It consists of exclusively instrumental ambient tracks"),
    (6,"whiine","Hayden","whiine.jpg","Whiine is the newest of Hayden's Soundcloud side projects, so it only has one song so far. This may be a collaboration project between her and Vyva Melinkolya, but I am not sure"),
    (7,"Witchcest","Hayden","Witchcest","This project was lost media for a long time until recently. It seems to be the oldest (or one of the oldest) known projects of Hayden since it dates back to 2017. Only one song is known to come from it, and I'm unsure if there are more"),
    (8,"little triste","aelyx","little_triste.png",""),
    (9,"YAH WAV","aelyx","YAH_WAV.jpg",""),
    (10,"Edith Underground","Salem","E_DEATH.jpg",""),
    (11,"Florence + The Machine","","Florence.jpg",""),
    (12,"Kabel","","",""),
    (13,"josephine pineconey","","",""),
    (14,"honey whiskey","Kelsey Gibson","",""),
    (15,"Gutter Punk","","",""),
    (16,"ollin miller","","",""),
    (17,"Vyva Melinkolya","","",""),
    (18,"Ashnikko","","","")

-- Add albums
INSERT INTO albums (album_id, album_title, album_date, album_image, album_description, album_artist)
VALUES
    (1,"Preacher's Daughter","2022-05-12","Preacher's_Daughter.png","Preacher's Daughter is Hayden Anhedonia's (Ethel Cain's) debut album. It is a concept album that tells a story about the fictional character Ethel Cain. Preacher's Daughter is the first album in the Ethel Cain family tree trilogy.",1),
    (2,"Inbred","2021-04-23","Inbred.jpg","Inbred is the first EP released under an official record label, and features more rock-inspired sounds",1),
    (3,"Golden Age","2019-12-01","Golden_Age.jpg","Golden Age was the last EP that Hayden self-released before getting signed to a label. It was recorded using a mic she got off Amazon for about $60",1),
    (4,"Carpet Bed","2019-09-13","Carpet_Bed.jpg","Carpet Bed is the first official EP released on streaming platforms under the Ethel Cain project. It was recorded using a mic she got off Amazon for about $60",1),
    (5,"Mourning After","2019-03-30","Mourning_After.jpg","Mourning After is the second EP that Hayden made in collaboration with Little Triste (also known as aelyx or YAH WAV). It has more of a trap inspired sound than her current work. It was also recorded using a mic she got off Amazon for about $60",2),
    (6,"Nightmares","2018-10-26","Nightmares.jpg","Nightmares is the first of two EPs that Hayden made in collaboration with Little Triste (also known as aelyx or YAH WAV). It has more of a trap inspired sound than her current work, and this EP is widely regarded as her best White Silas work. Florida Heat used to be her top song on Spotify before she took down her old work. It was also recorded using a mic she got off Amazon for about $60",2),
    (7,"Sad Music for Sad People","2018-09-15","Sad_Music_for_Sad_People.jpg","Sad Music for Sad People was self-released in 2018 and was recorded using a mic she got off Amazon for about $60. It features two songs (A House in Nebraska and Strangers) that would later be released on her 2022 album Preacher's Daughter until the name Ethel Cain. This is the oldest project she is comfortable sharing",2),
    (8,"Arcane Vessels","2018-05-21","Arcane_Vessels_alt.jpg","Arcane Vessels was self-released in 2018. Similar to Colossus, it was recorded on the mic of a pair of wired earbuds, and it was entirely produced on an old Macbook using Garageband.
",2),
    (9,"Colossus","2017-10-27","Colossus.jpg","Colossus is Hayden's first known album, and it was self-released in 2017. She is a self-taught producer, so this album is a product of her just experimenting with Garageband. It was recorded on the mic of a pair of wired earbuds, and it was entirely produced on an old Macbook using Garageband.
Colossus was originally released under the moniker ""Atlas,"" but later she later changed her artist name to White Silas. Due to this change, the album art says Atlas, but Spotify records show that it was under White Silas.",3),
    (10,"Unreleased","2020-02-28","Unreleased.jpg","collection of unreleased songs available for purchase only on her Bandcamp.

Unreleased songs and demos from 2018-2019.

All songs written and produced by Ethel Cain with the exception of Knuckle Velvet, produced by Yah Wav.",1),
    (11,"Unreleased II","2020-05-21","Unreleased_II.jpg","second collection of unreleased songs, demos, and other random tracks available for purchase only on her Bandcamp.

recorded between 2017-2019.

all demos written, recorded, produced, and mixed by ethel cain.",1),
    (12,"material fantasies","2020-01-01","material_fantasies.jpg","",9),
    (13,"When It Happens, I'll Be There","2019-06-21","sell.jpg","",15),
    (14,"WEEDKILLER","2023-08-25","weedkiller.jpg","",18)

-- Add tracks
INSERT INTO tracks (track_title, track_date, track_length, track_image, track_notes, track_album, track_artist)
VALUES
    ("222","2023-11-02",408,"222.jpg","""recorded between winter 2020 and summer 2022 recorded and mixed by Chyype Crosby mastered by Matthew Thomasi additional recording by Angel and Hayden""

Ethel Cain is NOT credited on Spotify",NULL,17),
    ("Dying Star (feat. Ethel Cain)","2023-08-25",256,"weedkiller.jpg","""Having Ethel Cain on this song was super special. She’s an incredible songwriter and instrumentalist, and she loves a world build. Putting ‘Possession of a Weapon’ right before ‘Dying Star’ was intentional, because I wanted to end the record with something very hopeful. The very last line is, ‘I want something soft.’ The people who have been unkind to me have made me unkind, but, ultimately, I just want a soft place to land, and that’s exactly what this song is about, pulling those thorns of the Weedkiller out one by one and looking for someone to take me in. It’s definitely a love song. Existing in a very patriarchal world, especially in the South, under the dark cloud of religion, I’ve had to build myself back up and tell myself that actually I do deserve something kind. Being with someone who is soft and kind to me, I think, was quite shocking, because being hurt is the default setting. I like to think of this person as this new sentient planet, reaching out and catching me softly in her baseball mitt. Something so simple, but something that everyone should have the ability to do in their lifetimes. I wish everyone that—a safe space to exist and be themselves."" - Ashnikko",14,18),
    ("Famous Last Words (An Ode to Eaters)","2023-07-21",203,"famous_last_words_2.jpg","CHECK IF SOUNDS THE SAME AS OTHER - POSSIBLY MERGE, otherwise change parent FK",NULL,1),
    ("Morning Elvis (Live at Denver Ball Arena)","2022-12-09",255,"Morning_Elvis.jpg","",NULL,11),
    ("Family Tree (Intro)","2022-05-12",221,"Preacher's_Daughter.png","Was originally gonna be instrumental",1,1),
    ("American Teenager","2022-04-21",258,"American_Teenager.jpg","Barack Obama put it on his top songs of 2022",1,1),
    ("A House In Nebraska","2022-05-12",466,"Preacher's_Daughter.png","Was originally written sometime in 2018 or earlier since it was first released on Sad Music for Sad People. This song (even more specifically, the very first piano note) is what really started the Ethel Cain project, and it is the glue that holds Preacher's Daughter together",1,1),
    ("Western Nights","2022-05-12",365,"Preacher's_Daughter.png","",1,1),
    ("Family Tree","2022-05-12",430,"Preacher's_Daughter.png","",1,1),
    ("Hard times","2022-05-12",303,"Preacher's_Daughter.png","",1,1),
    ("Thoroughfare","2022-05-12",567,"Preacher's_Daughter.png","",1,1),
    ("Gibson Girl","2022-03-17",342,"Gibson_Girl.jpg","",1,1),
    ("Ptolemaea","2022-05-12",383,"Preacher's_Daughter.png","",1,1),
    ("August Underground","2022-05-12",220,"Preacher's_Daughter.png","",1,1),
    ("Televangelism","2022-05-12",183,"Preacher's_Daughter.png","",1,1),
    ("Sun Bleached Flies","2022-05-12",456,"Preacher's_Daughter.png","",1,1),
    ("Strangers","2022-04-07",344,"Strangers.jpg","Was originally written sometime in 2018 or earlier since it was first released on Sad Music for Sad People",1,1),
    ("Everytime","2022-03-08",234,"Everytime.jpg","",NULL,1),
    ("Crush - Stripped","2021-09-24",229,"crush_stripped.jpg","",NULL,1),
    ("Michelle Pfeiffer (feat. lil aaron)","2021-02-11",271,"Michelle.jpg","",2,1),
    ("Crush","2021-03-18",204,"Crush.jpg","",2,1),
    ("God's Country (feat. Wicca Phase Springs Eternal)","2021-04-23",495,"Inbred.jpg","",2,1),
    ("Unpunishable","2021-04-23",261,"Inbred.jpg","",2,1),
    ("Inbred","2021-04-23",287,"Inbred.jpg","Someone asked what some lyric meant and she said she was high or something and so it didnt really have meaning????? (source was probably from deleted tumblr, so idk specifics)",2,1),
    ("Two-Headed Mother","2021-04-23",372,"Inbred.jpg","",2,1),
    ("Sunday Morning","2019-12-01",279,"Golden_Age.jpg","",3,1),
    ("Casings","2019-12-01",276,"Golden_Age.jpg","",3,1),
    ("Lilies","2019-12-01",304,"Golden_Age.jpg","",3,1),
    ("Head in the Wall","2019-09-16",401,"head_in_the_wall.jpg","tumblr (OG DATE)",3,1),
    ("Knuckle Velvet","2019-12-01",202,"Golden_Age.jpg","",3,1),
    ("Golden Age","2019-12-01",364,"Golden_Age.jpg","",3,1),
    ("Growing Pains","2019-09-13",328,"Carpet_Bed.jpg","",4,1),
    ("Dog Days","2019-09-13",288,"Carpet_Bed.jpg","",4,1),
    ("Misuse Oh","2019-09-13",187,"Carpet_Bed.jpg","",4,1),
    ("Antlers","2019-09-13",98,"Carpet_Bed.jpg","Sounds similar to Cedar",4,1),
    ("Golden Age (Piano Version)","2019-11-01",317,"Golden_Age_Piano.jpg","",NULL,1),
    ("Bruises","2019-08-02",390,"Bruises.jpg","Used to be released as a single",NULL,1),
    ("White Light","2018-07-28",216,"White_Light.jpg","Used to be on Spotify until sometime in Summer 2023 (last streamed July 1st, 2023)",NULL,2),
    ("Just Snorted a Pill","2017-01-01",207,"Witchcest.jpg","Spotify says 1/1/17, but Youtube auto says 9/28/2017?????",NULL,7),
    ("God Complex (Intro)","2019-03-30",173,"Mourning_After.jpg","",5,2),
    ("Iron Maiden","2019-03-30",145,"Mourning_After.jpg","",5,2),
    ("Good Boy","2019-03-30",132,"good_boy.png","Allegedy cut from Inbred",5,2),
    ("Whiteout","2019-03-30",168,"Mourning_After.jpg","",5,2),
    ("Mourning After","2019-03-30",130,"Mourning_After.jpg","",5,2),
    ("Saddle Up!","2019-01-18",140,"Saddle_Up.png","",NULL,2),
    ("Misuse Oh - Demo","2019-01-01",190,"Misuse_Oh.jpg","Date posted on Spotify is from BEFORE Spotify date
Posted with the caption: ""for him""",NULL,2),
    ("Florida Heat","2018-10-26",183,"Nightmares.jpg","""Starting off the typical “boy meets girl” story, two young wayward adults fall into each other’s lives. They both know they’re unhealthy, but they’re so madly in love nothing matters anyways.""",6,2),
    ("Hitch Party","2018-10-26",146,"Nightmares.jpg","""The two of them start to fall down the rabbit hole of sleazy parties and the crime underworld, putting a strain on their relationship that neither of them want to acknowledge.""",6,2),
    ("Nightmares","2018-10-26",174,"Nightmares.jpg","""The relationship gets worse and worse, with him starting to actually abuse her and fall deeper and deeper into the mess he’s made of both of them. She doesn’t want to leave him, but she’s scared of where they’re headed.""",6,2),
    ("The Wake","2018-10-26",133,"Nightmares.jpg","""Finally the love story comes to an end. After dirty fights and hard drugs that he can’t recover from, he winds up wasting away with his lover right beside him until she buries him.""",6,2),
    ("Strangers - Demo","2018-09-15",231,"Sad_Music_for_Sad_People.jpg","""Strangers, the opening demo track from “Sad Music for Sad People”, tells a bittersweet love story about a Stockholm syndrome-stricken victim of a cannibal kidnapper.""",7,2),
    ("Cold Food","2018-09-15",193,"Sad_Music_for_Sad_People.jpg","""Cold Food depicts what it feels like to love someone suffering with extreme depression. It’s hard to save someone who needs it when you can barely save yourself.""",7,2),
    ("Stomping Ground","2018-09-15",260,"Sad_Music_for_Sad_People.jpg","""Sometimes people f*ck you over and pretend like it never happened. And it’s not your job to forgive them, or to bring them to justice. But sometimes you just want to, and no one can stop you.""",7,2),
    ("Vacancy","2018-09-15",262,"Sad_Music_for_Sad_People.jpg","""This track is just a love story between a high schooler and a man they met who lives in a motel by the interstate.""",7,2),
    ("A House in Nebraska - Demo","2018-09-15",372,"Sad_Music_for_Sad_People.jpg","",7,2),
    ("S.M.F.S.P.","2018-09-15",110,"Sad_Music_for_Sad_People.jpg","""All I do is listen to other people’s sad music and then write my own. That’s how it is and that’s how I like it I suppose.""",7,2),
    ("Jesus Loves You","2018-09-15",222,"jesus_loves_you.jpg","",7,2),
    ("The Epitaph","2018-05-21",193,"Arcane_Vessels_alt.jpg","On Bandcamp (Unreleased II)
Found full album on hdmusic.cc",8,2),
    ("Womb","2018-05-21",142,"Arcane_Vessels_alt.jpg","Found full album on hdmusic.cc",8,2),
    ("Infirmary","2018-05-21",356,"Arcane_Vessels_alt.jpg","Found full album on hdmusic.cc",8,2),
    ("Varnish","2018-05-21",433,"Arcane_Vessels_alt.jpg","Downloaded from dropbox on Ethel Cain Archives tumblr.
Found full album on hdmusic.cc",8,2),
    ("A Lullaby for Judas","2018-05-21",344,"Arcane_Vessels_alt.jpg","Found full album on hdmusic.cc",8,2),
    ("Hospital Beds II","2018-05-21",344,"Arcane_Vessels_alt.jpg","On Bandcamp (Unreleased II)
Found full album on hdmusic.cc",8,2),
    ("Achyls","2018-05-21",289,"Arcane_Vessels_alt.jpg","Found full album on hdmusic.cc",8,2),
    ("Vessels (Bonus Track)","2018-05-21",66,"Arcane_Vessels_alt.jpg","Found full album on hdmusic.cc",8,2),
    ("The Altar","2017-10-27",221,"Colossus.jpg","",9,3),
    ("Saint Judas","2017-10-27",207,"Colossus.jpg","",9,3),
    ("Adolescence","2017-10-27",141,"Colossus.jpg","",9,3),
    ("Hospital Beds","2017-10-13",81,"Colossus.jpg","",9,3),
    ("The Altar (Reprise)","2017-10-27",270,"Colossus.jpg","",9,3),
    ("Sacrilege","2017-10-09",237,"Sacrilege.jpg","",9,3),
    ("Succubus","2017-10-27",171,"Colossus.jpg","",9,3),
    ("Portland (Interlude)","2017-10-27",96,"Colossus.jpg","",9,3),
    ("Virginity","2017-10-09",196,"Virginity.jpg","",9,3),
    ("Colossus","2017-10-27",399,"Colossus.jpg","",9,3),
    ("Celestia (Bonus Track)","2017-10-27",219,"Colossus.jpg","Used to say Celesti?? (check file)",9,3),
    ("Crosscuntry (Sacrilege Demo / Bonus Track)","2017-10-27",117,"Colossus.jpg","",9,3),
    ("Cherubim (Bonus Track)","2017-10-27",278,"Colossus.jpg","",9,3),
    ("Rosary (Bonus Track)","2017-10-27",230,"Colossus.jpg","",9,3),
    ("Golden Age (Original Demo)","2018-2019",244,"Unreleased.jpg","from 2018-2019",10,1),
    ("Knuckle Velvet (Early Demo)","2018-2019",175,"Unreleased.jpg","from 2018-2019",10,1),
    ("Powerline Valley (Early Demo)","2018-2019",151,"Unreleased.jpg","from 2018-2019",10,1),
    ("Powerline Valley (Piano Demo)","2018-2019",514,"Unreleased.jpg","from 2018-2019",10,1),
    ("Verona (Demo)","2018-2019",278,"Unreleased.jpg","from 2018-2019",10,1),
    ("Doe Hunting (Demo)","2018-2019",208,"Unreleased.jpg","from 2018-2019",10,1),
    ("Highway Horses","2018-2019",221,"Unreleased.jpg","from 2018-2019",10,1),
    ("Chapel Hill","2018-2019",255,"Unreleased.jpg","from 2018-2019",10,1),
    ("Death Rattle","2018-2019",252,"Unreleased.jpg","from 2018-2019",10,1),
    ("Vultures","2018-2019",245,"Unreleased.jpg","from 2018-2019",10,1),
    ("Starvation","2018-10-14",252,"starvation.jpg","recorded between 2017-2019",10,1),
    ("Room 209","2018-09-16",200,"room_209.jpg","recorded between 2017-2019",10,1),
    ("Arsony","2017-2019",170,"Unreleased_II.jpg","recorded between 2017-2019",11,1),
    ("Eden","2017-2019",295,"Unreleased_II.jpg","recorded between 2017-2019",11,1),
    ("Plague","2018-12-31",211,"plague.jpg","recorded between 2017-2019",11,1),
    ("Churchyard","2017-2019",164,"Unreleased_II.jpg","recorded between 2017-2019",11,1),
    ("Virginity (Piano Demo)","2017-2019",192,"Unreleased_II.jpg","recorded between 2017-2019",11,1),
    ("Antebellum","2017-2019",60,"Unreleased_II.jpg","Aka rabbit hole???????????

Recorded between 2017-2019",11,1),
    ("Casey","2017-2019",126,"Unreleased_II.jpg","recorded between 2017-2019",11,1),
    ("8 Hour Days","2017-2019",179,"Unreleased_II.jpg","recorded between 2017-2019",11,1),
    ("famous last words (an ode to eaters)","2022-11-23",205,"famous_last_words.png","CHECK IF SOUNDS THE SAME AS OTHER - POSSIBLY MERGE, otherwise change parent FK",NULL,1),
    ("south alabama (god's country demo)","2022-10-15",424,"south_alabama.jpg","",NULL,1),
    ("hard times (vyva melinkolya demo)","2021-12-27",328,"hard_times_vya_1.jpg","""Instrumental recorded by Vvya Melinkolya on December 27th, 2021 as an early version of Hard Times.""

According to tracker from Lanaboards: ""There is a version with vocals, but Hayden says that it's classified.""",NULL,1),
    ("dust bowl (demo)","2022-04-03",295,"dust_bowl.jpg","",NULL,1),
    ("give until there's nothing left (relient k cover)","2021-11-23",202,"give_until.png","",NULL,1),
    ("housofpsychoticwomn","2021-11-06",794,"housofpsychoticwomn_1.jpg","ALSO ON אשמדאי ACCOUNT (still up on both accounts as of 2/11/24)

Posted with the caption: ""iloveyou""",NULL,1),
    ("Lead Poisoning","2021-09-19",253,"Lead_Poisoning.jpg","""have felt so strange all day. convinced i was a farmer’s wife in my past life and lost him to dysentery.""

Still on official soundcloud as of 3/18/2",NULL,1),
    ("nettles (demo)","2021-08-18",153,"nettles.jpg","",NULL,1),
    ("Ad Nauseam (Demo)","2021-07-28",509,"Ad_Nauseam.jpg","Allegedy cut from Inbred",NULL,1),
    ("Wrestling in Dirt Pits","2021-05-28",502,"wrestling_in_dirt_pits.png","Allegedy cut from Inbred",NULL,1),
    ("Earnhardt","2021-05-19",261,"Earnhardt.jpg","Released on Inbred CD (CHECK DATE, but also keep soundcloud posting date for historical records)",2,1),
    ("earnhardt (demo)","2020-09-25",252,"earnhardt_(demo).jpg","",NULL,1),
    ("Mondays (feat. Chloe Hotline)","2021-04-30",359,"Mondays.jpg","Allegedy cut from Inbred",NULL,1),
    ("Crying During Sex","2021-04-13",327,"Crying_During_Sex.jpg","Released on Inbred CD

Samples Hello Neighbor OST - Nostalgia",2,1),
    ("crying during sex (demo)","2020-05-10",272,"crying_demo.jpg","Samples Hello Neighbor OST - Nostalgia",NULL,1),
    ("Fear No Plague","2021-01-01",146,"fear_no_plague.jpg","",NULL,1),
    ("111320_2.wav","2020-12-12",207,"111320_2.wav.jpg","",NULL,1),
    ("half-cocked","2020-10-24",231,"half-cocked.png","",NULL,1),
    ("a portrait of my love on her knees","2020-01-26",125,"portrait.jpg","",NULL,1),
    ("selby wall ♡","2019-09-25",435,"selby_wall.jpg","Bonus track on Golden Age",3,1),
    ("the god","2019-04-24",192,"the_god.jpg","",NULL,1),
    ("two children in a motel (demo)","2023-02-08",257,"Inbred_alt.jpg","Allegedy cut from Inbred

Idk why the title says (demo) and I can't double check if that's what Hayden put since the great Soundcloud removal. But there is already an older demo and I believe this should've been the completed version, so I wonder if I messed up
",NULL,1),
    ("Homecoming","2023-03-04",349,"homecoming.jpg","ORIGINAL SNIPPET FROM OCT 2022

might be on B-sides",NULL,1),
    ("من النهر","2024-02-14",570,"Palestine.jpg","""من النهر إلى البحر

are you watching
there is nowhere left to go
would i matter if i looked like someone you know
all your money and good deeds
will not return my blood to me
from the river to the sea
please do not forget me""",NULL,1),
    ("crying during sex (edith underground remix)","2022-05-03",77,"crying_remix.jpg","",NULL,4),
    ("78fahrenheit (demo)","2022-05-03",227,"78fahrenheit.jpg","Allegedy cut from Inbred (also she has said she likes to keep her house that temp so that's why it's named that\)

samples push by fog lake
",NULL,4),
    ("new mexico dreaming (co-prod. edith underground)","2021-12-31",234,"new_mexico.jpg","According to Tumblr it is from the miss anhedonia days",NULL,4),
    ("romeo's daddy (demo)","2022-06-27",79,"romeo's_daddy_alt.jpg","THERE IS EXTENDED VERSION TOO",NULL,4),
    ("rangerover (porches cover)","2023-02-08",178,"rangerover.jpg","",NULL,4),
    ("matriach1","2022-08-10",674,"matriach1.jpg","Noticed on 2/11/24 that it's not on ashemdaiii's Soundcloud anymore",NULL,5),
    ("000","2023-06-20",392,"000.jpg","Was called v_t2",NULL,5),
    ("001","2023-08-08",244,"001.jpg","",NULL,5),
    ("002","2023-08-09",298,"002.jpg","""sample: caught in time, so far away - you'll never get to heaven""",NULL,5),
    ("003","2023-08-15",1865,"003.jpg","""41.7004
73.9210

sample: resident evil: dead aim ost - haven in the rain""",NULL,5),
    ("004","2023-08-15",290,"004.jpg","",NULL,5),
    ("005","2023-11-22",269,"005.jpg","""sample: ocarina of time - title theme (sega genesis remix""",NULL,5),
    ("006","2023-12-20",466,"006.jpg","",NULL,5),
    ("007","2024-01-10",188,"007.jpg","",NULL,5),
    ("008","2024-02-11",154,"008.jpg","""audio sampled:

holy ghost people (dir. peter adair, 1967)
""sewage canal"" - tomonori tanaka, garage bad dream adventure soundtrack
""the ego clinic"" - tomonori tanaka, garage bad dream adventure soundtrack""",NULL,5),
    ("009","2024-03-09",83,"009.jpg","""little demo for the next project maybe""",NULL,5),
    ("come up","2023-12-06",247,"come_up.jpg","",NULL,6),
    ("kennedy drive (demo)","2021",142,"kennedy_drive.jpg","Allegedy from 2021

From Miss Anhedonia era",NULL,4),
    ("Tongue","2021",351,"tongue.jpg","Allegedly from 2021, and the sample is from the movie ""Plain Dirty""

From Miss Anhedonia era",NULL,4),
    ("Tube","2021",144,"tube.jpg","Allegedly from 2021, and samples Hide by FKA twigs

From Miss Anhedonia era",NULL,4),
    ("A long, unfortunate while (demo)","2021-04-14",331,"long_unfortunate_while.jpg","tumblr - Allegedly cut from Inbred",NULL,1),
    ("truckers chapel (demo)","2021-02-04",102,"trucker's_chapel.jpg","Allegedly cut from Inbred

She posted it with the caption: ""reject from the ep, couldn’t figure out what else to do with it but i kinda liked this part lol.""",NULL,1),
    ("waco, texas (demo)","2021-03-31",372,"waco_texas.jpg","20 minutes & on b sides tumblr (have TWO VERSIONS)",NULL,1),
    ("Age of Delilah (Demo)","2021-04-23",255,"Inbred.jpg","Released on Inbred CD

""This song is for my sister, Delilah. It’s an ode to growing up.""",2,1),
    ("Hunny (Maddy Ellwanger Cover)",NULL,222,"","",NULL,NULL),
    ("great wide nowhere","2020",207,"great_wide_nowhere.jpg","Fom hisethecain era (Tumblr url). Genius allegedly has exact date (8/19/20)

She posted it with the caption: ""i want this year to be over so bad""",NULL,1),
    ("bambi","2023-01-12",122,"bambi.jpg","posted on tumblr",NULL,1),
    ("perry","2018-09-03",105,"perry.jpg","Perry, Florida is Hayden's hometown

Allegedly from September 3, 2018 according to Genius",NULL,2),
    ("ethel","2018",102,"ethel.jpg","Listened once according to last.fm, never found again for a full year till 3/16/24 (hard to Google cuz it's her name) and turns out it was in a Google Drive link shared on Lanaboards that I already had bookmarked from idk when

Metadata of dropboxed file says 2018?????? But I have no idea cuz I can't find record of the song",NULL,2),
    ("Poacher's Pride","2018-06-20",138,"Poacher's_Pride.jpg","",NULL,2),
    ("princess ketamine","2020-06-15",100,"princess_ketamine.jpg","",NULL,1),
    ("princess ketamine (demo 2)","2020",112,"princess_ketamine_2","",NULL,1),
    ("Child of Cain","2019",191,"child_of_cain_White_Silas.png","Bonus track on Golden Age

Found image that says WHITE SILAS
",3,1),
    ("gold cross (demo)","2020-05-03",246,"gold_cross.jpg","",NULL,1),
    ("Independence Day (prod. Yah Wav)","2019-09-29",174,"","Tracker from Lanaboards says ""September 29, 2019"" ??",NULL,NULL),
    ("Your Jacket","2020-02-17",247,"","Tracker from Lanaboards says Feb 17, 2020, and ""First appeared online via YouTube, it was posted by a friend of Hayden, Malcolm MacMaster.""",NULL,1),
    ("rabbit hole","2018",63,"rabbit_hole.jpg","Got it from file titled ""Rabbit Hole (Antebellum demo)""",NULL,2),
    ("Cremorium","2018-11-14",58,"Cremorium.png","",NULL,2),
    ("Apostate","2018",157,"apostate.jpg","",NULL,2),
    ("No Rest For The Wicked","2018",188,"no_rest.jpg","",NULL,2),
    ("Cedar","2018-08-30",99,"cedar.jpg","Sounds similar to antlers

Tracker from Lanaboards says Aug 30, 2018, and: ""An early demo of Ethel’s song, “Antlers,” Cedar tells a tale of isolated children who are neglected by their absent father and ill mother.""",NULL,2),
    ("Embarrassing (Ellis Cover)","2020",171,"embarassing.jpg","Embarrassing didn't come out until 2020, so she couldn't have covered it until then (unless she is friends with her & heard it early)",NULL,1),
    ("xxxxxxxxxx","2022-09-24",112,"xxxxxxxxxx.jpg","Commonly referred to as ""concrete"" According to tumblr - Sept 24 2022 or earlier

Samples Sprawl by Bedlocked",NULL,1),
    ("my heart will go on (cover)","2020",75,"","Audio ripped from a vid of her singing in her Indiana church in a robe",NULL,1),
    ("American Teenager (B sides)","2022",102,"American_Teenager_B_sides.jpg","I believe this may be a mashup of MULTIPLE demos",NULL,1),
    ("Tammy Faye (Nicole Dollanganger Cover)","2020",225,"waco_texas.jpg","Gotta be old as bones cuz from reading Lanaboards it seems at least from 2020 (if not earlier) and was lost media for a long time",NULL,1),
    ("Scarlet Letter","2020-11-08",104,"","Posted with the captions ""Are you coming to the chapel?"" on Twitter and ""Welcome to the chapel ♡"" on Instagram on 11/8/2020 by Daisy Cain (@missdaisycain) with a video seemingly filmed in Hayden's Indiana church. Can't find official name, but some call it ""Are you coming to the chapel,"" presumably due to the Twitter video caption. Also seen called Scarlet Letter, which seems more fitting",NULL,1),
    ("Wake Up Call (ft. Aelyx)","2020",315,"wake_up_call.jpg","Someone said ""Wake up call studio has not leaked and I'm pretty sure that's a rip from IG live; it's also golden age era I believe""

Allegedy cut from Inbred Cover art, date & description on Genius (CAN'T FIND ON GENIUS AS OF APRIL 2024, SO EITHER GOT TAKEN DOWN OR I MESSED UP THIS NOTE??)",NULL,NULL),
    ("White Van","2019-06-22",308,"White_Van.jpg","""Never mind i decided i hated the song""",NULL,2),
    ("A Good Day For A Wedding","2023",NULL,"","""Registered on BMI / ASCAP sometime around November 2023,
nothing is known about it other than the title.""",NULL,1),
    ("For Sure",NULL,NULL,"","",NULL,NULL),
    ("Powerline Valley (corrupted version)","2021-07-15",473,"powerline_corrupted.jpg","Sounds like it was from a livestream or something? Only can really find this one soundcloud",NULL,1),
    ("Givenchy FW22 Score","2022",129,"Givenchy_2.png","Allegedly is a score Hayden made for Givenchy fashion week 2022. Got from ""White Silas"" alleged Soundcloud (prolly just a fan that took over the account).",NULL,1),
    ("Sunday Morning - Demo","2019-12-01",257,"Golden_Age.jpg","",3,1),
    ("God's Country (early demo)","2020-09-25",259,"God's_country_early_demo.jpg","She titled it ""untitled"", SO NO REAL NAME

Posted with the caption: ""early early demos from the EP. probably going 2 sound like a completely different song by the time it’s done lol.""",NULL,1),
    ("crush (acapella)","2021-11-24",207,"crush_acapella.jpg","",NULL,1),
    ("two children in a motel (old demo)","2020-02-19",242,"two_children_old_demo.jpg","She titled it ""inbred"" when she posted it, but the actual song is two children

Posted with the caption: ""love song for ada and jessaby""",NULL,1),
    ("Michelle Pfeiffer (Solo Version)","2021-04-23",275,"Inbred.jpg","Released on Inbred CD (check date)",2,1),
    ("Unknown Song / Football*",NULL,165,"football.jpg","NO CLUE WHERE IT CAME FROM????? Even people on Lanaboards seemily don't know the source??????? Could potentially be the first track to actually leak??????",NULL,1),
    ("there's something wrong with me (demo)","2021-11-08",217,"","From livestream, probably old cuz she says ""young Ethel on the track"", longer title is ""but he doesn't know it yet"" added as well (date is livestream date)",NULL,1),
    ("romeo's daddy (extended version)","2021-09-22",108,"romeo's_daddy_alt.jpg","",NULL,4),
    ("greet death sample","2021-09-22",142,"","",NULL,1),
    ("random Inbred demo","2021-09-22",83,"","",NULL,1),
    ("dog days (demo)","2021-09-22",NULL,"","",NULL,1),
    ("Paris","2018",216,"Paris.png","File was titled ""Atlas (White Silas) - Paris"" so unsure which era / alias it's under. Also have no clue where it came from",NULL,3),
    ("western nights (demo)","2018-08-28",449,"","Youtube",NULL,2),
    ("i keep the angel","2024-04-21",166,"","Posted with the caption ""i keep the angel"" with video from Reflecting Skin. Someone asked what song it is and she responded with: ""🙂‍↔️""",NULL,1),
    ("2024 Story Snippet","2024-04-20",24,"","She posted video of this snippet playing in the background with no context out of nowhere",NULL,1),
    ("fuck-me eyes (snippet 1)","2020",37,"","One snippet was supposedly posted on TikTok Nov 2020",NULL,1),
    ("fuck-me eyes (snippet 2)","2020",20,"","One snippet was supposedly posted on TikTok Nov 2020",NULL,1),
    ("How Come",NULL,NULL,"","Allegedy cut from Inbred",NULL,1),
    ("Have You Told Your Wife? (snippet)","2021",49,"","June 1 2021 or earlier?",NULL,1),
    ("Down South","2021",53,"down_south.jpg","""it was just a fun little demo i made with a friend of mine in LA while i was there, we might finish it at some point but it’s not for the record""

Supposedly from 2021?",NULL,1),
    ("Louisiana","2022-08-10",46,"Louisiana.jpg","Allegedly posted to her story August 2022, & this video is screen recording of her story with lyrics. Unsure what the song is actually called

She has since stated: ""i hate that song, im embarrassed i even posted a snippet""",NULL,1),
    ("Stoker","2022",43,"","Allegedly posted to her story August 2022, & this video is screen recording of her story with lyrics. Unsure what the song is actually called",NULL,1),
    ("Rabid (Nicole Dollanganger Cover)","2018-05-15",31,"","papermassacred insta (she said full thing was on Soundcloud, but that Soundcloud didn't exist by the time I saw it)",NULL,2),
    ("maïa","2018-02-25",60,"","I titled it maïa_Snippet.mp3 in my files

(Ripped directly from papermassacred Insta in early 2023, put into folder on laptop, then FORGOT about it cuz I'm dumb and now the whole account is taken down cuz it's spring 2024, so I don't have more info)

Allegedly from Feb 25 2018 according to Lanaboards",NULL,2),
    ("Unknown Demo Snippet*","2018",36,"","I titled it Unknown_Demo_Snippet.mp3 in my files

(Ripped directly from papermassacred Insta in early 2023, put into folder on laptop, then FORGOT about it cuz I'm dumb and now the whole account is taken down cuz it's spring 2024, so I don't have more info)
(Ripped directly from papermassacred Insta in early 2023, put into folder on laptop, then FORGOT about it cuz I'm dumb and now the whole account is taken down cuz it's spring 2024, so I don't have more info)

Found info on Lanaboards - could be any one of these: I Am Gravid With An Angel snippet - April 23 2018
Archangels snippet - March 30 2018
New Demo snippet - April 23 2018
",NULL,2),
    ("He's Closing in on Me","2018-05-13",30,"","I titled it Unknown_Snippet.mp3 in my files

(Ripped directly from papermassacred Insta in early 2023, put into folder on laptop, then FORGOT about it cuz I'm dumb and now the whole account is taken down cuz it's spring 2024, so I don't have more info)
(Ripped directly from papermassacred Insta in early 2023, put into folder on laptop, then FORGOT about it cuz I'm dumb and now the whole account is taken down cuz it's spring 2024, so I don't have more info)

Allegedly from May 13 2018 according to Lanaboards",NULL,2),
    ("I Am Gravid With An Angel","2018-04-23",NULL,"","According to Lanaboards, allegedly from Instagram. The ""Unkown Demo Snippet"" I have may be this one or the other next to this one that I don't have (so I prolly have 1/3 of these missing ones)

Allegedly from April 23 2018 according to Lanaboards",NULL,2),
    ("Archangels snippet","2018-03-30",NULL,"","According to Lanaboards, allegedly from Instagram. The ""Unkown Demo Snippet"" I have may be this one or the other next to this one that I don't have (so I prolly have 1/3 of these missing ones)

Allegedly from March 30 2018 according to Lanaboards",NULL,2),
    ("New Demo snippet","2018-04-23",NULL,"","According to Lanaboards, allegedly from Instagram. The ""Unkown Demo Snippet"" I have may be this one or the other next to this one that I don't have (so I prolly have 1/3 of these missing ones

Allegedly from April 23 2018 according to Lanaboards",NULL,2),
    ("drain me","2019-02-14",213,"drain_me.jpg","On Spotify it's under White Silas, but on Soundcloud it says ft. Ethel??",NULL,8),
    ("tentillforever","2021-05-28",200,"tentillforever.jpg","""first song w michael, v excited to make more w him :) i feel like i haven’t recorded smth acoustic in almost 2 years…. didn’t realize how much i missed it </3""",NULL,16),
    ("georgia cotton","2018-12-30",227,"georgia_cotton.png","""a good friend of mine and i recorded a little love story ditty in her attic 💖""

kelsey gibson - banjo, vocals
hayden anhedönia - banjo, vocals, production",NULL,14),
    ("Black And Blue (Demo)","2020-05-01",231,"kabel_black_blue.jpg","Was on spotify",NULL,12),
    ("one winged angel","2020-01-01",223,"material_fantasies.jpg","",12,9),
    ("Sell Your Soul","2019-06-21",183,"sell.jpg","",13,15),
    ("away from u","2018-12-26",146,"away_from_u.jpg","",NULL,8),
    ("snuff film","2021-02-07",395,"snuff_film.jpg","Downloaded from bandcamp - They said it's official released on the ep heart stains (reproduction of older & shorter track I think?), also said: re-production and added vocals : Ms. Ethel Cain

SAYS ON IMAGE ""josie lotet x ethel cain""
",NULL,13)