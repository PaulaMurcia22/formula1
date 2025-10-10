-- ===========================================
-- RESULTADOS F1 - TEMPORADA 2024
-- Podio (Top 3) con puntos: 1º=25, 2º=18, 3º=15
-- 24 Grandes Premios completos
-- ===========================================


-- =====================
-- Gran Premio de Bahréin 2024
-- =====================

-- 1º Max Verstappen
INSERT INTO Resultado_Carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 1, 'terminado', 25
FROM Carrera c
JOIN Temporada t ON c.id_temporada = t.id_temporada
JOIN Piloto p ON p.nombre = 'Max' AND p.apellido = 'Verstappen'
JOIN Piloto_Temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Bahréin 2024' AND t.anio = 2024;

-- 2º Sergio Pérez
INSERT INTO Resultado_Carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 2, 'terminado', 18
FROM Carrera c
JOIN Temporada t ON c.id_temporada = t.id_temporada
JOIN Piloto p ON p.nombre = 'Sergio' AND p.apellido = 'Pérez'
JOIN Piloto_Temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Bahréin 2024' AND t.anio = 2024;

-- 3º Carlos Sainz
INSERT INTO Resultado_Carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 3, 'terminado', 15
FROM Carrera c
JOIN Temporada t ON c.id_temporada = t.id_temporada
JOIN Piloto p ON p.nombre = 'Carlos' AND p.apellido = 'Sainz'
JOIN Piloto_Temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Bahréin 2024' AND t.anio = 2024;


-- =====================
-- Gran Premio de Arabia Saudí 2024
-- =====================

-- 1º Max Verstappen
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 1, 'terminado', 25
FROM carrera c
JOIN temporada t ON c.id_temporada = t.id_temporada
JOIN piloto p ON p.nombre = 'Max' AND p.apellido = 'Verstappen'
JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Arabia Saudí 2024' AND t.anio = 2024;

-- 2º Sergio Pérez
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 2, 'terminado', 18
FROM carrera c
JOIN temporada t ON c.id_temporada = t.id_temporada
JOIN piloto p ON p.nombre = 'Sergio' AND p.apellido = 'Pérez'
JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Arabia Saudí 2024' AND t.anio = 2024;

-- 3º Charles Leclerc
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 3, 'terminado', 16
FROM carrera c
JOIN temporada t ON c.id_temporada = t.id_temporada
JOIN piloto p ON p.nombre = 'Charles' AND p.apellido = 'Leclerc'
JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Arabia Saudí 2024' AND t.anio = 2024;

-- =====================
-- Gran Premio de Australia 2024
-- =====================

-- 1º Carlos Sainz
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 1, 'terminado', 25
FROM carrera c
JOIN temporada t ON c.id_temporada = t.id_temporada
JOIN piloto p ON p.nombre = 'Carlos' AND p.apellido = 'Sainz'
JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Australia 2024' AND t.anio = 2024;

-- 2º Charles Leclerc
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 2, 'terminado', 19
FROM carrera c
JOIN temporada t ON c.id_temporada = t.id_temporada
JOIN piloto p ON p.nombre = 'Charles' AND p.apellido = 'Leclerc'
JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Australia 2024' AND t.anio = 2024;

-- 3º Lando Norris
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 3, 'terminado', 15
FROM carrera c
JOIN temporada t ON c.id_temporada = t.id_temporada
JOIN piloto p ON p.nombre = 'Lando' AND p.apellido = 'Norris'
JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Australia 2024' AND t.anio = 2024;

-- =====================
-- Gran Premio de Japón 2024
-- =====================

-- 1º Max Verstappen
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 1, 'terminado', 26
FROM carrera c
JOIN temporada t ON c.id_temporada = t.id_temporada
JOIN piloto p ON p.nombre = 'Max' AND p.apellido = 'Verstappen'
JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Japón 2024' AND t.anio = 2024;

-- 2º Sergio Pérez
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 2, 'terminado', 18
FROM carrera c
JOIN temporada t ON c.id_temporada = t.id_temporada
JOIN piloto p ON p.nombre = 'Sergio' AND p.apellido = 'Pérez'
JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Japón 2024' AND t.anio = 2024;

