-- Setzen Sie die folgenden Anforderungen mittels SQL-Abfragen um:
-- Auswahl aller Zutaten eines Rezeptes nach Rezeptname
SELECT r.name, z.name FROM rezept AS r
JOIN rezept_zutat AS rz
ON r.id = rz.rezept_id
JOIN zutat AS z
ON z.id = rz.zutat_id
WHERE r.name = "Rezept 0";
-- Auswahl aller Rezepte einer bestimmten Ernährungskategorie
SELECT r.name,r.beschreibung, r.zubereitung, e.name, e.beschreibung FROM rezept_ernaehrungskategorie AS re
JOIN rezept AS r
ON re.rezept_id = r.id
JOIN ernaehrungskategorie AS e
ON  e.id = re.ernaehrungskategorie_id
WHERE e.name = 'Low Carb';
-- Auswahl aller Rezepte, die eine gewisse Zutat enthalten
SELECT r.name, z.name , rz.menge FROM rezept  AS r
JOIN rezept_zutat AS rz
ON r.id = rz.rezept_id
JOIN zutat AS z
ON z.id = rz.zutat_id
WHERE z.name = "Tomatenmark";
-- Berechnung der durchschnittlichen Nährwerte aller Bestellungen eines Kunden
SELECT k.name, k.vorname, AVG(z.kalorien)  FROM kunde AS k
JOIN bestellung AS b
ON k.id = b.kunde_id 
JOIN bestellung_rezept AS br
ON br.bestellung_id = b.id
JOIN rezept AS r
ON r.id = br.rezept_id
JOIN rezept_zutat AS rz
ON r.id = rz.rezept_id
JOIN zutat AS z
ON z.id = rz.zutat_id
WHERE k.name = "Maurer"
GROUP BY b.kunde_id
;

-- Auswahl aller Zutaten, die bisher keinem Rezept zugeordnet sind
SELECT z.name FROM rezept AS r
JOIN rezept_zutat AS rz
ON r.id = rz.rezept_id
RIGHT JOIN zutat AS z
ON z.id = rz.zutat_id
WHERE r.id IS NULL
;

-- optional für FiSi und ITSE bzw. verpflichtend für FIAE und FIDP:
-- Auswahl aller Rezepte, die eine bestimmte Kalorienmenge nicht überschreiten

SELECT * FROM
(SELECT r.name, SUM(z.kalorien * rz.menge) AS sumkalorien  FROM rezept AS r
JOIN rezept_zutat AS rz
ON r.id = rz.rezept_id
JOIN zutat AS z
ON z.id = rz.zutat_id
GROUP BY r.id) kalorien
WHERE sumkalorien > 20000
;
-- Auswahl aller Rezepte, die weniger als fünf Zutaten enthalten

SELECT * FROM
(SELECT r.name, COUNT(r.id) AS sumkalorien  FROM rezept AS r
JOIN rezept_zutat AS rz
ON r.id = rz.rezept_id
JOIN zutat AS z
ON z.id = rz.zutat_id
GROUP BY r.id) co
WHERE sumkalorien > 4
;

-- Auswahl aller Rezepte, die weniger als fünf Zutaten enthalten und eine bestimmte Ernährungskategorie erfüllen
SELECT * FROM
(SELECT r.name, COUNT(r.id) AS c  FROM rezept AS r
JOIN rezept_zutat AS rz
ON r.id = rz.rezept_id
JOIN zutat AS z
ON z.id = rz.zutat_id
JOIN rezept_ernaehrungskategorie AS re
ON re.rezept_id = r.id
JOIN ernaehrungskategorie AS e
ON e.id = re.ernaehrungskategorie_id
-- in der inneren Query Ernährungskat.wählen
WHERE e.name = "Vegan"
GROUP BY r.id) q1
WHERE c > 4
;

