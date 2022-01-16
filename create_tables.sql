-- begin freestanding tables (no foreign keys)

CREATE TABLE IF NOT EXISTS adresse (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    stadt VARCHAR(512) NOT NULL,
    strasse VARCHAR(512) NOT NULL,
    hausnr VARCHAR(512) NOT NULL,
    plz INT NOT NULL,

    PRIMARY KEY(id)
);

CREATE TABLE IF NOT EXISTS rezept (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    name VARCHAR(512) NOT NULL,
    beschreibung VARCHAR(512) NOT NULL,
    zubereitung VARCHAR(512) NOT NULL,

    PRIMARY KEY(id)
);

CREATE TABLE IF NOT EXISTS ernaehrungskategorie (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    name VARCHAR(512) NOT NULL,
    beschreibung VARCHAR(512) NOT NULL,

    PRIMARY KEY(id)
);

CREATE TABLE IF NOT EXISTS mengeneinheit (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    name VARCHAR(512) NOT NULL,

    PRIMARY KEY(id)
);

CREATE TABLE IF NOT EXISTS beschraenkung (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    name VARCHAR(512) NOT NULL,
    beschreibung VARCHAR(512) NOT NULL,

    PRIMARY KEY(id)
);

-- begin tables with foreign keys

CREATE TABLE IF NOT EXISTS lieferant (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    name VARCHAR(512) NOT NULL,
    telefon VARCHAR(512) NOT NULL,
    email VARCHAR(512) NOT NULL,
    adresse_id INT UNSIGNED NOT NULL,

    PRIMARY KEY(id),
    FOREIGN KEY (adresse_id)
        REFERENCES adresse (id)
        ON DELETE CASCADE
        ON UPDATE RESTRICT
);

CREATE TABLE IF NOT EXISTS kunde (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    name VARCHAR(512) NOT NULL,
    vorname VARCHAR(512) NOT NULL,
    geburtsdatum DATE NOT NULL,
    telefon VARCHAR(512) NOT NULL,
    email VARCHAR(512) NOT NULL,
    adresse_id INT UNSIGNED NOT NULL,

    PRIMARY KEY(id),
    FOREIGN KEY (adresse_id)
        REFERENCES adresse (id)
        ON DELETE CASCADE
        ON UPDATE RESTRICT
);

CREATE TABLE IF NOT EXISTS bestellung (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    gesamtpreis DOUBLE UNSIGNED NOT NULL,
    datum DATE NOT NULL,
    kunde_id INT UNSIGNED NOT NULL,

    PRIMARY KEY(id),
    FOREIGN KEY (kunde_id)
        REFERENCES kunde (id)
        ON DELETE CASCADE
        ON UPDATE RESTRICT
);

CREATE TABLE IF NOT EXISTS bestellung_rezept (
    bestellung_id INT UNSIGNED NOT NULL,
    rezept_id INT UNSIGNED NOT NULL,

    PRIMARY KEY(bestellung_id, rezept_id),
    FOREIGN KEY (bestellung_id)
        REFERENCES bestellung (id)
        ON DELETE CASCADE
        ON UPDATE RESTRICT,
    FOREIGN KEY (rezept_id)
        REFERENCES rezept (id)
        ON DELETE RESTRICT
        ON UPDATE RESTRICT
);

CREATE TABLE IF NOT EXISTS rezept_ernaehrungskategorie (
    rezept_id INT UNSIGNED NOT NULL,
    ernaehrungskategorie_id INT UNSIGNED NOT NULL,

    PRIMARY KEY(rezept_id, ernaehrungskategorie_id),
    FOREIGN KEY (rezept_id)
        REFERENCES rezept (id)
        ON DELETE RESTRICT
        ON UPDATE RESTRICT,
    FOREIGN KEY (ernaehrungskategorie_id)
        REFERENCES ernaehrungskategorie (id)
        ON DELETE RESTRICT
        ON UPDATE RESTRICT
);

CREATE TABLE IF NOT EXISTS zutat (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    bestand INT UNSIGNED NOT NULL,
    nettopreis DOUBLE UNSIGNED NOT NULL,
    name VARCHAR(512) NOT NULL,
    mengeneinheit_id INT UNSIGNED NOT NULL,
    kalorien DOUBLE UNSIGNED NOT NULL,
    proteine DOUBLE UNSIGNED NOT NULL,
    kohlenhydrate DOUBLE UNSIGNED NOT NULL,
    zucker DOUBLE UNSIGNED NOT NULL,
    fett DOUBLE UNSIGNED NOT NULL,
    gesaettigte_fettsaeuren DOUBLE UNSIGNED NOT NULL,
    ballaststoffe DOUBLE UNSIGNED NOT NULL,
    natrium DOUBLE UNSIGNED NOT NULL,

    PRIMARY KEY(id),
    FOREIGN KEY (mengeneinheit_id)
        REFERENCES mengeneinheit (id)
        ON DELETE RESTRICT
        ON UPDATE RESTRICT
);

CREATE TABLE IF NOT EXISTS rezept_zutat (
    menge DOUBLE UNSIGNED NOT NULL,
    rezept_id INT UNSIGNED NOT NULL,
    zutat_id INT UNSIGNED NOT NULL,

    PRIMARY KEY(rezept_id, zutat_id),
    FOREIGN KEY (rezept_id)
        REFERENCES rezept (id)
        ON DELETE RESTRICT
        ON UPDATE RESTRICT,
    FOREIGN KEY (zutat_id)
        REFERENCES zutat (id)
        ON DELETE RESTRICT
        ON UPDATE RESTRICT
);

CREATE TABLE IF NOT EXISTS lieferant_zutat (
    menge_pro_woche DOUBLE UNSIGNED NOT NULL,
    lieferant_id INT UNSIGNED NOT NULL,
    zutat_id INT UNSIGNED NOT NULL,

    PRIMARY KEY(lieferant_id, zutat_id),
    FOREIGN KEY (lieferant_id)
        REFERENCES lieferant (id)
        ON DELETE RESTRICT
        ON UPDATE RESTRICT,
    FOREIGN KEY (zutat_id)
        REFERENCES zutat (id)
        ON DELETE RESTRICT
        ON UPDATE RESTRICT
);

CREATE TABLE IF NOT EXISTS zutat_beschraenkung (
    zutat_id INT UNSIGNED NOT NULL,
    beschraenkung_id INT UNSIGNED NOT NULL,

    PRIMARY KEY(beschraenkung_id, zutat_id),
    FOREIGN KEY (zutat_id)
        REFERENCES zutat (id)
        ON DELETE RESTRICT
        ON UPDATE RESTRICT,
    FOREIGN KEY (beschraenkung_id)
        REFERENCES beschraenkung (id)
        ON DELETE RESTRICT
        ON UPDATE RESTRICT
);