-- 3º Carlos Sainz
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 3, 'terminado', 15
FROM carrera c
JOIN temporada t ON c.id_temporada = t.id_temporada
JOIN piloto p ON p.nombre = 'Carlos' AND p.apellido = 'Sainz'
JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Japón 2024' AND t.anio = 2024;

-- =====================
-- Gran Premio de China 2024
-- =====================

-- 1º Max Verstappen
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 1, 'terminado', 25
FROM carrera c
JOIN temporada t ON c.id_temporada = t.id_temporada
JOIN piloto p ON p.nombre = 'Max' AND p.apellido = 'Verstappen'
JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de China 2024' AND t.anio = 2024;

-- 2º Lando Norris
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 2, 'terminado', 18
FROM carrera c
JOIN temporada t ON c.id_temporada = t.id_temporada
JOIN piloto p ON p.nombre = 'Lando' AND p.apellido = 'Norris'
JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de China 2024' AND t.anio = 2024;

-- 3º Sergio Pérez
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 3, 'terminado', 15
FROM carrera c
JOIN temporada t ON c.id_temporada = t.id_temporada
JOIN piloto p ON p.nombre = 'Sergio' AND p.apellido = 'Pérez'
JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de China 2024' AND t.anio = 2024;

-- =====================
-- Gran Premio de Miami 2024
-- =====================

-- 1º Lando Norris
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 1, 'terminado', 25
FROM carrera c
JOIN temporada t ON c.id_temporada = t.id_temporada
JOIN piloto p ON p.nombre = 'Lando' AND p.apellido = 'Norris'
JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Miami 2024' AND t.anio = 2024;

-- 2º Max Verstappen
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 2, 'terminado', 18
FROM carrera c
JOIN temporada t ON c.id_temporada = t.id_temporada
JOIN piloto p ON p.nombre = 'Max' AND p.apellido = 'Verstappen'
JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Miami 2024' AND t.anio = 2024;

-- 3º Charles Leclerc
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 3, 'terminado', 15
FROM carrera c
JOIN temporada t ON c.id_temporada = t.id_temporada
JOIN piloto p ON p.nombre = 'Charles' AND p.apellido = 'Leclerc'
JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Miami 2024' AND t.anio = 2024;

-- =====================
-- Gran Premio de Emilia-Romaña 2024
-- =====================

-- 1º Max Verstappen
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 1, 'terminado', 25
FROM carrera c
JOIN temporada t ON c.id_temporada = t.id_temporada
JOIN piloto p ON p.nombre = 'Max' AND p.apellido = 'Verstappen'
JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Emilia-Romaña 2024' AND t.anio = 2024;

-- 2º Lando Norris
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 2, 'terminado', 18
FROM carrera c
JOIN temporada t ON c.id_temporada = t.id_temporada
JOIN piloto p ON p.nombre = 'Lando' AND p.apellido = 'Norris'
JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Emilia-Romaña 2024' AND t.anio = 2024;

-- 3º Charles Leclerc
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 3, 'terminado', 15
FROM carrera c
JOIN temporada t ON c.id_temporada = t.id_temporada
JOIN piloto p ON p.nombre = 'Charles' AND p.apellido = 'Leclerc'
JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Emilia-Romaña 2024' AND t.anio = 2024;

-- =====================
-- Gran Premio de Mónaco 2024
-- =====================

-- 1º Charles Leclerc
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 1, 'terminado', 25
FROM carrera c
JOIN temporada t ON c.id_temporada = t.id_temporada
JOIN piloto p ON p.nombre = 'Charles' AND p.apellido = 'Leclerc'
JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Mónaco 2024' AND t.anio = 2024;

-- 2º Oscar Piastri
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 2, 'terminado', 18
FROM carrera c
JOIN temporada t ON c.id_temporada = t.id_temporada
JOIN piloto p ON p.nombre = 'Oscar' AND p.apellido = 'Piastri'
JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Mónaco 2024' AND t.anio = 2024;