-- Setzen Sie die folgenden Anforderungen mittels SQL-Abfragen um:
-- Auswahl aller Zutaten eines Rezeptes nach Rezeptname
SELECT r.name, z.name FROM rezept AS r
JOIN rezept_zutat AS rz
ON r.id = rz.rezept_id
JOIN zutat AS z
ON z.id = rz.zutat_id
WHERE r.name = "Rezept 0";
-- Auswahl aller Rezepte einer bestimmten Ernährungskategorie
SELECT r.name,r.beschreibung, r.zubereitung, e.name, e.beschreibung FROM rezept_ernaehrungskategorie AS re
JOIN rezept AS r
ON re.rezept_id = r.id
JOIN ernaehrungskategorie AS e
ON  e.id = re.ernaehrungskategorie_id
WHERE e.name = 'Low Carb';
-- Auswahl aller Rezepte, die eine gewisse Zutat enthalten
SELECT r.name, z.name , rz.menge FROM rezept  AS r
JOIN rezept_zutat AS rz
ON r.id = rz.rezept_id
JOIN zutat AS z
ON z.id = rz.zutat_id
WHERE z.name = "Tomatenmark";
-- Berechnung der durchschnittlichen Nährwerte aller Bestellungen eines Kunden
SELECT k.name, k.vorname, AVG(z.kalorien)  FROM kunde AS k
JOIN bestellung AS b
ON k.id = b.kunde_id 
JOIN bestellung_rezept AS br
ON br.bestellung_id = b.id
JOIN rezept AS r
ON r.id = br.rezept_id
JOIN rezept_zutat AS rz
ON r.id = rz.rezept_id
JOIN zutat AS z
ON z.id = rz.zutat_id
WHERE k.name = "Maurer"
GROUP BY b.kunde_id
;

-- Auswahl aller Zutaten, die bisher keinem Rezept zugeordnet sind
SELECT z.name FROM rezept AS r
JOIN rezept_zutat AS rz
ON r.id = rz.rezept_id
RIGHT JOIN zutat AS z
ON z.id = rz.zutat_id
WHERE r.id IS NULL
;

-- optional für FiSi und ITSE bzw. verpflichtend für FIAE und FIDP:
-- Auswahl aller Rezepte, die eine bestimmte Kalorienmenge nicht überschreiten

SELECT * FROM
(SELECT r.name, SUM(z.kalorien * rz.menge) AS sumkalorien  FROM rezept AS r
JOIN rezept_zutat AS rz
ON r.id = rz.rezept_id
JOIN zutat AS z
ON z.id = rz.zutat_id
GROUP BY r.id) kalorien
WHERE sumkalorien > 20000
;
-- Auswahl aller Rezepte, die weniger als fünf Zutaten enthalten

SELECT * FROM
(SELECT r.name, COUNT(r.id) AS sumkalorien  FROM rezept AS r
JOIN rezept_zutat AS rz
ON r.id = rz.rezept_id
JOIN zutat AS z
ON z.id = rz.zutat_id
GROUP BY r.id) co
WHERE sumkalorien > 4
;

-- Auswahl aller Rezepte, die weniger als fünf Zutaten enthalten und eine bestimmte Ernährungskategorie erfüllen
SELECT * FROM
(SELECT r.name, COUNT(r.id) AS c  FROM rezept AS r
JOIN rezept_zutat AS rz
ON r.id = rz.rezept_id
JOIN zutat AS z
ON z.id = rz.zutat_id
JOIN rezept_ernaehrungskategorie AS re
ON re.rezept_id = r.id
JOIN ernaehrungskategorie AS e
ON e.id = re.ernaehrungskategorie_id
-- in der inneren Query Ernährungskat.wählenkunde
WHERE e.name = "Vegan"
GROUP BY r.id) q1
WHERE c > 4
;


-- Finde Kunde welcher den höhsten Umsatz generiert
SELECT k.name, k.vorname, SUM(b.gesamtpreis)  totalAmountSpend FROM kunde AS k
JOIN adresse AS a
ON k.adresse_id = a.id
JOIN bestellung AS b
ON b.kunde_id = k.id
GROUP BY b.kunde_id
ORDER BY totalAmountSpend DESC
LIMIT 1;

-- Wie viel haben Kunden durchschnittlich im gesamten Nutzungszeitraum ausgegeben
SELECT AVG(totalAmountSpend) FROM
(SELECT k.name, k.vorname, SUM(b.gesamtpreis)  totalAmountSpend FROM kunde AS k
JOIN bestellung AS b
ON b.kunde_id = k.id
GROUP BY b.kunde_id) averages;


