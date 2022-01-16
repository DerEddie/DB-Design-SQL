-- -- Values without foreign keys

INSERT INTO ernaehrungskategorie(name, beschreibung) values 
('Vegan','Keine tierischen Produkte'),
('Vegetarisch','Kein Fleisch'),
('Pesecetarisch','Nur Fisch'),
('Frutarisch','Nur was die Pflanzen hergeben'),
('Low Carb','Wenig Fett'),
('High Protein','Viel Eiweiß');

INSERT INTO mengeneinheit(name) VALUES 
('Kilogramm'),
('Liter'),
('Stück');

-- BEGIN kunde with adresse
INSERT INTO adresse (strasse, hausnr, plz, stadt) VALUES 
('Eppendorfer Landstrasse', '104', '20249','Hamburg');
INSERT INTO kunde (vorname, name, geburtsdatum, email, telefon, adresse_id) VALUES
('Kira','Wellensteyn','1990-05-05', 'k.wellensteyn@yahoo.de', '040/443322', last_insert_id());

INSERT INTO adresse (strasse, hausnr, plz, stadt) VALUES 
('Ohmstraße', '23', '22765','Hamburg');
INSERT INTO kunde (vorname, name, geburtsdatum, email, telefon, adresse_id) VALUES
('Dorothea','Foede','2000-03-24', 'd.foede@web.de', '040/543822', last_insert_id());

INSERT INTO adresse (strasse, hausnr, plz, stadt) VALUES 
('Bilser Berg', '6', '20459','Hamburg');
INSERT INTO kunde (vorname, name, geburtsdatum, email, telefon, adresse_id) VALUES
('Sigrid','Leberer','1989-09-21', 'sigrid@leberer.de', '0175/1234588', last_insert_id());

INSERT INTO adresse (strasse, hausnr, plz, stadt) VALUES 
('Alter Teichweg', '95', '22049','Hamburg');
INSERT INTO kunde (vorname, name, geburtsdatum, email, telefon, adresse_id) VALUES
('Hanna','Soerensen','1974-04-03', 'h.soerensen@yahoo.de', '040/634578', last_insert_id());

INSERT INTO adresse (strasse, hausnr, plz, stadt) VALUES 
('Stübels', '10', '22935','Barsbüttel');
INSERT INTO kunde (vorname, name, geburtsdatum, email, telefon, adresse_id) VALUES
('Marten','Schnitter','1964-04-17', 'schni_mart@gmail.com', '0176/447587', last_insert_id());

INSERT INTO adresse (strasse, hausnr, plz, stadt) VALUES 
('Grotelertwiete', '4a', '21075','Hamburg');
INSERT INTO kunde (vorname, name, geburtsdatum, email, telefon, adresse_id) VALUES
('Belinda','Maurer','1978-09-09', 'belinda1978@yahoo.de', '040/332189', last_insert_id());

INSERT INTO adresse (strasse, hausnr, plz, stadt) VALUES 
('Küstersweg', '3', '21079','Hamburg');
INSERT INTO kunde (vorname, name, geburtsdatum, email, telefon, adresse_id) VALUES
('Armin','Gessert','1978-01-29', 'armin@gessert.de', '040/67890', last_insert_id());

INSERT INTO adresse (strasse, hausnr, plz, stadt) VALUES 
('Neugrabener Bahnhofstraße', '30', '21149','Hamburg');
INSERT INTO kunde (vorname, name, geburtsdatum, email, telefon, adresse_id) VALUES
('Jean-Marc','Haessig','1982-08-30', 'jm@haessig.de', '0178-67013390', last_insert_id());

INSERT INTO adresse (strasse, hausnr, plz, stadt) VALUES
('Elbchaussee', '228', '22605','Hamburg');
INSERT INTO kunde (vorname, name, geburtsdatum, email, telefon, adresse_id) VALUES
('Eric','Urocki','1999-12-04', 'urocki@outlook.de', '0152-96701390', last_insert_id());
-- END kunde

-- BEGIN lieferant
INSERT INTO adresse (strasse, hausnr, plz, stadt) VALUES
('Dorfstraße', '74', '24354','Weseby');
INSERT INTO lieferant (name, email, telefon, adresse_id) VALUES
('Bio-Hof Müller', 'mueller@biohof.de', '04354-9080', last_insert_id());

INSERT INTO adresse (strasse, hausnr, plz, stadt) VALUES
('Westerjork 74', '76', '21635','Jork');
INSERT INTO lieferant (name, email, telefon, adresse_id) VALUES
('Obst-Hof Altes Land', 'info@biohof-altesland.de', '04162-4523', last_insert_id());

INSERT INTO adresse (strasse, hausnr, plz, stadt) VALUES
('Molkereiwegkundekunde', '13', '19217','Dechow');
INSERT INTO lieferant (name, email, telefon, adresse_id) VALUES
('Molkerei Henning', 'info@molkerei-henning.de', '038873-8976', last_insert_id());
-- END lieferant


