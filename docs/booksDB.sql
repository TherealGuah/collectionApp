/*
    Base DB schema
 */

DROP TABLE IF EXISTS `authors`;

CREATE TABLE `authors` (
    `id` int(11) NOT NULL AUTO_INCREMENT,
    `name` varchar(255) NOT NULL,
    `about` varchar(1000) DEFAULT NULL,
    PRIMARY KEY (`id`),
    UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

DROP TABLE IF EXISTS `categories`;

CREATE TABLE `categories` (
    `id` int(11) NOT NULL AUTO_INCREMENT,
    `category` varchar(255) NOT NULL,
    PRIMARY KEY (`id`),
     UNIQUE KEY `category` (`category`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

DROP TABLE IF EXISTS `books`;

CREATE TABLE `books` (
    `id` int(11) NOT NULL AUTO_INCREMENT,
    `title` varchar(255) NOT NULL,
    `description` varchar(500) DEFAULT NULL,
    `image_link` varchar(500) DEFAULT NULL,
    `author_id` int(11) NOT NULL,
    `category_id` int(11) NOT NULL,
    PRIMARY KEY (`id`),
    KEY `author_id` (`author_id`),
    CONSTRAINT `books_ibfk_1` FOREIGN KEY (`author_id`) REFERENCES `authors` (`id`),
    KEY `category_id` (`category_id`),
    CONSTRAINT `books_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


 --  authors Table Insertions

INSERT INTO `authors` (`id`, `name`, `about`)
VALUES (1, 'Guy Haley', 'Guy Haley (born June 6, 1973) is an English writer of speculative fiction, predominantly known for his Richards & Klein Investigations series, as well as numerous fiction contributions to various Warhammer 40,000 series.');
 --
INSERT INTO `authors` (`id`, `name`, `about`)
VALUES (2, 'Dan Abnett', 'Dan Abnett (born 12 October 1965) is an English comic book writer and novelist. He has been a frequent collaborator with fellow writer Andy Lanning, and is known for his work on books for both Marvel Comics, and their UK imprint, Marvel UK, since the 1990s, and also 2000 AD. He has also contributed to DC Comics titles, and his Warhammer Fantasy and Warhammer 40,000 novels and graphic novels for Games Workshops Black Library now run to several dozen titles and have sold over two million copies.');
--
INSERT INTO `authors` (`id`, `name`, `about`)
VALUES (3, 'Darius Hinks', 'Darius Hinks is the author of the Warhammer 40,000 novel Blackstone Fortress and three novels in the Mephiston series, Mephiston: Blood of Sanguinius, Mephiston: Revenant Crusade and Mephiston: City of Light. He also wrote the novella Sanctus. For Warhammer, he wrote Warrior Priest, which won the David Gemmell Morningstar Award for best newcomer, as well as the Orion trilogy, Sigvald and several novellas.');
--
INSERT INTO `authors` (`id`, `name`, `about`)
VALUES (4, 'James Swallow', 'James Swallow is a British author. A BAFTA nominee and a New York Times, Sunday Times and Amazon #1 best-seller, he is the author of several original books and tie-in novels, as well as short fiction, numerous audio dramas and video games. His writing includes the Marc Dane series of action thrillers, the Sundowners series of Western fiction steampunk novels, and fiction from the worlds of Star Trek, Warhammer 40,000, Doctor Who, 24, Stargate, 2000 AD and many more. ');
--
INSERT INTO `authors` (`id`, `name`, `about`)
VALUES (5, 'Aaron Dembsky-Bowden', 'Aaron Dembski-Bowden is the author of the Horus Heresy novels The Master of Mankind, Betrayer and The First Heretic, as well as the novella Aurelian and the audio drama Butcher’s Nails, for the same series. He has also written the popular Night Lords series, the Space Marine Battles book Helsreach, the novels The Talon of Horus and Black Legion, the Grey Knights novel The Emperor’s Gift and numerous short stories.');
--
INSERT INTO `authors` (`id`, `name`, `about`)
VALUES (6, 'Graham McNeill', 'Graham McNeill is a British novelist and video game writer. He is best known for his Warhammer Fantasy and Warhammer 40,000 novels, and his previous role as games designer for Games Workshop. He is currently working as a Senior Writer and Junior at Riot Games.');
--
INSERT INTO `authors` (`id`, `name`, `about`)
VALUES (7, 'Marcus Aurelius', 'Marcus Aurelius Antoninus (26 April 121 – 17 March 180) was Roman emperor from 161 to 180 and a Stoic philosopher. He was the last of the rulers known as the Five Good Emperors (a term coined some 13 centuries later by Niccolò Machiavelli), and the last emperor of the Pax Romana, an age of relative peace and stability for the Roman Empire lasting from 27 BC to 180 AD. He served as Roman consul in 140, 145, and 161.');
--
INSERT INTO `authors` (`id`, `name`, `about`)
VALUES (8, 'Shusaku Endo', 'Shusaku Endo (Endo Shusaku, March 27, 1923 – September 29, 1996) was a Japanese author who wrote from the rare perspective of a Japanese Catholic. Internationally, he is known for his 1966 historical fiction novel Silence, which was adapted into a 2016 film of the same name by director Martin Scorsese. He was the laureate of several prestigious literary accolades, including the Akutagawa Prize and the Order of Culture, and was inducted into the Roman Catholic Order of St. Sylvester by Pope Paul VI.');
--
INSERT INTO `authors` (`id`, `name`, `about`)
VALUES (9, 'George Orwell', 'Eric Arthur Blair (25 June 1903 – 21 January 1950), better known by his pen name George Orwell, was an English novelist, essayist, journalist, and critic. His work is characterised by lucid prose, social criticism, opposition to totalitarianism, and support of democratic socialism.');
--
INSERT INTO `authors` (`id`, `name`, `about`)
VALUES (10, 'Plato', 'Plato (428/427 or 424/423 – 348/347 BC) was a Greek philosopher born in Athens during the Classical period in Ancient Greece. He founded the Platonist school of thought and the Academy, the first institution of higher learning on the European continent. Along with his teacher, Socrates, and his student, Aristotle, Plato is a central figure in the history of Ancient Greek philosophy and the Western and Middle Eastern philosophies descended from it. He has also shaped religion and spirituality.');

 --  categories Table Insertions

INSERT INTO `categories` (`id`, `category`)
VALUES (1, 'Science Fiction');
  --
INSERT INTO `categories` (`id`, `category`)
VALUES (2, 'Philosophy');
--
INSERT INTO `categories` (`id`, `category`)
VALUES (3, 'Politics');
--
INSERT INTO `categories` (`id`, `category`)
VALUES (4, 'Warhammer 40k');
--
INSERT INTO `categories` (`id`, `category`)
VALUES (5, 'Biography');
 --
INSERT INTO `categories` (`id`, `category`)
VALUES (6, 'Social Criticism');
 --
INSERT INTO `categories` (`id`, `category`)
VALUES (7, 'Fantasy');
--
INSERT INTO `categories` (`id`, `category`)
VALUES (8, 'Crime');

 -- books Table Insertions

INSERT INTO `books` (`id`, `title`, `description`, `image_link`, `author_id`, `category_id`)
VALUES (1, 'The devastation of Baal',
        'Baal is besieged! The alien horror of Hive Fleet Leviathan has reached the Blood Angels home world, and their entire existence is under threat. As the sons of Sanguinius gather, the battle for the fate of their bloodline begins...',
        'https://www.games-workshop.com/resources/catalog/product/920x950/60040181837_DevastationofBaalLtdEd01.jpg',
        1, 1);
--
INSERT INTO `books` (`id`, `title`, `description`, `image_link`, `author_id`, `category_id`)
VALUES (2, 'Dark Imperium',
        'The first phase of the Indomitus Crusade is over, and the conquering primarch, Roboute Guilliman, sets his sights on home. His traitorous brother, Mortarion, marches on Ultramar, and only the primarch of the Ultramarines - with his armies of Primaris Space Marines - can hope to thwart the Death Guards schemes.',
        'https://www.games-workshop.com/resources/catalog/product/920x950/60100181794_DarkImperiumReduxENGBPB.jpg',
        1, 1);
--
INSERT INTO `books` (`id`, `title`, `description`, `image_link`, `author_id`, `category_id`)
VALUES (3, 'Horus Rising',
        'After thousands of years of expansion and conquest, the human Imperium is at its height. His dream for humanity accomplished, the Emperor hands over the reins of power to his Warmaster, Horus, and heads back to Terra.',
        'https://www.games-workshop.com/resources/catalog/product/920x950/60100181295_HorusRisingENGHB.jpg',
        1, 1);
--
INSERT INTO `books` (`id`, `title`, `description`, `image_link`, `author_id`, `category_id`)
VALUES (4, 'Eisenhorn  - Xenos',
        'Inquisitor Eisenhorn faces a vast interstellar cabal and the dark power of daemons, all racing to recover an arcane text of abominable power - an ancient tome known as the Necroteuch.',
        'https://www.games-workshop.com/resources/catalog/product/920x950/60040181803_BLEisenhornXenosIllustratedandAnnotated01.jpg',
        2, 8);
--
INSERT INTO `books` (`id`, `title`, `description`, `image_link`, `author_id`, `category_id`)
VALUES (5, 'Eisenhorn - Malleus',
        'A century after his recovery of the alien Necroteuch, Gregor Eisenhorn is one of the Imperial Inquisition''s most celebrated agents. But when a face from his past returns to haunt him, and he is implicated in a great tragedy that devastates the world of Thracian Primaris, Eisenhorn''s universe crumbles around him. The daemon Cherubael is back, and seeks to bring the inquisitor to ruin - either by his death, or by turning him to the service of the Dark Gods.',
        'https://www.blacklibrary.com/Images/Product/DefaultBL/xlarge/BLPROCESSED-Malleus_mp3_cover.jpg',
        2, 8);
--
INSERT INTO `books` (`id`, `title`, `description`, `image_link`, `author_id`, `category_id`)
VALUES (6, 'Eisenhorn - Hereticus',
        'Hunted by his former allies as a radical and enemy of the Imperium, Inquisitor Gregor Eisenhorn must fight to prove that he remains loyal as he tracks down a dangerous heretic whom the Inquisition believes dead, the dread former Inquisitor Quixos. As he grows more desperate for victory, Eisenhorn uses ever darker means to achieve his goals, but how far can he go using the weapons of the enemy until he becomes that very enemy, and no different to the traitor he hunts?',
        'https://www.blacklibrary.com/Images/Product/DefaultBL/xlarge/BLPROCESSED-Hereticus_mp3_cover.jpg',
        2, 8);
--
INSERT INTO `books` (`id`, `title`, `description`, `image_link`, `author_id`, `category_id`)
VALUES (7, 'Mephiston: Revenant Crusade',
        'As the Great Rift tears the galaxy apart, portents and darkness beset Mephiston. At the time when he needs his psychic sight the most, the Chief Librarian''s powers are rendered blind by some inexplicable force. Haunted by the ghosts of the damned, their purpose unclear, Mephiston takes his ship the Blood Oath and the Blood Angels in his charge to the world of Morsus where he believes the source of his psychic blindness is to be found.',
        'https://www.blacklibrary.com/Images/Product/DefaultBL/xlarge/BLPROCESSED-Mephiston-Revenant-Crusade.jpg',
        3, 1);
--
INSERT INTO `books` (`id`, `title`, `description`, `image_link`, `author_id`, `category_id`)
VALUES (8, 'Mephiston: Blood of Sanguinius',
        'The shrine world of Divinatus Prime has become lost to the light of the Astronomican and no ship can piece its veil. Only the Lord of Death himself, Blood Angels Chief Librarian Mephiston, has any hope of discerning the fate of this once pious world. After enacting a powerful blood ritual, Mephiston and an honour guard of his fellow Blood Angels reach the stricken shrine world to find it seized by religious civil war.',
        'https://www.blacklibrary.com/Images/Product/DefaultBL/xlarge/BLPROCESSED-MephistonBloodOfSanguiniusnew.jpg',
        3, 1);
--
INSERT INTO `books` (`id`, `title`, `description`, `image_link`, `author_id`, `category_id`)
VALUES (9, 'Last Flight of the Einsenstein',
        'Having witnessed the terrible massacre on Isstvan III, Death Guard Captain Garro seizes a ship and sets a course for Terra to warn the Emperor of Horus treachery.',
        'https://www.games-workshop.com/resources/catalog/product/920x950/60100181294_TheFlightoftheEisensteinENGHB.jpg',
        4, 1);
--
INSERT INTO `books` (`id`, `title`, `description`, `image_link`, `author_id`, `category_id`)
VALUES (10, 'Nemesis',
        'After the horrors of Istvaan V, Horus declares outright war against the Imperium. In the shadows of the Emperors Palace, powerful figures convene. Their plan is to send a team of assassins to execute the arch-traitor Horus and end the war for the galaxy of mankind before its even begun. But what they cannot know is that another assassin is abroad already, with his sights firmly set on killing the Emperor.',
        'https://www.blacklibrary.com/Images/Product/DefaultBL/xlarge/audio-nemesis-unabridged.jpg',
        4, 1);
--
INSERT INTO `books` (`id`, `title`, `description`, `image_link`, `author_id`, `category_id`)
VALUES (11, 'The First Heretic',
        'Chastised by the Emperor, the Word Bearers set out on their own path - one that will eventually lead them to damnation and heresy and plunge the galaxy into war.',
        'https://www.games-workshop.com/resources/catalog/product/920x950/60100181133_BLTheFirstHereticNEW01.jpg',
        5, 1);
--
INSERT INTO `books` (`id`, `title`, `description`, `image_link`, `author_id`, `category_id`)
VALUES (12, 'Fullgrim',
        'As the Great Crusade draws to a close, primarch Fulgrim and the Emperor''s Children continue their pursuit of perfection. But pride comes before a fall, and this most proud of Legions is about to fall a very, very long way...',
        'https://www.games-workshop.com/resources/catalog/product/920x950/60100181290_FulgrimENGHB.jpg',
        6, 1);
--
INSERT INTO `books` (`id`, `title`, `description`, `image_link`, `author_id`, `category_id`)
VALUES (13, 'False Gods',
        'The Great Crusade that has taken humanity into the stars continues. The Emperor of Mankind has handed the reins of command to his favoured son, the Warmaster Horus. Yet all is not well in the armies of the Imperium...',
        'https://www.games-workshop.com/resources/catalog/product/920x950/60100181296_FalseGodsENGHB.jpg',
        6, 1);
--
INSERT INTO `books` (`id`, `title`, `description`, `image_link`, `author_id`, `category_id`)
VALUES (14, 'Meditations',
        'Meditations is a series of personal writings by Marcus Aurelius, Roman Emperor from AD 161 to 180, recording his private notes to himself and ideas on Stoic philosophy. Marcus Aurelius wrote the 12 books of the Meditations in Koine Greek as a source for his own guidance and self-improvement.',
        'https://images-na.ssl-images-amazon.com/images/I/917TGSXH7RL.jpg',
        7, 5);
--
INSERT INTO `books` (`id`, `title`, `description`, `image_link`, `author_id`, `category_id`)
VALUES (15, 'Silence',
        'Silence is a 1966 novel of theological and historical fiction by Japanese author Shusaku Endo, published in English by Peter Owen Publishers. It is the story of a Jesuit missionary sent to 17th century Japan, who endures persecution in the time of Kakure Kirishitan that followed the defeat of the Shimabara Rebellion.',
        'https://pictures.abebooks.com/isbn/9781447299851-uk.jpg',
        8, 7);
--
INSERT INTO `books` (`id`, `title`, `description`, `image_link`, `author_id`, `category_id`)
VALUES (16, '1984',
        'Nineteen Eighty-Four is a dystopian social science fiction novel and cautionary tale written by the English writer George Orwell. It was published on 8 June 1949 by Secker & Warburg as Orwells ninth and final book completed in his lifetime. ',
        'https://images-na.ssl-images-amazon.com/images/I/51sdWhtHOwL.jpg',
        9, 3);
--
INSERT INTO `books` (`id`, `title`, `description`, `image_link`, `author_id`, `category_id`)
VALUES (17, 'Animal Farm',
        'Animal Farm is a beast fable, in the form of satirical allegorical novella, by George Orwell, first published in England on 17 August 1945. It tells the story of a group of farm animals who rebel against their human farmer, hoping to create a society where the animals can be equal, free, and happy.',
        'https://images-na.ssl-images-amazon.com/images/I/81aeUo7Wo-L.jpg',
        9, 6);
--
INSERT INTO `books` (`id`, `title`, `description`, `image_link`, `author_id`, `category_id`)
VALUES (18, 'The Republic',
        'The Republic is a Socratic dialogue, authored by Plato around 375 BC, concerning justice, the order and character of the just city-state, and the just man. It is Platos best-known work, and one of the worlds most influential works of philosophy and political theory, both intellectually and historically.',
        'https://images-na.ssl-images-amazon.com/images/I/A1DDl21Z4cL.jpg',
        10, 2);