-- 3º Carlos Sainz
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 3, 'terminado', 15
FROM carrera c
JOIN temporada t ON c.id_temporada = t.id_temporada
JOIN piloto p ON p.nombre = 'Carlos' AND p.apellido = 'Sainz'
JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Mónaco 2024' AND t.anio = 2024;

-- =====================
-- Gran Premio de Canadá 2024
-- =====================

-- 1º Max Verstappen
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 1, 'terminado', 25
FROM carrera c
JOIN temporada t ON c.id_temporada = t.id_temporada
JOIN piloto p ON p.nombre = 'Max' AND p.apellido = 'Verstappen'
JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Canadá 2024' AND t.anio = 2024;

-- 2º Lando Norris
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 2, 'terminado', 18
FROM carrera c
JOIN temporada t ON c.id_temporada = t.id_temporada
JOIN piloto p ON p.nombre = 'Lando' AND p.apellido = 'Norris'
JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Canadá 2024' AND t.anio = 2024;

-- 3º George Russell
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 3, 'terminado', 15
FROM carrera c
JOIN temporada t ON c.id_temporada = t.id_temporada
JOIN piloto p ON p.nombre = 'George' AND p.apellido = 'Russell'
JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Canadá 2024' AND t.anio = 2024;

-- =====================
-- Gran Premio de España 2024
-- =====================

-- 1º Max Verstappen
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 1, 'terminado', 25
FROM carrera c
JOIN temporada t ON c.id_temporada = t.id_temporada
JOIN piloto p ON p.nombre = 'Max' AND p.apellido = 'Verstappen'
JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de España 2024' AND t.anio = 2024;

-- 2º Lando Norris
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 2, 'terminado', 19
FROM carrera c
JOIN temporada t ON c.id_temporada = t.id_temporada
JOIN piloto p ON p.nombre = 'Lando' AND p.apellido = 'Norris'
JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de España 2024' AND t.anio = 2024;

-- 3º Lewis Hamilton
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 3, 'terminado', 15
FROM carrera c
JOIN temporada t ON c.id_temporada = t.id_temporada
JOIN piloto p ON p.nombre = 'Lewis' AND p.apellido = 'Hamilton'
JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de España 2024' AND t.anio = 2024;

-- =====================
-- Gran Premio de Austria 2024
-- =====================

-- 1º George Russell
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 1, 'terminado', 25
FROM carrera c
JOIN temporada t ON c.id_temporada = t.id_temporada
JOIN piloto p ON p.nombre = 'George' AND p.apellido = 'Russell'
JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Austria 2024' AND t.anio = 2024;

-- 2º Oscar Piastri
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 2, 'terminado', 18
FROM carrera c
JOIN temporada t ON c.id_temporada = t.id_temporada
JOIN piloto p ON p.nombre = 'Oscar' AND p.apellido = 'Piastri'
JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Austria 2024' AND t.anio = 2024;

-- 3º Carlos Sainz
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 3, 'terminado', 15
FROM carrera c
JOIN temporada t ON c.id_temporada = t.id_temporada
JOIN piloto p ON p.nombre = 'Carlos' AND p.apellido = 'Sainz'
JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Austria 2024' AND t.anio = 2024;

-- =====================
-- Gran Premio de Gran Bretaña 2024
-- =====================

-- 1º Lewis Hamilton,
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 1, 'terminado', 25
FROM carrera c
JOIN temporada t ON c.id_temporada = t.id_temporada
JOIN piloto p ON p.nombre = 'Lewis' AND p.apellido = 'Hamilton'
JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Gran Bretaña 2024' AND t.anio = 2024;

-- 2º Max Verstappen
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 2, 'terminado', 18
FROM carrera c
JOIN temporada t ON c.id_temporada = t.id_temporada
JOIN piloto p ON p.nombre = 'Max' AND p.apellido = 'Verstappen'
JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Gran Bretaña 2024' AND t.anio = 2024;