-- BEGIN zutat
INSERT INTO zutat
    SET name = 'Bandnudeln',
        bestand = 20,
        nettopreis = 0.99,
        kohlenhydrate = 68.0,
        kalorien = 364,
        fett = 4.0,
        proteine = 0.0,
        zucker = 0.0,
        gesaettigte_fettsaeuren = 0.0,
        ballaststoffe = 0.0,
        natrium = 0.0,

        mengeneinheit_id = (
            SELECT id
                FROM mengeneinheit
                WHERE name = 'Kilogramm');
INSERT INTO zutat
    SET name = 'Zwiebel',
        bestand = 150,
        nettopreis = 0.49,
        kohlenhydrate = 9.0,
        kalorien = 40,
        fett = 0.1,
        proteine = 1.1,
        zucker = 4.2,
        gesaettigte_fettsaeuren = 0.0,
        ballaststoffe = 1.7,
        natrium = 4.0,

        mengeneinheit_id = (
            SELECT id
                FROM mengeneinheit
                WHERE name = 'Kilogramm');
INSERT INTO zutat
    SET name = 'Rapsöl',
        bestand = 50,
        nettopreis = 2.0,
        kohlenhydrate = 0.0,
        kalorien = 884,
        fett = 100.0,
        proteine = 0.0,
        zucker = 0.0,
        gesaettigte_fettsaeuren = 8.0,
        ballaststoffe = 0.0,
        natrium = 0.0,

        mengeneinheit_id = (
            SELECT id
                FROM mengeneinheit
                WHERE name = 'Liter');
INSERT INTO zutat
    SET name = 'Rinderhackfleisch',
        bestand = 20,
        nettopreis = 6.0,
        kohlenhydrate = 0.0,
        kalorien = 332,
        fett = 30.0,
        proteine = 14.0,
        zucker = 0.0,
        gesaettigte_fettsaeuren = 11.0,
        ballaststoffe = 0.0,
        natrium = 67.0,

        mengeneinheit_id = (
            SELECT id
                FROM mengeneinheit
                WHERE name = 'Kilogramm');
INSERT INTO zutat
    SET name = 'Rotwein',
        bestand = 30,
        nettopreis = 6.5,
        kohlenhydrate = 2.61,
        kalorien = 85,
        fett = 0.0,
        proteine = 0.0,
        zucker = 0.0,
        gesaettigte_fettsaeuren = 0.0,
        ballaststoffe = 0.0,
        natrium = 0.0,

        mengeneinheit_id = (
            SELECT id
                FROM mengeneinheit
                WHERE name = 'Liter');
INSERT INTO zutat
    SET name = 'Tomatenmark',
        bestand = 40,
        nettopreis = 0.69,
        kohlenhydrate = 19,
        kalorien = 82,
        fett = 0.5,
        proteine = 4.3,
        zucker = 12,
        gesaettigte_fettsaeuren = 0.1,
        ballaststoffe = 4.1,
        natrium = 59,

        mengeneinheit_id = (
            SELECT id
                FROM mengeneinheit
                WHERE name = 'Kilogramm');
INSERT INTO zutat
    SET name = 'Thymian',
        bestand = 20,
        nettopreis = 4.99,
        kohlenhydrate = 7.35,
        kalorien = 52,
        fett = 1.2,
        proteine = 0.0,
        zucker = 0.0,
        gesaettigte_fettsaeuren = 0.0,
        ballaststoffe = 0.0,
        natrium = 0.0,

        mengeneinheit_id = (
            SELECT id
                FROM mengeneinheit
                WHERE name = 'Kilogramm');
INSERT INTO zutat
    SET name = 'Cayennepfeffer',
        bestand = 20,
        nettopreis = 5.99,
        kohlenhydrate = 57.0,
        kalorien = 318,
        fett = 17,
        proteine = 12,
        zucker = 0.0,
        gesaettigte_fettsaeuren = 3.3,
        ballaststoffe = 27,
        natrium = 30,

        mengeneinheit_id = (
            SELECT id
                FROM mengeneinheit
                WHERE name = 'Kilogramm');
INSERT INTO zutat
    SET name = 'Salz',
        bestand = 20,
        nettopreis = 0.89,
        kohlenhydrate = 0.0,
        kalorien = 0,
        fett = 0.0,
        proteine = 0.0,
        zucker = 0.0,
        gesaettigte_fettsaeuren = 0.0,
        ballaststoffe = 0.0,
        natrium = 38.758,

        mengeneinheit_id = (
            SELECT id
                FROM mengeneinheit
                WHERE name = 'Kilogramm');
