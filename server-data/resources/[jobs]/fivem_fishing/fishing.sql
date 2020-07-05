CREATE TABLE `strandsatt_fishing` (
	`fish` varchar(30) NOT NULL,
	`data` longtext,
	PRIMARY KEY (`fish`)
);

INSERT INTO `strandsatt_fishing` (`fish`) VALUES
    ('salmon'),
    ('trout'),
    ('char'),
    ('pike'),
    ('goldfish'),
    ('whitefish'),
    ('roach'),
    ('mackerel'),
    ('lobster'), 
    ('crawfish')
;

INSERT INTO `items` (name, label, `limit`) VALUES
	('fishingrod','Fiskespö', 5),
	('bait', 'Bete', 25),
    ('fishingpermit','Fiskekort', 5),
    ('salmon', 'Lax', 20),
    ('trout', 'Öring', 20),
    ('char', 'Rödling', 20),
    ('pike', 'Gädda', 20),
    ('goldfish', 'Guldfisk', 20),
    ('whitefish', 'Sik', 20),
    ('roach', 'Mört', 20),
    ('mackerel', 'Makrill', 20),
    ('lobster', 'Hummer', 20), 
    ('crawfish','Kräfta', 20)
;