Create table 'galaxy' ('galaxy_id'int NOT NULL, 'name'varchar(30) NOT NULL UNIQUE, 'year_discovered' INT, 'discoverer' TEXT (30), 'diameter_in_ly' INT, PRIMARY KEY ('galaxy_id'));

Create table star (star_id int NOT NULL, name varchar(30) NOT NULL UNIQUE, magnitude FLOAT, mass FLOAT, galaxy_id INT, PRIMARY KEY (star_id), FOREIGN KEY (galaxy_id) REFERENCES galaxy (galaxy_id));

Create table planet (planet_id int NOT NULL, name varchar(30) NOT NULL UNIQUE, diameter_in_km INT, year_discovered INT, has_life BOOLEAN, star_id INT, PRIMARY KEY (planet_id), FOREIGN KEY (star_id) REFERENCES star (star_id));

Create table moon (moon_id int NOT NULL, name varchar(30) NOT NULL UNIQUE, diameter_in_km INT, year_discovered INT, spherical BOOLEAN, planet_id INT, PRIMARY KEY (moon_id), FOREIGN KEY (planet_id) REFERENCES planet (planet_id));

Create table asteroid (asteroid_id int NOT NULL, name varchar(30) NOT NULL UNIQUE, diameter_in_km INT, year_discovered NUMERIC, PRIMARY KEY (asteroid_id));

INSERT INTO galaxy (galaxy_id, name, year_discovered, discoverer, diameter_in_ly) 
VALUES
(1, 'Via Lactea', NULL, NULL, 150000),
(2, 'Andromeda',964, 'Azophi', 110000),
(3, 'Galaxia del triángulo', 1654, 'Giovanni B. Hodierna', 25000),
(4, 'Galaxia Remolino',1773, 'Charles Messier', 38000),
(5, 'Galaxia del Girasol', 1779, 'Pierre Méchain', NULL),
(6, 'Galaxia del Ojo Negro', 1779, 'Edward Pigott', 43000),
(7, 'Galaxia de Bode', 1774, 'Johann Elert Bode', 36000); 

INSERT INTO star (star_id, name, magnitude, mass, galaxy_id)
VALUES
(1, 'Sol', -27, 1, 1),
(2, 'Sirio B', -6, 0.98, 1),
(3, 'Antares', -5.28, 15.5, 1),
(4, 'Betelgeuse',-5.5, 18, 1),
(5, 'Rigel', -6.7, 18, 1),
(6, 'Bellatrix', -2.72, 9, 1),
(7, 'Mintaka', -4.99, 20, 1),
(8, 'Alnilam', -6.95, 30, 1),
(9, 'Alnitak', -5.10, 20, 1),
(10, 'Hatysa', 2.75, 15, 1),
(11, 'Saiph', -4.68, 16, 1),
(12, 'Kepler-452', NULL, 4, 1),
(13, 'Tabit', 3.66, 1.25, 1);

INSERT INTO planet (planet_id, name, diameter_in_km, year_discovered, has_life, star_id)
VALUES
(1, 'Mercurio', 4879, NULL, FALSE, 1),
(2, 'Venus', 12103, NULL, FALSE, 1),
(3, 'Tierra',12756, NULL, TRUE, 1),
(4, 'Marte', 6794, NULL, FALSE, 1),
(5, 'Jupiter', 142984, NULL, FALSE, 1),
(6, 'Saturno', 120536, NULL, FALSE, 1),
(7, 'Urano', 51118, 1781, FALSE, 1),
(8, 'Neptuno', 49572, 1846, FALSE, 1),
(9, 'Kepler-452b', 19113, 2015, NULL, 12),
(10, 'Kepler-1410b', NULL, 2016, NULL, 12),
(11, 'Kepler-438b', NULL, 2015, NULL, 12),
(12, 'Kepler-439b', NULL, 2015, NULL, 12);

INSERT INTO moon (moon_id, name, diameter_in_km, year_discovered, spherical, planet_id)
VALUES
(1, 'Luna', 3475, NULL, TRUE, 3),
(2, 'Fobos', NULL, 1877, FALSE, 4),
(3, 'Deimos', NULL, 1877, FALSE, 4),
(4, 'Ío', 3643, 1610, TRUE, 5),
(5, 'Europa', 3121, 1610, TRUE, 5),
(6, 'Ganimedes', 5268, 1610, TRUE, 5),
(7, 'Calisto', 4820, 1610, TRUE, 5),
(8, 'Titán', 5150, 1655, TRUE, 6),
(9, 'Mimas', 397, 1789, TRUE, 6),
(10, 'Encélado', 504, 1789, TRUE, 6),
(11, 'Tetis', 1059, 1684, TRUE, 6),
(12, 'Dione', 1128, 1684, TRUE, 6),
(13, 'Rea', 1527, 1684, TRUE, 6),
(14, 'Hiperión', NULL, 1848, FALSE, 6),
(15, 'Jápeto', 1436, 1671, TRUE, 6),
(16, 'Febe', 220, 1898, FALSE, 6),
(17, 'Miranda', 472, 1948, TRUE, 7),
(18, 'Ariel', 1158, 1851, TRUE, 7),
(19, 'Umbriel', 1172, 1851, TRUE, 7),
(20, 'Titania', 1577, 1787, TRUE, 7),
(21, 'Oberón', 1523, 1787, TRUE, 7);

INSERT INTO asteroid (asteroid_id, name, diameter_in_km, year_discovered) 
VALUES
(1, 'Ceres', 946, 1801),
(2, 'Vesta', 530, 1807),
(3, 'Palas', 545, 1802);