INSERT INTO zutat
    SET name = 'Gouda',
        bestand = 10,
        nettopreis = 4.99,
        kohlenhydrate = 2.2,
        kalorien = 356,
        fett = 22.3,
        proteine = 0.0,
        zucker = 0.0,
        gesaettigte_fettsaeuren = 0.0,
        ballaststoffe = 0.0,
        natrium = 0.0,

        mengeneinheit_id = (
            SELECT id
                FROM mengeneinheit
                WHERE name = 'Kilogramm');
INSERT INTO zutat
    SET name = 'Sahne',
        bestand = 50,
        nettopreis = 0.99,
        kohlenhydrate = 3.7,
        kalorien = 196,
        fett = 19.0,
        proteine = 2.7,
        zucker = 0.1,
        gesaettigte_fettsaeuren = 12.0,
        ballaststoffe = 0.0,
        natrium = 40.0,

        mengeneinheit_id = (
            SELECT id
                FROM mengeneinheit
                WHERE name = 'Kilogramm');

INSERT INTO zutat
    SET name = 'Ei',
        bestand = 150,
        nettopreis = 0.3,
        kohlenhydrate = 1.1,
        kalorien = 89,
        fett = 6.5,
        proteine = 13.0,
        zucker = 1.1,
        gesaettigte_fettsaeuren = 0.0,
        ballaststoffe = 0.0,
        natrium = 0.0124,

        mengeneinheit_id = (
            SELECT id
                FROM mengeneinheit
                WHERE name = 'Stück');

INSERT INTO zutat
    SET name = 'Mehl',
        bestand = 20,
        nettopreis = 0.89,
        kohlenhydrate = 67.2,
        kalorien = 327,
        fett = 1.8,
        proteine = 8.5,
        zucker = 4,
        gesaettigte_fettsaeuren = 0.2,
        ballaststoffe = 9.2,
        natrium = 0.6,

        mengeneinheit_id = (
            SELECT id
                FROM mengeneinheit
                WHERE name = 'Kilogramm'); 

INSERT INTO zutat
    SET name = 'Paprika',
        bestand = 12,
        nettopreis = 0.60,
        kohlenhydrate = 6.4,
        kalorien = 43,
        fett = 0.5,
        proteine = 1.3,
        zucker = 4,
        gesaettigte_fettsaeuren = 0.03,
        ballaststoffe = 3.59,
        natrium = 0.6,

        mengeneinheit_id = (
            SELECT id
                FROM mengeneinheit
                WHERE name = 'Kilogramm'); 

INSERT INTO zutat
    SET name = 'Pizza Käse',
        bestand = 40,
        nettopreis = 1.08,
        kohlenhydrate = 2.5,
        kalorien = 323,
        fett = 27,
        proteine = 25,
        zucker = 0.0,
        gesaettigte_fettsaeuren = 0.0,
        ballaststoffe = 0.0,
        natrium = 0.0,

        mengeneinheit_id = (
            SELECT id
                FROM mengeneinheit
                WHERE name = 'Kilogramm');              
INSERT INTO zutat
    SET name = 'Milch',
        bestand = 50,
        nettopreis = 1.3,
        kohlenhydrate = 5.0,
        kalorien = 42,
        fett = 1.0,
        proteine = 3.0,
        zucker = 5.0,
        gesaettigte_fettsaeuren = 0.6,
        ballaststoffe = 0.0,
        natrium = 0.044,

           mengeneinheit_id = (
            SELECT id
                FROM mengeneinheit
                WHERE name = 'Liter');

     INSERT INTO zutat
    SET name = 'Zucker',
        bestand = 48,
        nettopreis = 1.2,
        kohlenhydrate = 100.0,
        kalorien = 387,
        fett = 0.0,
        proteine = 0.0,
        zucker = 100.0,
        gesaettigte_fettsaeuren = 0.0,
        ballaststoffe = 0.0,
        natrium = 0.001,

        mengeneinheit_id = (
            SELECT id
                FROM mengeneinheit
                WHERE name = 'Kilogramm');

INSERT INTO zutat
    SET name = 'Champignons',
        bestand = 10000,
        nettopreis = 2.0,
        kohlenhydrate = 3.3,
        kalorien = 22,
        fett = 0.3,
        proteine = 0.0,
        zucker = 0.0,
        gesaettigte_fettsaeuren = 0.0,
        ballaststoffe = 0.0,
        natrium = 0.0,

        mengeneinheit_id = (
            SELECT id
                FROM mengeneinheit
                WHERE name = 'Kilogramm');
INSERT INTO zutat
    SET name = 'Zucchini',
        bestand = 100,
        nettopreis = 1.5,
        kohlenhydrate = 3.1,
        kalorien = 17,
        fett = 0.3,
        proteine = 1.2,
        zucker = 2.5,
        gesaettigte_fettsaeuren = 0.1,
        ballaststoffe = 1.0,
        natrium = 8.0,

        mengeneinheit_id = (
            SELECT id
                FROM mengeneinheit
                WHERE name = 'Kilogramm');
