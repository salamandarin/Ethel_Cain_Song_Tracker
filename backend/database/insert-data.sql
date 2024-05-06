--------- ADD ARTISTS ---------
INSERT INTO artists (artist_id, artist_name, artist_real_name, artist_image, artist_description)
VALUES (1, 'Ethel Cain', 'Hayden', 'Spotify_2023.jpg',
        'Ethel Cain is the main project of Hayden Silas Anhedonia. She started the Ethel Cain project in 2019 after scrapping White Silas. Ethel Cain is technically a fictional character, and her story is told in Hayden''s debut album "Preacher''s Daughter."'),
       (2, 'White Silas', 'Hayden', 'White_Silas_3.png',
        'White Silas Hayden''s old project, which spanned from roughly 2018 - 2019. There are several EPs & albums under the moniker. Some of the sounds rougher due to being some of her oldest work and she was still learning how to produce. She also put out two EPs under this name in collaboration with Little Triste'),
       (3, 'ΛTLΛS (Atlas)', 'Hayden', 'Atlas_2.jpg',
        'Atlas is likely the first moniker that Hayden released music under, but then she later changed it to White Silas instead after releasing the album Colossus'),
       (4, 'tommy / Miss Anhedonia', 'Hayden', 'tommy_2024.jpg',
        'Tommy is one of Hayden''s side projects, and it exists only on Soundcloud. It consists of slightly more experimental sounds than her normal work, and tends to be more trap or pop inspired. It used to be known as Miss Anhedonia, but she later changed the username to tommygunbaby'),
       (5, 'אשמדאי', 'Hayden', 'ashmedaii_2024.jpg',
        'Ashmedaii is Hayden''s ambient side project, and it exists only on Soundcloud. It consists of exclusively instrumental ambient tracks'),
       (6, 'whiine', 'Hayden', 'whiine.jpg',
        'Whiine is the newest of Hayden''s Soundcloud side projects, so it only has one song so far. This may be a collaboration project between her and Vyva Melinkolya, but I am not sure'),
       (7, 'Witchcest', 'Hayden', 'Witchcest',
        'This project was lost media for a long time until recently. It seems to be the oldest (or one of the oldest) known projects of Hayden since it dates back to 2017. Only one song is known to come from it, and I''m unsure if there are more'),
       (8, 'little triste', 'aelyx', 'little_triste.png', ''),
       (9, 'YAH WAV', 'aelyx', 'YAH_WAV.jpg', ''),
       (10, 'Edith Underground', 'Salem', 'E_DEATH.jpg', ''),
       (11, 'Florence + The Machine', '', 'Florence.jpg', ''),
       (12, 'Kabel', '', '', ''),
       (13, 'josephine pineconey', '', '', ''),
       (14, 'honey whiskey', 'Kelsey Gibson', '', ''),
       (15, 'Gutter Punk', '', '', ''),
       (16, 'ollin miller', '', '', ''),
       (17, 'Vyva Melinkolya', '', '', ''),
       (18, 'Ashnikko', '', '', '')