-- 3º Lando Norris
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 3, 'terminado', 15
FROM carrera c
JOIN temporada t ON c.id_temporada = t.id_temporada
JOIN piloto p ON p.nombre = 'Lando' AND p.apellido = 'Norris'
JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Gran Bretaña 2024' AND t.anio = 2024;

-- =====================
-- Gran Premio de Hungría 2024
-- =====================

-- 1º Oscar Piastri
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 1, 'terminado', 25
FROM carrera c
JOIN temporada t ON c.id_temporada = t.id_temporada
JOIN piloto p ON p.nombre = 'Oscar' AND p.apellido = 'Piastri'
JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Hungría 2024' AND t.anio = 2024;

-- 2º Lando Norris
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 2, 'terminado', 18
FROM carrera c
JOIN temporada t ON c.id_temporada = t.id_temporada
JOIN piloto p ON p.nombre = 'Lando' AND p.apellido = 'Norris'
JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Hungría 2024' AND t.anio = 2024;

-- 3º Lewis Hamilton
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 3, 'terminado', 15
FROM carrera c
JOIN temporada t ON c.id_temporada = t.id_temporada
JOIN piloto p ON p.nombre = 'Lewis' AND p.apellido = 'Hamilton'
JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Hungría 2024' AND t.anio = 2024;

-- =====================
-- Gran Premio de Bélgica 2024
-- =====================

-- 1º Lewis Hamilton
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 1, 'terminado', 25
FROM carrera c
JOIN temporada t ON c.id_temporada = t.id_temporada
JOIN piloto p ON p.nombre = 'Lewis' AND p.apellido = 'Hamilton'
JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Bélgica 2024' AND t.anio = 2024;

-- 2º Oscar Piastri
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 2, 'terminado', 18
FROM carrera c
JOIN temporada t ON c.id_temporada = t.id_temporada
JOIN piloto p ON p.nombre = 'Oscar' AND p.apellido = 'Piastri'
JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Bélgica 2024' AND t.anio = 2024;

-- 3º Charles Leclerc
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 3, 'terminado', 15
FROM carrera c
JOIN temporada t ON c.id_temporada = t.id_temporada
JOIN piloto p ON p.nombre = 'Charles' AND p.apellido = 'Leclerc'
JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Bélgica 2024' AND t.anio = 2024;

-- =====================
-- Gran Premio de Países Bajos 2024
-- =====================

-- 1º Lando Norris
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 1, 'terminado', 26
FROM carrera c
JOIN temporada t ON c.id_temporada = t.id_temporada
JOIN piloto p ON p.nombre = 'Lando' AND p.apellido = 'Norris'
JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Países Bajos 2024' AND t.anio = 2024;

-- 2º Max Verstappen
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 2, 'terminado', 18
FROM carrera c
JOIN temporada t ON c.id_temporada = t.id_temporada
JOIN piloto p ON p.nombre = 'Max' AND p.apellido = 'Verstappen'
JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Países Bajos 2024' AND t.anio = 2024;

-- 3º Charles Leclerc
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 3, 'terminado', 15
FROM carrera c
JOIN temporada t ON c.id_temporada = t.id_temporada
JOIN piloto p ON p.nombre = 'Charles' AND p.apellido = 'Leclerc'
JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Países Bajos 2024' AND t.anio = 2024;

-- =====================
-- Gran Premio de Italia 2024
-- =====================

-- 1º Charles Leclerc
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 1, 'terminado', 25
FROM carrera c
JOIN temporada t ON c.id_temporada = t.id_temporada
JOIN piloto p ON p.nombre = 'Charles' AND p.apellido = 'Leclerc'
JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Italia 2024' AND t.anio = 2024;

-- 2º Oscar Piastri
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 2, 'terminado', 18
FROM carrera c
JOIN temporada t ON c.id_temporada = t.id_temporada
JOIN piloto p ON p.nombre = 'Oscar' AND p.apellido = 'Piastri'
JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Italia 2024' AND t.anio = 2024;

-- 3º Lando Norris
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 3, 'terminado', 16
FROM carrera c
JOIN temporada t ON c.id_temporada = t.id_temporada
JOIN piloto p ON p.nombre = 'Lando' AND p.apellido = 'Norris'
JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Italia 2024' AND t.anio = 2024;