INSERT INTO zutat
    SET name = 'Mais',
        bestand = 64,
        nettopreis = 1.15,
        kohlenhydrate = 15.8,
        kalorien = 86.0,
        fett = 3.8,
        proteine = 3.0,
        zucker = 0.0,
        gesaettigte_fettsaeuren = 0.0,
        ballaststoffe = 4.0,
        natrium = 0.0,

        mengeneinheit_id = (
            SELECT id
                FROM mengeneinheit
                WHERE name = 'Kilogramm');
INSERT INTO zutat
    SET name = 'Knoblauch',
        bestand = 54,
        nettopreis = 1.59,
        kohlenhydrate = 28.4,
        kalorien = 145,
        fett = 0.1,
        proteine = 6.1,
        zucker = 8.5,
        gesaettigte_fettsaeuren = 0.0,
        ballaststoffe = 1.8,
        natrium = 0.0,

        mengeneinheit_id = (
            SELECT id
                FROM mengeneinheit
                WHERE name = 'Kilogramm');
INSERT INTO zutat
    SET name = 'Dill',
        bestand = 2000,
        nettopreis = 0.1,
        kohlenhydrate = 8.0,
        kalorien = 55,
        fett = 0.8,
        proteine = 0.0,
        zucker = 0.0,
        gesaettigte_fettsaeuren = 0.0,
        ballaststoffe = 0.0,
        natrium = 0.0,

        mengeneinheit_id = (
            SELECT id
                FROM mengeneinheit
                WHERE name = 'Kilogramm');
-- END zutat

-- BEGIN rezept
INSERT INTO rezept
    SET
        name = 'Vegetarische Pizza',
        beschreibung = 'Vegetarisch 100%',
        zubereitung = 'Wingardium leviosa';
        
INSERT INTO rezept
    SET
        name = 'Pfannkuchen',
        beschreibung = 'Der Klassiker beim Frühstück',
        zubereitung = 'expecto patronum';
        
INSERT INTO rezept
    SET
        name = 'Gemüsepfanne',
        beschreibung = 'Warmestärkung',
        zubereitung = 'Avada Kedavra';

        
INSERT INTO rezept
    SET
        name = 'Nudelgericht',
        beschreibung = 'Leckere Nudeln',
        zubereitung = 'Sectumsempra';
        
INSERT INTO rezept
    SET
        name = 'Rinderhack Pizza',
        beschreibung = 'Herzhafte Pizza mit besten Zutaten',
        zubereitung = 'Crucio';
-- END rezept

-- BEGIN rezept_zutat

INSERT INTO rezept_zutat
SET
    menge = 0.45,
    rezept_id = 1,
    zutat_id = (
        SELECT id
            FROM zutat
            WHERE name = 'Mehl');
			
			
			
			
INSERT INTO rezept_zutat
SET
    menge = 0.20,
    rezept_id = 1,
    zutat_id = (
        SELECT id
            FROM zutat
            WHERE name = 'Paprika');
			
			
INSERT INTO rezept_zutat
SET
    menge = 0.80,
    rezept_id = 1,
    zutat_id = (
        SELECT id
            FROM zutat
            WHERE name = 'Pizza Käse');
			
INSERT INTO rezept_zutat
SET
    menge = 0.45,
    rezept_id = 1,
    zutat_id = (
        SELECT id
            FROM zutat
            WHERE name = 'Mais');	


INSERT INTO rezept_zutat
SET
    menge = 0.45,
    rezept_id = 1,
    zutat_id = (
        SELECT id
            FROM zutat
            WHERE name = 'Tomatenmark');			


INSERT INTO rezept_zutat
SET
    menge = 0.45,
    rezept_id = 1,
    zutat_id = (
        SELECT id
            FROM zutat
            WHERE name = 'Zucchini');
			
			
INSERT INTO rezept_zutat
SET
    menge = 0.10,
    rezept_id = 1,
    zutat_id = (
        SELECT id
            FROM zutat
            WHERE name = 'Rapsöl');
INSERT INTO rezept_zutat
SET
    menge = 0.41,
    rezept_id = 2,
    zutat_id = (
        SELECT id
            FROM zutat
            WHERE name = 'Mehl');
INSERT INTO rezept_zutat
SET
    menge = 0.15,
    rezept_id = 2,
    zutat_id = (
        SELECT id
            FROM zutat
            WHERE name = 'Milch');
INSERT INTO rezept_zutat
SET
    menge = 0.95,
    rezept_id = 2,
    zutat_id = (
        SELECT id
            FROM zutat
            WHERE name = 'Zucker');
INSERT INTO rezept_zutat
SET
    menge = 0.84,
    rezept_id = 2,
    zutat_id = (
        SELECT id
            FROM zutat
            WHERE name = 'Ei');