--------- ADD ALBUMS ---------
INSERT INTO albums (album_id, album_title, album_date, album_image, album_description, album_artist)
VALUES (1, 'Preacher''s Daughter', '2022-05-12', 'Preacher''s_Daughter.png',
        'Preacher''s Daughter is Hayden Anhedonia''s (Ethel Cain''s) debut album. It is a concept album that tells a story about the fictional character Ethel Cain. Preacher''s Daughter is the first album in the Ethel Cain family tree trilogy.',
        1),
       (2, 'Inbred', '2021-04-23', 'Inbred.jpg',
        'Inbred is the first EP released under an official record label, and features more rock-inspired sounds', 1),
       (3, 'Golden Age', '2019-12-01', 'Golden_Age.jpg',
        'Golden Age was the last EP that Hayden self-released before getting signed to a label. It was recorded using a mic she got off Amazon for about $60',
        1),
       (4, 'Carpet Bed', '2019-09-13', 'Carpet_Bed.jpg',
        'Carpet Bed is the first official EP released on streaming platforms under the Ethel Cain project. It was recorded using a mic she got off Amazon for about $60',
        1),
       (5, 'Mourning After', '2019-03-30', 'Mourning_After.jpg',
        'Mourning After is the second EP that Hayden made in collaboration with Little Triste (also known as aelyx or YAH WAV). It has more of a trap inspired sound than her current work. It was also recorded using a mic she got off Amazon for about $60',
        2),
       (6, 'Nightmares', '2018-10-26', 'Nightmares.jpg',
        'Nightmares is the first of two EPs that Hayden made in collaboration with Little Triste (also known as aelyx or YAH WAV). It has more of a trap inspired sound than her current work, and this EP is widely regarded as her best White Silas work. Florida Heat used to be her top song on Spotify before she took down her old work. It was also recorded using a mic she got off Amazon for about $60',
        2),
       (7, 'Sad Music for Sad People', '2018-09-15', 'Sad_Music_for_Sad_People.jpg',
        'Sad Music for Sad People was self-released in 2018 and was recorded using a mic she got off Amazon for about $60. It features two songs (A House in Nebraska and Strangers) that would later be released on her 2022 album Preacher''s Daughter until the name Ethel Cain. This is the oldest project she is comfortable sharing',
        2),
       (8, 'Arcane Vessels', '2018-05-21', 'Arcane_Vessels_alt.jpg', 'Arcane Vessels was self-released in 2018. Similar to Colossus, it was recorded on the mic of a pair of wired earbuds, and it was entirely produced on an old Macbook using Garageband.
', 2),
       (9, 'Colossus', '2017-10-27', 'Colossus.jpg', 'Colossus is Hayden''s first known album, and it was self-released in 2017. She is a self-taught producer, so this album is a product of her just experimenting with Garageband. It was recorded on the mic of a pair of wired earbuds, and it was entirely produced on an old Macbook using Garageband.
Colossus was originally released under the moniker "Atlas," but later she later changed her artist name to White Silas. Due to this change, the album art says Atlas, but Spotify records show that it was under White Silas.',
        3),
       (10, 'Unreleased', '2020-02-28', 'Unreleased.jpg', 'collection of unreleased songs available for purchase only on her Bandcamp.

Unreleased songs and demos from 2018-2019.

All songs written and produced by Ethel Cain with the exception of Knuckle Velvet, produced by Yah Wav.', 1),
       (11, 'Unreleased II', '2020-05-21', 'Unreleased_II.jpg', 'second collection of unreleased songs, demos, and other random tracks available for purchase only on her Bandcamp.

recorded between 2017-2019.

all demos written, recorded, produced, and mixed by ethel cain.', 1),
       (12, 'material fantasies', '2020-01-01', 'material_fantasies.jpg', '', 9),
       (13, 'When It Happens, I''ll Be There', '2019-06-21', 'sell.jpg', '', 15),
       (14, 'WEEDKILLER', '2023-08-25', 'weedkiller.jpg', '', 18)


--------- ADD TRACKS ---------
INSERT INTO tracks (track_title, track_length, track_date, track_album, track_artist, track_image, track_notes)
VALUES ('222', 408, '2023-11-02', NULL, 17, '222.jpg', '"recorded between winter 2020 and summer 2022 recorded and mixed by Chyype Crosby mastered by Matthew Thomasi additional recording by Angel and Hayden"

Ethel Cain is NOT credited on Spotify'),
       ('Dying Star (feat. Ethel Cain)', 256, '2023-08-25', 14, 18, 'weedkiller.jpg',
        '"Having Ethel Cain on this song was super special. She’s an incredible songwriter and instrumentalist, and she loves a world build. Putting ‘Possession of a Weapon’ right before ‘Dying Star’ was intentional, because I wanted to end the record with something very hopeful. The very last line is, ‘I want something soft.’ The people who have been unkind to me have made me unkind, but, ultimately, I just want a soft place to land, and that’s exactly what this song is about, pulling those thorns of the Weedkiller out one by one and looking for someone to take me in. It’s definitely a love song. Existing in a very patriarchal world, especially in the South, under the dark cloud of religion, I’ve had to build myself back up and tell myself that actually I do deserve something kind. Being with someone who is soft and kind to me, I think, was quite shocking, because being hurt is the default setting. I like to think of this person as this new sentient planet, reaching out and catching me softly in her baseball mitt. Something so simple, but something that everyone should have the ability to do in their lifetimes. I wish everyone that—a safe space to exist and be themselves." - Ashnikko'),
       ('Famous Last Words (An Ode to Eaters)', 203, '2023-07-21', NULL, 1, 'famous_last_words_2.jpg',
        'CHECK IF SOUNDS THE SAME AS OTHER - POSSIBLY MERGE, otherwise change parent FK'),
       ('Morning Elvis (Live at Denver Ball Arena)', 255, '2022-12-09', NULL, 11, 'Morning_Elvis.jpg', ''),
       ('Family Tree (Intro)', 221, '2022-05-12', 1, 1, 'Preacher''s_Daughter.png',
        'Was originally gonna be instrumental'),
       ('American Teenager', 258, '2022-04-21', 1, 1, 'American_Teenager.jpg',
        'Barack Obama put it on his top songs of 2022'),
       ('A House In Nebraska', 466, '2022-05-12', 1, 1, 'Preacher''s_Daughter.png',
        'Was originally written sometime in 2018 or earlier since it was first released on Sad Music for Sad People. This song (even more specifically, the very first piano note) is what really started the Ethel Cain project, and it is the glue that holds Preacher''s Daughter together'),
       ('Western Nights', 365, '2022-05-12', 1, 1, 'Preacher''s_Daughter.png', ''),
       ('Family Tree', 430, '2022-05-12', 1, 1, 'Preacher''s_Daughter.png', ''),
       ('Hard times', 303, '2022-05-12', 1, 1, 'Preacher''s_Daughter.png', ''),
       ('Thoroughfare', 567, '2022-05-12', 1, 1, 'Preacher''s_Daughter.png', ''),
       ('Gibson Girl', 342, '2022-03-17', 1, 1, 'Gibson_Girl.jpg', ''),
       ('Ptolemaea', 383, '2022-05-12', 1, 1, 'Preacher''s_Daughter.png', ''),
       ('August Underground', 220, '2022-05-12', 1, 1, 'Preacher''s_Daughter.png', ''),
       ('Televangelism', 183, '2022-05-12', 1, 1, 'Preacher''s_Daughter.png', ''),
       ('Sun Bleached Flies', 456, '2022-05-12', 1, 1, 'Preacher''s_Daughter.png', ''),
       ('Strangers', 344, '2022-04-07', 1, 1, 'Strangers.jpg',
        'Was originally written sometime in 2018 or earlier since it was first released on Sad Music for Sad People'),
       ('Everytime', 234, '2022-03-08', NULL, 1, 'Everytime.jpg', ''),
       ('Crush - Stripped', 229, '2021-09-24', NULL, 1, 'crush_stripped.jpg', ''),
       ('Michelle Pfeiffer (feat. lil aaron)', 271, '2021-02-11', 2, 1, 'Michelle.jpg', ''),
       ('Crush', 204, '2021-03-18', 2, 1, 'Crush.jpg', ''),
       ('God''s Country (feat. Wicca Phase Springs Eternal)', 495, '2021-04-23', 2, 1, 'Inbred.jpg', ''),
       ('Unpunishable', 261, '2021-04-23', 2, 1, 'Inbred.jpg', ''),
       ('Inbred', 287, '2021-04-23', 2, 1, 'Inbred.jpg',
        'Someone asked what some lyric meant and she said she was high or something and so it didnt really have meaning????? (source was probably from deleted tumblr, so idk specifics)'),
       ('Two-Headed Mother', 372, '2021-04-23', 2, 1, 'Inbred.jpg', ''),
       ('Sunday Morning', 279, '2019-12-01', 3, 1, 'Golden_Age.jpg', ''),
       ('Casings', 276, '2019-12-01', 3, 1, 'Golden_Age.jpg', ''),
       ('Lilies', 304, '2019-12-01', 3, 1, 'Golden_Age.jpg', ''),
       ('Head in the Wall', 401, '2019-09-16', 3, 1, 'head_in_the_wall.jpg', 'tumblr (OG DATE)'),
       ('Knuckle Velvet', 202, '2019-12-01', 3, 1, 'Golden_Age.jpg', ''),
       ('Golden Age', 364, '2019-12-01', 3, 1, 'Golden_Age.jpg', ''),
       ('Growing Pains', 328, '2019-09-13', 4, 1, 'Carpet_Bed.jpg', ''),
       ('Dog Days', 288, '2019-09-13', 4, 1, 'Carpet_Bed.jpg', ''),
       ('Misuse Oh', 187, '2019-09-13', 4, 1, 'Carpet_Bed.jpg', ''),
       ('Antlers', 98, '2019-09-13', 4, 1, 'Carpet_Bed.jpg', 'Sounds similar to Cedar'),
       ('Golden Age (Piano Version)', 317, '2019-11-01', NULL, 1, 'Golden_Age_Piano.jpg', ''),
       ('Bruises', 390, '2019-08-02', NULL, 1, 'Bruises.jpg', 'Used to be released as a single'),
       ('White Light', 216, '2018-07-28', NULL, 2, 'White_Light.jpg',
        'Used to be on Spotify until sometime in Summer 2023 (last streamed July 1st, 2023)'),
       ('Just Snorted a Pill', 207, '2017-01-01', NULL, 7, 'Witchcest.jpg',
        'Spotify says 1/1/17, but Youtube auto says 9/28/2017?????'),
       ('God Complex (Intro)', 173, '2019-03-30', 5, 2, 'Mourning_After.jpg', ''),
       ('Iron Maiden', 145, '2019-03-30', 5, 2, 'Mourning_After.jpg', ''),
       ('Good Boy', 132, '2019-03-30', 5, 2, 'good_boy.png', 'Allegedy cut from Inbred'),
       ('Whiteout', 168, '2019-03-30', 5, 2, 'Mourning_After.jpg', ''),
       ('Mourning After', 130, '2019-03-30', 5, 2, 'Mourning_After.jpg', ''),
       ('Saddle Up!', 140, '2019-01-18', NULL, 2, 'Saddle_Up.png', ''),
       ('Misuse Oh - Demo', 190, '2019-01-01', NULL, 2, 'Misuse_Oh.jpg', 'Date posted on Spotify is from BEFORE Spotify date
Posted with the caption: "for him"'),
       ('Florida Heat', 183, '2018-10-26', 6, 2, 'Nightmares.jpg',
        '"Starting off the typical “boy meets girl” story, two young wayward adults fall into each other’s lives. They both know they’re unhealthy, but they’re so madly in love nothing matters anyways."'),
       ('Hitch Party', 146, '2018-10-26', 6, 2, 'Nightmares.jpg',
        '"The two of them start to fall down the rabbit hole of sleazy parties and the crime underworld, putting a strain on their relationship that neither of them want to acknowledge."'),
       ('Nightmares', 174, '2018-10-26', 6, 2, 'Nightmares.jpg',
        '"The relationship gets worse and worse, with him starting to actually abuse her and fall deeper and deeper into the mess he’s made of both of them. She doesn’t want to leave him, but she’s scared of where they’re headed."'),
       ('The Wake', 133, '2018-10-26', 6, 2, 'Nightmares.jpg',
        '"Finally the love story comes to an end. After dirty fights and hard drugs that he can’t recover from, he winds up wasting away with his lover right beside him until she buries him."'),
       ('Strangers - Demo', 231, '2018-09-15', 7, 2, 'Sad_Music_for_Sad_People.jpg',
        '"Strangers, the opening demo track from “Sad Music for Sad People”, tells a bittersweet love story about a Stockholm syndrome-stricken victim of a cannibal kidnapper."'),
       ('Cold Food', 193, '2018-09-15', 7, 2, 'Sad_Music_for_Sad_People.jpg',
        '"Cold Food depicts what it feels like to love someone suffering with extreme depression. It’s hard to save someone who needs it when you can barely save yourself."'),
       ('Stomping Ground', 260, '2018-09-15', 7, 2, 'Sad_Music_for_Sad_People.jpg',
        '"Sometimes people f*ck you over and pretend like it never happened. And it’s not your job to forgive them, or to bring them to justice. But sometimes you just want to, and no one can stop you."'),
       ('Vacancy', 262, '2018-09-15', 7, 2, 'Sad_Music_for_Sad_People.jpg',
        '"This track is just a love story between a high schooler and a man they met who lives in a motel by the interstate."'),
       ('A House in Nebraska - Demo', 372, '2018-09-15', 7, 2, 'Sad_Music_for_Sad_People.jpg', ''),
       ('S.M.F.S.P.', 110, '2018-09-15', 7, 2, 'Sad_Music_for_Sad_People.jpg',
        '"All I do is listen to other people’s sad music and then write my own. That’s how it is and that’s how I like it I suppose."'),
       ('Jesus Loves You', 222, '2018-09-15', 7, 2, 'jesus_loves_you.jpg', ''),
       ('The Epitaph', 193, '2018-05-21', 8, 2, 'Arcane_Vessels_alt.jpg', 'On Bandcamp (Unreleased II)
Found full album on hdmusic.cc'),
       ('Womb', 142, '2018-05-21', 8, 2, 'Arcane_Vessels_alt.jpg', 'Found full album on hdmusic.cc'),
       ('Infirmary', 356, '2018-05-21', 8, 2, 'Arcane_Vessels_alt.jpg', 'Found full album on hdmusic.cc'),
       ('Varnish', 433, '2018-05-21', 8, 2, 'Arcane_Vessels_alt.jpg', 'Downloaded from dropbox on Ethel Cain Archives tumblr.
Found full album on hdmusic.cc'),
       ('A Lullaby for Judas', 344, '2018-05-21', 8, 2, 'Arcane_Vessels_alt.jpg', 'Found full album on hdmusic.cc'),
       ('Hospital Beds II', 344, '2018-05-21', 8, 2, 'Arcane_Vessels_alt.jpg', 'On Bandcamp (Unreleased II)
Found full album on hdmusic.cc'),
       ('Achyls', 289, '2018-05-21', 8, 2, 'Arcane_Vessels_alt.jpg', 'Found full album on hdmusic.cc'),
       ('Vessels (Bonus Track)', 66, '2018-05-21', 8, 2, 'Arcane_Vessels_alt.jpg', 'Found full album on hdmusic.cc'),
       ('The Altar', 221, '2017-10-27', 9, 3, 'Colossus.jpg', ''),
       ('Saint Judas', 207, '2017-10-27', 9, 3, 'Colossus.jpg', ''),
       ('Adolescence', 141, '2017-10-27', 9, 3, 'Colossus.jpg', ''),
       ('Hospital Beds', 81, '2017-10-13', 9, 3, 'Colossus.jpg', ''),
       ('The Altar (Reprise)', 270, '2017-10-27', 9, 3, 'Colossus.jpg', ''),
       ('Sacrilege', 237, '2017-10-09', 9, 3, 'Sacrilege.jpg', ''),
       ('Succubus', 171, '2017-10-27', 9, 3, 'Colossus.jpg', ''),
       ('Portland (Interlude)', 96, '2017-10-27', 9, 3, 'Colossus.jpg', ''),
       ('Virginity', 196, '2017-10-09', 9, 3, 'Virginity.jpg', ''),
       ('Colossus', 399, '2017-10-27', 9, 3, 'Colossus.jpg', ''),
       ('Celestia (Bonus Track)', 219, '2017-10-27', 9, 3, 'Colossus.jpg', 'Used to say Celesti?? (check file)'),
       ('Crosscuntry (Sacrilege Demo / Bonus Track)', 117, '2017-10-27', 9, 3, 'Colossus.jpg', ''),
       ('Cherubim (Bonus Track)', 278, '2017-10-27', 9, 3, 'Colossus.jpg', ''),
       ('Rosary (Bonus Track)', 230, '2017-10-27', 9, 3, 'Colossus.jpg', ''),
       ('Golden Age (Original Demo)', 244, '2018-2019', 10, 1, 'Unreleased.jpg', 'from 2018-2019'),
       ('Knuckle Velvet (Early Demo)', 175, '2018-2019', 10, 1, 'Unreleased.jpg', 'from 2018-2019'),
       ('Powerline Valley (Early Demo)', 151, '2018-2019', 10, 1, 'Unreleased.jpg', 'from 2018-2019'),
       ('Powerline Valley (Piano Demo)', 514, '2018-2019', 10, 1, 'Unreleased.jpg', 'from 2018-2019'),
       ('Verona (Demo)', 278, '2018-2019', 10, 1, 'Unreleased.jpg', 'from 2018-2019'),
       ('Doe Hunting (Demo)', 208, '2018-2019', 10, 1, 'Unreleased.jpg', 'from 2018-2019'),
       ('Highway Horses', 221, '2018-2019', 10, 1, 'Unreleased.jpg', 'from 2018-2019'),
       ('Chapel Hill', 255, '2018-2019', 10, 1, 'Unreleased.jpg', 'from 2018-2019'),
       ('Death Rattle', 252, '2018-2019', 10, 1, 'Unreleased.jpg', 'from 2018-2019'),
       ('Vultures', 245, '2018-2019', 10, 1, 'Unreleased.jpg', 'from 2018-2019'),
       ('Starvation', 252, '2018-10-14', 10, 1, 'starvation.jpg', 'recorded between 2017-2019'),
       ('Room 209', 200, '2018-09-16', 10, 1, 'room_209.jpg', 'recorded between 2017-2019'),
       ('Arsony', 170, '2017-2019', 11, 1, 'Unreleased_II.jpg', 'recorded between 2017-2019'),
       ('Eden', 295, '2017-2019', 11, 1, 'Unreleased_II.jpg', 'recorded between 2017-2019'),
       ('Plague', 211, '2018-12-31', 11, 1, 'plague.jpg', 'recorded between 2017-2019'),
       ('Churchyard', 164, '2017-2019', 11, 1, 'Unreleased_II.jpg', 'recorded between 2017-2019'),
       ('Virginity (Piano Demo)', 192, '2017-2019', 11, 1, 'Unreleased_II.jpg', 'recorded between 2017-2019'),
       ('Antebellum', 60, '2017-2019', 11, 1, 'Unreleased_II.jpg', 'Aka rabbit hole???????????

Recorded between 2017-2019'),
       ('Casey', 126, '2017-2019', 11, 1, 'Unreleased_II.jpg', 'recorded between 2017-2019'),
       ('8 Hour Days', 179, '2017-2019', 11, 1, 'Unreleased_II.jpg', 'recorded between 2017-2019'),
       ('famous last words (an ode to eaters)', 205, '2022-11-23', NULL, 1, 'famous_last_words.png',
        'CHECK IF SOUNDS THE SAME AS OTHER - POSSIBLY MERGE, otherwise change parent FK'),
       ('south alabama (god''s country demo)', 424, '2022-10-15', NULL, 1, 'south_alabama.jpg', ''),
       ('hard times (vyva melinkolya demo)', 328, '2021-12-27', NULL, 1, 'hard_times_vya_1.jpg', '"Instrumental recorded by Vvya Melinkolya on December 27th, 2021 as an early version of Hard Times."

According to tracker from Lanaboards: "There is a version with vocals, but Hayden says that it''s classified."'),
       ('dust bowl (demo)', 295, '2022-04-03', NULL, 1, 'dust_bowl.jpg', ''),
       ('give until there''s nothing left (relient k cover)', 202, '2021-11-23', NULL, 1, 'give_until.png', ''),
       ('housofpsychoticwomn', 794, '2021-11-06', NULL, 1, 'housofpsychoticwomn_1.jpg', 'ALSO ON אשמדאי ACCOUNT (still up on both accounts as of 2/11/24)

Posted with the caption: "iloveyou"'),
       ('Lead Poisoning', 253, '2021-09-19', NULL, 1, 'Lead_Poisoning.jpg', '"have felt so strange all day. convinced i was a farmer’s wife in my past life and lost him to dysentery."

Still on official soundcloud as of 3/18/2'),
       ('nettles (demo)', 153, '2021-08-18', NULL, 1, 'nettles.jpg', ''),
       ('Ad Nauseam (Demo)', 509, '2021-07-28', NULL, 1, 'Ad_Nauseam.jpg', 'Allegedy cut from Inbred'),
       ('Wrestling in Dirt Pits', 502, '2021-05-28', NULL, 1, 'wrestling_in_dirt_pits.png', 'Allegedy cut from Inbred'),
       ('Earnhardt', 261, '2021-05-19', 2, 1, 'Earnhardt.jpg',
        'Released on Inbred CD (CHECK DATE, but also keep soundcloud posting date for historical records)'),
       ('earnhardt (demo)', 252, '2020-09-25', NULL, 1, 'earnhardt_(demo).jpg', ''),
       ('Mondays (feat. Chloe Hotline)', 359, '2021-04-30', NULL, 1, 'Mondays.jpg', 'Allegedy cut from Inbred'),
       ('Crying During Sex', 327, '2021-04-13', 2, 1, 'Crying_During_Sex.jpg', 'Released on Inbred CD

Samples Hello Neighbor OST - Nostalgia'),
       ('crying during sex (demo)', 272, '2020-05-10', NULL, 1, 'crying_demo.jpg',
        'Samples Hello Neighbor OST - Nostalgia'),
       ('Fear No Plague', 146, '2021-01-01', NULL, 1, 'fear_no_plague.jpg', ''),
       ('111320_2.wav', 207, '2020-12-12', NULL, 1, '111320_2.wav.jpg', ''),
       ('half-cocked', 231, '2020-10-24', NULL, 1, 'half-cocked.png', ''),
       ('a portrait of my love on her knees', 125, '2020-01-26', NULL, 1, 'portrait.jpg', ''),
       ('selby wall ♡', 435, '2019-09-25', 3, 1, 'selby_wall.jpg', 'Bonus track on Golden Age'),
       ('the god', 192, '2019-04-24', NULL, 1, 'the_god.jpg', ''),
       ('two children in a motel (demo)', 257, '2023-02-08', NULL, 1, 'Inbred_alt.jpg', 'Allegedy cut from Inbred

Idk why the title says (demo) and I can''t double check if that''s what Hayden put since the great Soundcloud removal. But there is already an older demo and I believe this should''ve been the completed version, so I wonder if I messed up
'),
       ('Homecoming', 349, '2023-03-04', NULL, 1, 'homecoming.jpg', 'ORIGINAL SNIPPET FROM OCT 2022

might be on B-sides'),
       ('من النهر', 570, '2024-02-14', NULL, 1, 'Palestine.jpg', '"من النهر إلى البحر

are you watching
there is nowhere left to go
would i matter if i looked like someone you know
all your money and good deeds
will not return my blood to me
from the river to the sea
please do not forget me"'),
       ('crying during sex (edith underground remix)', 77, '2022-05-03', NULL, 4, 'crying_remix.jpg', ''),
       ('78fahrenheit (demo)', 227, '2022-05-03', NULL, 4, '78fahrenheit.jpg', 'Allegedy cut from Inbred (also she has said she likes to keep her house that temp so that''s why it''s named that\)

samples push by fog lake
'),
       ('new mexico dreaming (co-prod. edith underground)', 234, '2021-12-31', NULL, 4, 'new_mexico.jpg',
        'According to Tumblr it is from the miss anhedonia days'),
       ('romeo''s daddy (demo)', 79, '2022-06-27', NULL, 4, 'romeo''s_daddy_alt.jpg', 'THERE IS EXTENDED VERSION TOO'),
       ('rangerover (porches cover)', 178, '2023-02-08', NULL, 4, 'rangerover.jpg', ''),
       ('matriach1', 674, '2022-08-10', NULL, 5, 'matriach1.jpg',
        'Noticed on 2/11/24 that it''s not on ashemdaiii''s Soundcloud anymore'),
       ('000', 392, '2023-06-20', NULL, 5, '000.jpg', 'Was called v_t2'),
       ('001', 244, '2023-08-08', NULL, 5, '001.jpg', ''),
       ('002', 298, '2023-08-09', NULL, 5, '002.jpg',
        '"sample: caught in time, so far away - you''ll never get to heaven"'),
       ('003', 1865, '2023-08-15', NULL, 5, '003.jpg', '"41.7004
73.9210

sample: resident evil: dead aim ost - haven in the rain"'),
       ('004', 290, '2023-08-15', NULL, 5, '004.jpg', ''),
       ('005', 269, '2023-11-22', NULL, 5, '005.jpg', '"sample: ocarina of time - title theme (sega genesis remix"'),
       ('006', 466, '2023-12-20', NULL, 5, '006.jpg', ''),
       ('007', 188, '2024-01-10', NULL, 5, '007.jpg', ''),
       ('008', 154, '2024-02-11', NULL, 5, '008.jpg', '"audio sampled:

holy ghost people (dir. peter adair, 1967)
"sewage canal" - tomonori tanaka, garage bad dream adventure soundtrack
"the ego clinic" - tomonori tanaka, garage bad dream adventure soundtrack"'),
       ('009', 83, '2024-03-09', NULL, 5, '009.jpg', '"little demo for the next project maybe"'),
       ('come up', 247, '2023-12-06', NULL, 6, 'come_up.jpg', ''),
       ('kennedy drive (demo)', 142, '2021', NULL, 4, 'kennedy_drive.jpg', 'Allegedy from 2021

From Miss Anhedonia era'),
       ('Tongue', 351, '2021', NULL, 4, 'tongue.jpg', 'Allegedly from 2021, and the sample is from the movie "Plain Dirty"

From Miss Anhedonia era'),
       ('Tube', 144, '2021', NULL, 4, 'tube.jpg', 'Allegedly from 2021, and samples Hide by FKA twigs

From Miss Anhedonia era'),
       ('A long, unfortunate while (demo)', 331, '2021-04-14', NULL, 1, 'long_unfortunate_while.jpg',
        'tumblr - Allegedly cut from Inbred'),
       ('truckers chapel (demo)', 102, '2021-02-04', NULL, 1, 'trucker''s_chapel.jpg', 'Allegedly cut from Inbred

She posted it with the caption: "reject from the ep, couldn’t figure out what else to do with it but i kinda liked this part lol."'),
       ('waco, texas (demo)', 372, '2021-03-31', NULL, 1, 'waco_texas.jpg',
        '20 minutes & on b sides tumblr (have TWO VERSIONS)'),
       ('Age of Delilah (Demo)', 255, '2021-04-23', 2, 1, 'Inbred.jpg', 'Released on Inbred CD

"This song is for my sister, Delilah. It’s an ode to growing up."'),
       ('Hunny (Maddy Ellwanger Cover)', 222, NULL, NULL, NULL, '', ''),
       ('great wide nowhere', 207, '2020', NULL, 1, 'great_wide_nowhere.jpg', 'Fom hisethecain era (Tumblr url). Genius allegedly has exact date (8/19/20)

She posted it with the caption: "i want this year to be over so bad"'),
       ('bambi', 122, '2023-01-12', NULL, 1, 'bambi.jpg', 'posted on tumblr'),
       ('perry', 105, '2018-09-03', NULL, 2, 'perry.jpg', 'Perry, Florida is Hayden''s hometown

Allegedly from September 3, 2018 according to Genius'),
       ('ethel', 102, '2018', NULL, 2, 'ethel.jpg', 'Listened once according to last.fm, never found again for a full year till 3/16/24 (hard to Google cuz it''s her name) and turns out it was in a Google Drive link shared on Lanaboards that I already had bookmarked from idk when

Metadata of dropboxed file says 2018?????? But I have no idea cuz I can''t find record of the song'),
       ('Poacher''s Pride', 138, '2018-06-20', NULL, 2, 'Poacher''s_Pride.jpg', ''),
       ('princess ketamine', 100, '2020-06-15', NULL, 1, 'princess_ketamine.jpg', ''),
       ('princess ketamine (demo 2)', 112, '2020', NULL, 1, 'princess_ketamine_2', ''),
       ('Child of Cain', 191, '2019', 3, 1, 'child_of_cain_White_Silas.png', 'Bonus track on Golden Age

Found image that says WHITE SILAS
'),
       ('gold cross (demo)', 246, '2020-05-03', NULL, 1, 'gold_cross.jpg', ''),
       ('Independence Day (prod. Yah Wav)', 174, '2019-09-29', NULL, NULL, '',
        'Tracker from Lanaboards says "September 29, 2019" ??'),
       ('Your Jacket', 247, '2020-02-17', NULL, 1, '',
        'Tracker from Lanaboards says Feb 17, 2020, and "First appeared online via YouTube, it was posted by a friend of Hayden, Malcolm MacMaster."'),
       ('rabbit hole', 63, '2018', NULL, 2, 'rabbit_hole.jpg',
        'Got it from file titled "Rabbit Hole (Antebellum demo)"'),
       ('Cremorium', 58, '2018-11-14', NULL, 2, 'Cremorium.png', ''),
       ('Apostate', 157, '2018', NULL, 2, 'apostate.jpg', ''),
       ('No Rest For The Wicked', 188, '2018', NULL, 2, 'no_rest.jpg', ''),
       ('Cedar', 99, '2018-08-30', NULL, 2, 'cedar.jpg', 'Sounds similar to antlers

Tracker from Lanaboards says Aug 30, 2018, and: "An early demo of Ethel’s song, “Antlers,” Cedar tells a tale of isolated children who are neglected by their absent father and ill mother."'),
       ('Embarrassing (Ellis Cover)', 171, '2020', NULL, 1, 'embarassing.jpg',
        'Embarrassing didn''t come out until 2020, so she couldn''t have covered it until then (unless she is friends with her & heard it early)'),
       ('xxxxxxxxxx', 112, '2022-09-24', NULL, 1, 'xxxxxxxxxx.jpg', 'Commonly referred to as "concrete" According to tumblr - Sept 24 2022 or earlier

Samples Sprawl by Bedlocked'),
       ('my heart will go on (cover)', 75, '2020', NULL, 1, '',
        'Audio ripped from a vid of her singing in her Indiana church in a robe'),
       ('American Teenager (B sides)', 102, '2022', NULL, 1, 'American_Teenager_B_sides.jpg',
        'I believe this may be a mashup of MULTIPLE demos'),
       ('Tammy Faye (Nicole Dollanganger Cover)', 225, '2020', NULL, 1, 'waco_texas.jpg',
        'Gotta be old as bones cuz from reading Lanaboards it seems at least from 2020 (if not earlier) and was lost media for a long time'),
       ('Scarlet Letter', 104, '2020-11-08', NULL, 1, '',
        'Posted with the captions "Are you coming to the chapel?" on Twitter and "Welcome to the chapel ♡" on Instagram on 11/8/2020 by Daisy Cain (@missdaisycain) with a video seemingly filmed in Hayden''s Indiana church. Can''t find official name, but some call it "Are you coming to the chapel," presumably due to the Twitter video caption. Also seen called Scarlet Letter, which seems more fitting'),
       ('Wake Up Call (ft. Aelyx)', 315, '2020', NULL, NULL, 'wake_up_call.jpg', 'Someone said "Wake up call studio has not leaked and I''m pretty sure that''s a rip from IG live; it''s also golden age era I believe"

Allegedy cut from Inbred Cover art, date & description on Genius (CAN''T FIND ON GENIUS AS OF APRIL 2024, SO EITHER GOT TAKEN DOWN OR I MESSED UP THIS NOTE??)'),
       ('White Van', 308, '2019-06-22', NULL, 2, 'White_Van.jpg', '"Never mind i decided i hated the song"'),
       ('A Good Day For A Wedding', NULL, '2023', NULL, 1, '', '"Registered on BMI / ASCAP sometime around November 2023,
nothing is known about it other than the title."'),
       ('For Sure', NULL, NULL, NULL, NULL, '', ''),
       ('Powerline Valley (corrupted version)', 473, '2021-07-15', NULL, 1, 'powerline_corrupted.jpg',
        'Sounds like it was from a livestream or something? Only can really find this one soundcloud'),
       ('Givenchy FW22 Score', 129, '2022', NULL, 1, 'Givenchy_2.png',
        'Allegedly is a score Hayden made for Givenchy fashion week 2022. Got from "White Silas" alleged Soundcloud (prolly just a fan that took over the account).'),
       ('Sunday Morning - Demo', 257, '2019-12-01', 3, 1, 'Golden_Age.jpg', ''),
       ('God''s Country (early demo)', 259, '2020-09-25', NULL, 1, 'God''s_country_early_demo.jpg', 'She titled it "untitled", SO NO REAL NAME

Posted with the caption: "early early demos from the EP. probably going 2 sound like a completely different song by the time it’s done lol."'),
       ('crush (acapella)', 207, '2021-11-24', NULL, 1, 'crush_acapella.jpg', ''),
       ('two children in a motel (old demo)', 242, '2020-02-19', NULL, 1, 'two_children_old_demo.jpg', 'She titled it "inbred" when she posted it, but the actual song is two children

Posted with the caption: "love song for ada and jessaby"'),
       ('Michelle Pfeiffer (Solo Version)', 275, '2021-04-23', 2, 1, 'Inbred.jpg',
        'Released on Inbred CD (check date)'),
       ('Unknown Song / Football*', 165, NULL, NULL, 1, 'football.jpg',
        'NO CLUE WHERE IT CAME FROM????? Even people on Lanaboards seemily don''t know the source??????? Could potentially be the first track to actually leak??????'),
       ('there''s something wrong with me (demo)', 217, '2021-11-08', NULL, 1, '',
        'From livestream, probably old cuz she says "young Ethel on the track", longer title is "but he doesn''t know it yet" added as well (date is livestream date)'),
       ('romeo''s daddy (extended version)', 108, '2021-09-22', NULL, 4, 'romeo''s_daddy_alt.jpg', ''),
       ('greet death sample', 142, '2021-09-22', NULL, 1, '', ''),
       ('random Inbred demo', 83, '2021-09-22', NULL, 1, '', ''),
       ('dog days (demo)', NULL, '2021-09-22', NULL, 1, '', ''),
       ('Paris', 216, '2018', NULL, 3, 'Paris.png',
        'File was titled "Atlas (White Silas) - Paris" so unsure which era / alias it''s under. Also have no clue where it came from'),
       ('western nights (demo)', 449, '2018-08-28', NULL, 2, '', 'Youtube'),
       ('i keep the angel', 166, '2024-04-21', NULL, 1, '',
        'Posted with the caption "i keep the angel" with video from Reflecting Skin. Someone asked what song it is and she responded with: "🙂‍↔️"'),
       ('2024 Story Snippet', 24, '2024-04-20', NULL, 1, '',
        'She posted video of this snippet playing in the background with no context out of nowhere'),
       ('fuck-me eyes (snippet 1)', 37, '2020', NULL, 1, '', 'One snippet was supposedly posted on TikTok Nov 2020'),
       ('fuck-me eyes (snippet 2)', 20, '2020', NULL, 1, '', 'One snippet was supposedly posted on TikTok Nov 2020'),
       ('How Come', NULL, NULL, NULL, 1, '', 'Allegedy cut from Inbred'),
       ('Have You Told Your Wife? (snippet)', 49, '2021', NULL, 1, '', 'June 1 2021 or earlier?'),
       ('Down South', 53, '2021', NULL, 1, 'down_south.jpg', '"it was just a fun little demo i made with a friend of mine in LA while i was there, we might finish it at some point but it’s not for the record"

Supposedly from 2021?'),
       ('Louisiana', 46, '2022-08-10', NULL, 1, 'Louisiana.jpg', 'Allegedly posted to her story August 2022, & this video is screen recording of her story with lyrics. Unsure what the song is actually called

She has since stated: "i hate that song, im embarrassed i even posted a snippet"'),
       ('Stoker', 43, '2022', NULL, 1, '',
        'Allegedly posted to her story August 2022, & this video is screen recording of her story with lyrics. Unsure what the song is actually called'),
       ('Rabid (Nicole Dollanganger Cover)', 31, '2018-05-15', NULL, 2, '',
        'papermassacred insta (she said full thing was on Soundcloud, but that Soundcloud didn''t exist by the time I saw it)'),
       ('maïa', 60, '2018-02-25', NULL, 2, '', 'I titled it maïa_Snippet.mp3 in my files

(Ripped directly from papermassacred Insta in early 2023, put into folder on laptop, then FORGOT about it cuz I''m dumb and now the whole account is taken down cuz it''s spring 2024, so I don''t have more info)

Allegedly from Feb 25 2018 according to Lanaboards'),
       ('Unknown Demo Snippet*', 36, '2018', NULL, 2, '', 'I titled it Unknown_Demo_Snippet.mp3 in my files

(Ripped directly from papermassacred Insta in early 2023, put into folder on laptop, then FORGOT about it cuz I''m dumb and now the whole account is taken down cuz it''s spring 2024, so I don''t have more info)
(Ripped directly from papermassacred Insta in early 2023, put into folder on laptop, then FORGOT about it cuz I''m dumb and now the whole account is taken down cuz it''s spring 2024, so I don''t have more info)

Found info on Lanaboards - could be any one of these: I Am Gravid With An Angel snippet - April 23 2018
Archangels snippet - March 30 2018
New Demo snippet - April 23 2018
'),
       ('He''s Closing in on Me', 30, '2018-05-13', NULL, 2, '', 'I titled it Unknown_Snippet.mp3 in my files

(Ripped directly from papermassacred Insta in early 2023, put into folder on laptop, then FORGOT about it cuz I''m dumb and now the whole account is taken down cuz it''s spring 2024, so I don''t have more info)
(Ripped directly from papermassacred Insta in early 2023, put into folder on laptop, then FORGOT about it cuz I''m dumb and now the whole account is taken down cuz it''s spring 2024, so I don''t have more info)

Allegedly from May 13 2018 according to Lanaboards'),
       ('I Am Gravid With An Angel', NULL, '2018-04-23', NULL, 2, '', 'According to Lanaboards, allegedly from Instagram. The "Unkown Demo Snippet" I have may be this one or the other next to this one that I don''t have (so I prolly have 1/3 of these missing ones)

Allegedly from April 23 2018 according to Lanaboards'),
       ('Archangels snippet', NULL, '2018-03-30', NULL, 2, '', 'According to Lanaboards, allegedly from Instagram. The "Unkown Demo Snippet" I have may be this one or the other next to this one that I don''t have (so I prolly have 1/3 of these missing ones)

Allegedly from March 30 2018 according to Lanaboards'),
       ('New Demo snippet', NULL, '2018-04-23', NULL, 2, '', 'According to Lanaboards, allegedly from Instagram. The "Unkown Demo Snippet" I have may be this one or the other next to this one that I don''t have (so I prolly have 1/3 of these missing ones

Allegedly from April 23 2018 according to Lanaboards'),
       ('drain me', 213, '2019-02-14', NULL, 8, 'drain_me.jpg',
        'On Spotify it''s under White Silas, but on Soundcloud it says ft. Ethel??'),
       ('tentillforever', 200, '2021-05-28', NULL, 16, 'tentillforever.jpg',
        '"first song w michael, v excited to make more w him :) i feel like i haven’t recorded smth acoustic in almost 2 years…. didn’t realize how much i missed it </3"'),
       ('georgia cotton', 227, '2018-12-30', NULL, 14, 'georgia_cotton.png', '"a good friend of mine and i recorded a little love story ditty in her attic 💖"

kelsey gibson - banjo, vocals
hayden anhedönia - banjo, vocals, production'),
       ('Black And Blue (Demo)', 231, '2020-05-01', NULL, 12, 'kabel_black_blue.jpg', 'Was on spotify'),
       ('one winged angel', 223, '2020-01-01', 12, 9, 'material_fantasies.jpg', ''),
       ('Sell Your Soul', 183, '2019-06-21', 13, 15, 'sell.jpg', ''),
       ('away from u', 146, '2018-12-26', NULL, 8, 'away_from_u.jpg', ''),
       ('snuff film', 395, '2021-02-07', NULL, 13, 'snuff_film.jpg', 'Downloaded from bandcamp - They said it''s official released on the ep heart stains (reproduction of older & shorter track I think?), also said: re-production and added vocals : Ms. Ethel Cain

SAYS ON IMAGE "josie lotet x ethel cain"')