-- =====================
-- Gran Premio de Azerbaiyán 2024
-- =====================

-- 1º Oscar Piastri
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 1, 'terminado', 25
FROM carrera c
JOIN temporada t ON c.id_temporada = t.id_temporada
JOIN piloto p ON p.nombre = 'Oscar' AND p.apellido = 'Piastri'
JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Azerbaiyán 2024' AND t.anio = 2024;

-- 2º Charles Leclerc
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 2, 'terminado', 18
FROM carrera c
JOIN temporada t ON c.id_temporada = t.id_temporada
JOIN piloto p ON p.nombre = 'Charles' AND p.apellido = 'Leclerc'
JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Azerbaiyán 2024' AND t.anio = 2024;

-- 3º George Russell
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 3, 'terminado', 15
FROM carrera c
JOIN temporada t ON c.id_temporada = t.id_temporada
JOIN piloto p ON p.nombre = 'George' AND p.apellido = 'Russell'
JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Azerbaiyán 2024' AND t.anio = 2024;

-- =====================
-- Gran Premio de Singapur 2024
-- =====================

-- 1º Lando Norris
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 1, 'terminado', 25
FROM carrera c
JOIN temporada t ON c.id_temporada = t.id_temporada
JOIN piloto p ON p.nombre = 'Lando' AND p.apellido = 'Norris'
JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Singapur 2024' AND t.anio = 2024;

-- 2º Max Verstappen
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 2, 'terminado', 18
FROM carrera c
JOIN temporada t ON c.id_temporada = t.id_temporada
JOIN piloto p ON p.nombre = 'Max' AND p.apellido = 'Verstappen'
JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Singapur 2024' AND t.anio = 2024;

-- 3º Oscar Piastri
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 3, 'terminado', 15
FROM carrera c
JOIN temporada t ON c.id_temporada = t.id_temporada
JOIN piloto p ON p.nombre = 'Oscar' AND p.apellido = 'Piastri'
JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Singapur 2024' AND t.anio = 2024;

-- =====================
-- Gran Premio de Estados Unidos 2024
-- =====================

-- 1º Charles Leclerc
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 1, 'terminado', 25
FROM carrera c
JOIN temporada t ON c.id_temporada = t.id_temporada
JOIN piloto p ON p.nombre = 'Charles' AND p.apellido = 'Leclerc'
JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Estados Unidos 2024' AND t.anio = 2024;

-- 2º Carlos Sainz
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 2, 'terminado', 18
FROM carrera c
JOIN temporada t ON c.id_temporada = t.id_temporada
JOIN piloto p ON p.nombre = 'Carlos' AND p.apellido = 'Sainz'
JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Estados Unidos 2024' AND t.anio = 2024;

-- 3º Max Verstappen
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 3, 'terminado', 15
FROM carrera c
JOIN temporada t ON c.id_temporada = t.id_temporada
JOIN piloto p ON p.nombre = 'Max' AND p.apellido = 'Verstappen'
JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Estados Unidos 2024' AND t.anio = 2024;

-- =====================
-- Gran Premio de México 2024
-- =====================

-- 1º Carlos Sainz
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 1, 'terminado', 25
FROM carrera c
JOIN temporada t ON c.id_temporada = t.id_temporada
JOIN piloto p ON p.nombre = 'Carlos' AND p.apellido = 'Sainz'
JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de México 2024' AND t.anio = 2024;

-- 2º Lando Norris
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 2, 'terminado', 18
FROM carrera c
JOIN temporada t ON c.id_temporada = t.id_temporada
JOIN piloto p ON p.nombre = 'Lando' AND p.apellido = 'Norris'
JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de México 2024' AND t.anio = 2024;

-- 3º Charles Leclerc
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 3, 'terminado', 16
FROM carrera c
JOIN temporada t ON c.id_temporada = t.id_temporada
JOIN piloto p ON p.nombre = 'Charles' AND p.apellido = 'Leclerc'
JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de México 2024' AND t.anio = 2024;