INSERT INTO rezept_zutat
SET
    menge = 0.32,
    rezept_id = 3,
    zutat_id = (
        SELECT id
            FROM zutat
            WHERE name = 'Zucchini');
INSERT INTO rezept_zutat
SET
    menge = 0.75,
    rezept_id = 3,
    zutat_id = (
        SELECT id
            FROM zutat
            WHERE name = 'Zwiebel');
INSERT INTO rezept_zutat
SET
    menge = 0.92,
    rezept_id = 3,
    zutat_id = (
        SELECT id
            FROM zutat
            WHERE name = 'Knoblauch');

INSERT INTO rezept_zutat
SET
    menge = 0.88,
    rezept_id = 3,
    zutat_id = (
        SELECT id
            FROM zutat
            WHERE name = 'Rapsöl');
INSERT INTO rezept_zutat
SET
    menge = 0.54,
    rezept_id = 3,
    zutat_id = (
        SELECT id
            FROM zutat
            WHERE name = 'Tomatenmark');

INSERT INTO rezept_zutat
SET
    menge = 0.41,
    rezept_id = 3,
    zutat_id = (
        SELECT id
            FROM zutat
            WHERE name = 'Cayennepfeffer');
INSERT INTO rezept_zutat
SET
    menge = 0.15,
    rezept_id = 3,
    zutat_id = (
        SELECT id
            FROM zutat
            WHERE name = 'Champignons');

INSERT INTO rezept_zutat
SET
    menge = 0.97,
    rezept_id = 4,
    zutat_id = (
        SELECT id
            FROM zutat
            WHERE name = 'Bandnudeln');
INSERT INTO rezept_zutat
SET
    menge = 0.57,
    rezept_id = 4,
    zutat_id = (
        SELECT id
            FROM zutat
            WHERE name = 'Rapsöl');
INSERT INTO rezept_zutat
SET
    menge = 0.88,
    rezept_id = 4,
    zutat_id = (
        SELECT id
            FROM zutat
            WHERE name = 'Zwiebel');
INSERT INTO rezept_zutat
SET
    menge = 0.94,
    rezept_id = 4,
    zutat_id = (
        SELECT id
            FROM zutat
            WHERE name = 'Tomatenmark');
INSERT INTO rezept_zutat
SET
    menge = 0.31,
    rezept_id = 4,
    zutat_id = (
        SELECT id
            FROM zutat
            WHERE name = 'Champignons');
INSERT INTO rezept_zutat
SET
    menge = 0.11,
    rezept_id = 5,
    zutat_id = (
        SELECT id
            FROM zutat
            WHERE name = 'Mehl');
INSERT INTO rezept_zutat
SET
    menge = 0.73,
    rezept_id = 5,
    zutat_id = (
        SELECT id
            FROM zutat
            WHERE name = 'Gouda');
INSERT INTO rezept_zutat
SET
    menge = 0.8,
    rezept_id = 5,
    zutat_id = (
        SELECT id
            FROM zutat
            WHERE name = 'Ei');
INSERT INTO rezept_zutat
SET
    menge = 0.45,
    rezept_id = 5,
    zutat_id = (
        SELECT id
            FROM zutat
            WHERE name = 'Rinderhackfleisch');
INSERT INTO rezept_zutat
SET
    menge = 0.70,
    rezept_id = 5,
    zutat_id = (
        SELECT id
            FROM zutat
            WHERE name = 'Zucchini');

-- END rezept_zutat 

-- BEGIN rezept_ernaehrungskategorie

INSERT INTO rezept_ernaehrungskategorie
SET
    ernaehrungskategorie_id = 3,
    rezept_id = 1;
INSERT INTO rezept_ernaehrungskategorie
SET
    ernaehrungskategorie_id = 1,
    rezept_id = 1;

INSERT INTO rezept_ernaehrungskategorie
SET
    ernaehrungskategorie_id = 4,
    rezept_id = 2;
INSERT INTO rezept_ernaehrungskategorie
SET
    ernaehrungskategorie_id = 2,
    rezept_id = 2;

INSERT INTO rezept_ernaehrungskategorie
SET
    ernaehrungskategorie_id = 5,
    rezept_id = 3;
INSERT INTO rezept_ernaehrungskategorie
SET
    ernaehrungskategorie_id = 4,
    rezept_id = 3;

INSERT INTO rezept_ernaehrungskategorie
SET
    ernaehrungskategorie_id = 4,
    rezept_id = 4;
INSERT INTO rezept_ernaehrungskategorie
SET
    ernaehrungskategorie_id = 5,
    rezept_id = 4;

INSERT INTO rezept_ernaehrungskategorie
SET
    ernaehrungskategorie_id = 4,
    rezept_id = 5;
INSERT INTO rezept_ernaehrungskategorie
SET
    ernaehrungskategorie_id = 3,
    rezept_id = 5;
-- END rezept_ernaehrungskategorie

-- BEGIN lieferant_zutat
INSERT INTO lieferant_zutat
    SET 
        lieferant_id = 1,
        zutat_id = 1,
        menge_pro_woche = 3.06;

INSERT INTO lieferant_zutat
    SET 
        lieferant_id = 2,
        zutat_id = 1,
        menge_pro_woche = 6.93;
INSERT INTO lieferant_zutat
    SET 
        lieferant_id = 3,
        zutat_id = 2,
        menge_pro_woche = 2.49;

INSERT INTO lieferant_zutat
    SET 
        lieferant_id = 2,
        zutat_id = 2,
        menge_pro_woche = 3.37;
INSERT INTO lieferant_zutat
    SET 
        lieferant_id = 3,
        zutat_id = 3,
        menge_pro_woche = 9.33;

INSERT INTO lieferant_zutat
    SET 
        lieferant_id = 1,
        zutat_id = 3,
        menge_pro_woche = 1.89;
INSERT INTO lieferant_zutat
    SET 
        lieferant_id = 2,
        zutat_id = 4,
        menge_pro_woche = 6.08;

INSERT INTO lieferant_zutat
    SET 
        lieferant_id = 1,
        zutat_id = 4,
        menge_pro_woche = 5.57;
INSERT INTO lieferant_zutat
    SET 
        lieferant_id = 3,
        zutat_id = 5,
        menge_pro_woche = 8.87;

INSERT INTO lieferant_zutat
    SET 
        lieferant_id = 1,
        zutat_id = 5,
        menge_pro_woche = 5.5;
INSERT INTO lieferant_zutat
    SET 
        lieferant_id = 1,
        zutat_id = 6,
        menge_pro_woche = 2.84;

INSERT INTO lieferant_zutat
    SET 
        lieferant_id = 2,
        zutat_id = 6,
        menge_pro_woche = 8.79;
INSERT INTO lieferant_zutat
    SET 
        lieferant_id = 2,
        zutat_id = 7,
        menge_pro_woche = 8.16;

INSERT INTO lieferant_zutat
    SET 
        lieferant_id = 1,
        zutat_id = 7,
        menge_pro_woche = 9.03;
INSERT INTO lieferant_zutat
    SET 
        lieferant_id = 1,
        zutat_id = 8,
        menge_pro_woche = 6.96;

INSERT INTO lieferant_zutat
    SET 
        lieferant_id = 2,
        zutat_id = 8,
        menge_pro_woche = 6.84;
INSERT INTO lieferant_zutat
    SET 
        lieferant_id = 1,
        zutat_id = 9,
        menge_pro_woche = 8.07;

INSERT INTO lieferant_zutat
    SET 
        lieferant_id = 2,
        zutat_id = 9,
        menge_pro_woche = 9.07;
INSERT INTO lieferant_zutat
    SET 
        lieferant_id = 1,
        zutat_id = 10,
        menge_pro_woche = 1.92;

INSERT INTO lieferant_zutat
    SET 
        lieferant_id = 3,
        zutat_id = 10,
        menge_pro_woche = 8.03;
INSERT INTO lieferant_zutat
    SET 
        lieferant_id = 3,
        zutat_id = 11,
        menge_pro_woche = 5.32;

INSERT INTO lieferant_zutat
    SET 
        lieferant_id = 1,
        zutat_id = 11,
        menge_pro_woche = 9.78;
INSERT INTO lieferant_zutat
    SET 
        lieferant_id = 1,
        zutat_id = 12,
        menge_pro_woche = 1.35;

INSERT INTO lieferant_zutat
    SET 
        lieferant_id = 3,
        zutat_id = 12,
        menge_pro_woche = 6.58;
INSERT INTO lieferant_zutat
    SET 
        lieferant_id = 2,
        zutat_id = 13,
        menge_pro_woche = 7.25;

INSERT INTO lieferant_zutat
    SET 
        lieferant_id = 3,
        zutat_id = 13,
        menge_pro_woche = 1.02;
INSERT INTO lieferant_zutat
    SET 
        lieferant_id = 2,
        zutat_id = 14,
        menge_pro_woche = 5.17;

INSERT INTO lieferant_zutat
    SET 
        lieferant_id = 3,
        zutat_id = 14,
        menge_pro_woche = 4.31;
INSERT INTO lieferant_zutat
    SET 
        lieferant_id = 2,
        zutat_id = 15,
        menge_pro_woche = 4.77;

INSERT INTO lieferant_zutat
    SET 
        lieferant_id = 3,
        zutat_id = 15,
        menge_pro_woche = 5.19;
INSERT INTO lieferant_zutat
    SET 
        lieferant_id = 1,
        zutat_id = 16,
        menge_pro_woche = 8.38;