-- =====================
-- Gran Premio de Brasil 2024
-- =====================

-- 1º Max Verstappen
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 1, 'terminado', 26
FROM carrera c
JOIN temporada t ON c.id_temporada = t.id_temporada
JOIN piloto p ON p.nombre = 'Max' AND p.apellido = 'Verstappen'
JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Brasil 2024' AND t.anio = 2024;

-- 2º Esteban Ocon
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 2, 'terminado', 18
FROM carrera c
JOIN temporada t ON c.id_temporada = t.id_temporada
JOIN piloto p ON p.nombre = 'Esteban' AND p.apellido = 'Ocon'
JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Brasil 2024' AND t.anio = 2024;

-- 3º Pierre Gasly
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 3, 'terminado', 15
FROM carrera c
JOIN temporada t ON c.id_temporada = t.id_temporada
JOIN piloto p ON p.nombre = 'Pierre' AND p.apellido = 'Gasly'
JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Brasil 2024' AND t.anio = 2024;

-- =====================
-- Gran Premio de Las Vegas 2024
-- =====================

-- 1º George Russell
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 1, 'terminado', 25
FROM carrera c
JOIN temporada t ON c.id_temporada = t.id_temporada
JOIN piloto p ON p.nombre = 'George' AND p.apellido = 'Russell'
JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Las Vegas 2024' AND t.anio = 2024;

-- 2º Lewis Hamilton
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 2, 'terminado', 18
FROM carrera c
JOIN temporada t ON c.id_temporada = t.id_temporada
JOIN piloto p ON p.nombre = 'Lewis' AND p.apellido = 'Hamilton'
JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Las Vegas 2024' AND t.anio = 2024;

-- 3º Carlos Sainz
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 3, 'terminado', 15
FROM carrera c
JOIN temporada t ON c.id_temporada = t.id_temporada
JOIN piloto p ON p.nombre = 'Carlos' AND p.apellido = 'Sainz'
JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Las Vegas 2024' AND t.anio = 2024;

-- =====================
-- Gran Premio de Qatar 2024
-- =====================

-- 1º Max Verstappen
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 1, 'terminado', 25
FROM carrera c
JOIN temporada t ON c.id_temporada = t.id_temporada
JOIN piloto p ON p.nombre = 'Max' AND p.apellido = 'Verstappen'
JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Qatar 2024' AND t.anio = 2024;

-- 2º Charles Leclerc 
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 2, 'terminado', 18
FROM carrera c
JOIN temporada t ON c.id_temporada = t.id_temporada
JOIN piloto p ON p.nombre = 'Charles' AND p.apellido = 'Leclerc'
JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Qatar 2024' AND t.anio = 2024;

-- 3º Oscar Piastri
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 3, 'terminado', 15
FROM carrera c
JOIN temporada t ON c.id_temporada = t.id_temporada
JOIN piloto p ON p.nombre = 'Oscar' AND p.apellido = 'Piastri'
JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Qatar 2024' AND t.anio = 2024;

-- =====================
-- Gran Premio de Abu Dabi 2024
-- =====================

-- 1º Lando Norris
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 1, 'terminado', 25
FROM carrera c
JOIN temporada t ON c.id_temporada = t.id_temporada
JOIN piloto p ON p.nombre = 'Lando' AND p.apellido = 'Norris'
JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Abu Dabi 2024' AND t.anio = 2024;

-- 2º Carlos Sainz
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 2, 'terminado', 18
FROM carrera c
JOIN temporada t ON c.id_temporada = t.id_temporada
JOIN piloto p ON p.nombre = 'Carlos' AND p.apellido = 'Sainz'
JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Abu Dabi 2024' AND t.anio = 2024;

-- 3º Charles Leclerc
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 3, 'terminado', 15
FROM carrera c
JOIN temporada t ON c.id_temporada = t.id_temporada
JOIN piloto p ON p.nombre = 'Charles' AND p.apellido = 'Leclerc'
JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Abu Dabi 2024' AND t.anio = 2024;