INSERT INTO lieferant_zutat
    SET 
        lieferant_id = 2,
        zutat_id = 16,
        menge_pro_woche = 9.7;
INSERT INTO lieferant_zutat
    SET 
        lieferant_id = 1,
        zutat_id = 17,
        menge_pro_woche = 8.9;

INSERT INTO lieferant_zutat
    SET 
        lieferant_id = 2,
        zutat_id = 17,
        menge_pro_woche = 3.77;
INSERT INTO lieferant_zutat
    SET 
        lieferant_id = 3,
        zutat_id = 18,
        menge_pro_woche = 2.27;

INSERT INTO lieferant_zutat
    SET 
        lieferant_id = 2,
        zutat_id = 18,
        menge_pro_woche = 7.34;
INSERT INTO lieferant_zutat
    SET 
        lieferant_id = 1,
        zutat_id = 19,
        menge_pro_woche = 5.67;

INSERT INTO lieferant_zutat
    SET 
        lieferant_id = 3,
        zutat_id = 19,
        menge_pro_woche = 6.56;
INSERT INTO lieferant_zutat
    SET 
        lieferant_id = 2,
        zutat_id = 20,
        menge_pro_woche = 3.95;

INSERT INTO lieferant_zutat
    SET 
        lieferant_id = 3,
        zutat_id = 20,
        menge_pro_woche = 5.5;
-- END lieferant_zutat


-- BEGIN beschraenkung
INSERT INTO beschraenkung(name, beschreibung) values 
('Gluten','Getreide Unverträglichkeit'),
('Lactose','Keine Milchprodukte'),
('Fructose','Kein Fruchtzucker'),
('Erdnuss','Keine Erdnüsse'),
('Schalenfrüchte','Keine Haselnüsse, Wallnüsse, Macadamianüsse, Parranüsse, Pecannüsse, Cashewnüsse, Pistazien'),
('Ei','Keine Eier');
-- END beschraenkung


-- BEGIN beschraenkung
INSERT INTO zutat_beschraenkung
    SET 
        zutat_id = 1,
        beschraenkung_id = 1;

INSERT INTO zutat_beschraenkung
    SET 
        zutat_id = 1,
        beschraenkung_id = 3;
INSERT INTO zutat_beschraenkung
    SET 
        zutat_id = 2,
        beschraenkung_id = 1;

INSERT INTO zutat_beschraenkung
    SET 
        zutat_id = 2,
        beschraenkung_id = 4;
INSERT INTO zutat_beschraenkung
    SET 
        zutat_id = 3,
        beschraenkung_id = 3;

INSERT INTO zutat_beschraenkung
    SET 
        zutat_id = 3,
        beschraenkung_id = 1;
INSERT INTO zutat_beschraenkung
    SET 
        zutat_id = 4,
        beschraenkung_id = 2;

INSERT INTO zutat_beschraenkung
    SET 
        zutat_id = 4,
        beschraenkung_id = 1;
INSERT INTO zutat_beschraenkung
    SET 
        zutat_id = 5,
        beschraenkung_id = 2;

INSERT INTO zutat_beschraenkung
    SET 
        zutat_id = 5,
        beschraenkung_id = 5;
INSERT INTO zutat_beschraenkung
    SET 
        zutat_id = 6,
        beschraenkung_id = 2;

INSERT INTO zutat_beschraenkung
    SET 
        zutat_id = 6,
        beschraenkung_id = 3;
INSERT INTO zutat_beschraenkung
    SET 
        zutat_id = 7,
        beschraenkung_id = 1;

INSERT INTO zutat_beschraenkung
    SET 
        zutat_id = 7,
        beschraenkung_id = 3;
INSERT INTO zutat_beschraenkung
    SET 
        zutat_id = 8,
        beschraenkung_id = 2;

INSERT INTO zutat_beschraenkung
    SET 
        zutat_id = 8,
        beschraenkung_id = 3;
INSERT INTO zutat_beschraenkung
    SET 
        zutat_id = 9,
        beschraenkung_id = 2;

INSERT INTO zutat_beschraenkung
    SET 
        zutat_id = 9,
        beschraenkung_id = 3;
INSERT INTO zutat_beschraenkung
    SET 
        zutat_id = 10,
        beschraenkung_id = 4;

INSERT INTO zutat_beschraenkung
    SET 
        zutat_id = 10,
        beschraenkung_id = 2;
INSERT INTO zutat_beschraenkung
    SET 
        zutat_id = 11,
        beschraenkung_id = 4;

INSERT INTO zutat_beschraenkung
    SET 
        zutat_id = 11,
        beschraenkung_id = 3;
INSERT INTO zutat_beschraenkung
    SET 
        zutat_id = 12,
        beschraenkung_id = 3;

INSERT INTO zutat_beschraenkung
    SET 
        zutat_id = 12,
        beschraenkung_id = 5;
INSERT INTO zutat_beschraenkung
    SET 
        zutat_id = 13,
        beschraenkung_id = 4;

INSERT INTO zutat_beschraenkung
    SET 
        zutat_id = 13,
        beschraenkung_id = 5;
INSERT INTO zutat_beschraenkung
    SET 
        zutat_id = 14,
        beschraenkung_id = 5;

INSERT INTO zutat_beschraenkung
    SET 
        zutat_id = 14,
        beschraenkung_id = 1;
INSERT INTO zutat_beschraenkung
    SET 
        zutat_id = 15,
        beschraenkung_id = 4;

INSERT INTO zutat_beschraenkung
    SET 
        zutat_id = 15,
        beschraenkung_id = 3;
INSERT INTO zutat_beschraenkung
    SET 
        zutat_id = 16,
        beschraenkung_id = 2;

INSERT INTO zutat_beschraenkung
    SET 
        zutat_id = 16,
        beschraenkung_id = 3;
INSERT INTO zutat_beschraenkung
    SET 
        zutat_id = 17,
        beschraenkung_id = 2;

INSERT INTO zutat_beschraenkung
    SET 
        zutat_id = 17,
        beschraenkung_id = 1;
INSERT INTO zutat_beschraenkung
    SET 
        zutat_id = 18,
        beschraenkung_id = 3;

INSERT INTO zutat_beschraenkung
    SET 
        zutat_id = 18,
        beschraenkung_id = 4;
INSERT INTO zutat_beschraenkung
    SET 
        zutat_id = 19,
        beschraenkung_id = 3;

INSERT INTO zutat_beschraenkung
    SET 
        zutat_id = 19,
        beschraenkung_id = 4;
INSERT INTO zutat_beschraenkung
    SET 
        zutat_id = 20,
        beschraenkung_id = 1;

INSERT INTO zutat_beschraenkung
    SET 
        zutat_id = 20,
        beschraenkung_id = 3;
-- END beschraenkung

-- Beginn Bestellung + Rezept-Bestell-mapping

INSERT INTO bestellung
            SET 
                gesamtpreis = 756.0,
                datum = '2012-01-27',
                kunde_id = 6;
                
        INSERT INTO bestellung_rezept
        SET 
            bestellung_id = 1,
            rezept_id = 4;
            
    INSERT INTO bestellung_rezept
        SET 
            bestellung_id = 1,
            rezept_id = 1;
            
    INSERT INTO bestellung
            SET 
                gesamtpreis = 755.32,
                datum = '2013-06-27',
                kunde_id = 3;
                
        INSERT INTO bestellung_rezept
        SET 
            bestellung_id = 2,
            rezept_id = 1;
            
    INSERT INTO bestellung_rezept
        SET 
            bestellung_id = 2,
            rezept_id = 5;
            
    INSERT INTO bestellung
            SET 
                gesamtpreis = 923.1400000000001,
                datum = '2009-04-24',
                kunde_id = 2;
                
        INSERT INTO bestellung_rezept
        SET 
            bestellung_id = 3,
            rezept_id = 2;
            
    INSERT INTO bestellung_rezept
        SET 
            bestellung_id = 3,
            rezept_id = 5;
            
    INSERT INTO bestellung
            SET 
                gesamtpreis = 756.0,
                datum = '2010-09-26',
                kunde_id = 1;
                
        INSERT INTO bestellung_rezept
        SET 
            bestellung_id = 4,
            rezept_id = 1;
            
    INSERT INTO bestellung_rezept
        SET 
            bestellung_id = 4,
            rezept_id = 4;
            
    INSERT INTO bestellung
            SET 
                gesamtpreis = 923.82,
                datum = '2018-03-25',
                kunde_id = 4;
                
        INSERT INTO bestellung_rezept
        SET 
            bestellung_id = 5,
            rezept_id = 2;
            
    INSERT INTO bestellung_rezept
        SET 
            bestellung_id = 5,
            rezept_id = 4;
            
    INSERT INTO bestellung
            SET 
                gesamtpreis = 881.24,
                datum = '2001-01-22',
                kunde_id = 1;
                
        INSERT INTO bestellung_rezept
        SET 
            bestellung_id = 6,
            rezept_id = 4;
            
    INSERT INTO bestellung_rezept
        SET 
            bestellung_id = 6,
            rezept_id = 5;
            
    INSERT INTO bestellung
            SET 
                gesamtpreis = 818.86,
                datum = '2004-04-20',
                kunde_id = 3;
                
        INSERT INTO bestellung_rezept
        SET 
            bestellung_id = 7,
            rezept_id = 2;
            
    INSERT INTO bestellung_rezept
        SET 
            bestellung_id = 7,
            rezept_id = 3;
            
-- Ende Bestellung + Rezept-Bestell-mapping
