-- ===========================================
-- PLANTILLA DE RESULTADOS F1 - TEMPORADA 2025
-- Solo Podio (Top 3), puntos: 25, 18, 15
-- Para rellenar con los nombres y apellidos reales de los pilotos
-- ===========================================


-- =====================
-- Gran Premio de Australia 2025
-- =====================

-- 1º Lando Norris
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 1, 'terminado', 25
FROM carrera c
JOIN temporada t ON c.id_temporada = t.id_temporada
JOIN piloto p ON p.nombre = 'Lando' AND p.apellido = 'Norris'
JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Australia 2025' AND t.anio = 2025;

-- 2º Max Verstappen
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 2, 'terminado', 18
FROM carrera c
JOIN temporada t ON c.id_temporada = t.id_temporada
JOIN piloto p ON p.nombre = 'Max' AND p.apellido = 'Verstappen'
JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Australia 2025' AND t.anio = 2025;

-- 3º George Russell
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 3, 'terminado', 15
FROM carrera c
JOIN temporada t ON c.id_temporada = t.id_temporada
JOIN piloto p ON p.nombre = 'George' AND p.apellido = 'Russell'
JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Australia 2025' AND t.anio = 2025;

-- =====================
-- Gran Premio de China 2025
-- =====================

-- 1º Oscar Piastri 
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 1, 'terminado', 25
FROM carrera c
JOIN temporada t ON c.id_temporada = t.id_temporada
JOIN piloto p ON p.nombre = 'Oscar' AND p.apellido = 'Piastri'
JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de China 2025' AND t.anio = 2025;

-- 2º Lando Norris
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 2, 'terminado', 18
FROM carrera c
JOIN temporada t ON c.id_temporada = t.id_temporada
JOIN piloto p ON p.nombre = 'Lando' AND p.apellido = 'Norris'
JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de China 2025' AND t.anio = 2025;

-- 3º George Russell
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 3, 'terminado', 15
FROM carrera c
JOIN temporada t ON c.id_temporada = t.id_temporada
JOIN piloto p ON p.nombre = 'George' AND p.apellido = 'Russell'
JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de China 2025' AND t.anio = 2025;

-- =====================
-- Gran Premio de Japón 2025
-- =====================

-- 1º Max Verstappen
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 1, 'terminado', 25
FROM carrera c
JOIN temporada t ON c.id_temporada = t.id_temporada
JOIN piloto p ON p.nombre = 'Max' AND p.apellido = 'Verstappen'
JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Japón 2025' AND t.anio = 2025;

-- 2º Lando Norris
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 2, 'terminado', 18
FROM carrera c
JOIN temporada t ON c.id_temporada = t.id_temporada
JOIN piloto p ON p.nombre = 'Lando' AND p.apellido = 'Norris'
JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Japón 2025' AND t.anio = 2025;

-- 3º Oscar Piastri
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 3, 'terminado', 15
FROM carrera c
JOIN temporada t ON c.id_temporada = t.id_temporada
JOIN piloto p ON p.nombre = 'Oscar' AND p.apellido = 'Piastri'
JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Japón 2025' AND t.anio = 2025;

-- =====================
-- Gran Premio de Bahréin 2025
-- =====================

-- 1º Oscar Piastri 
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 1, 'terminado', 25
FROM carrera c
JOIN temporada t ON c.id_temporada = t.id_temporada
JOIN piloto p ON p.nombre = 'Oscar' AND p.apellido = 'Piastri'
JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Bahréin 2025' AND t.anio = 2025;

-- 2º George Russell
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 2, 'terminado', 18
FROM carrera c
JOIN temporada t ON c.id_temporada = t.id_temporada
JOIN piloto p ON p.nombre = 'George' AND p.apellido = 'Russell'
JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Bahréin 2025' AND t.anio = 2025;

-- 3º Lando Norris
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 3, 'terminado', 15
FROM carrera c
JOIN temporada t ON c.id_temporada = t.id_temporada
JOIN piloto p ON p.nombre = 'Lando' AND p.apellido = 'Norris'
JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Bahréin 2025' AND t.anio = 2025;

-- =====================
-- Gran Premio de Arabia Saudí 2025
-- =====================

-- 1º Oscar Piastri
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 1, 'terminado', 25
FROM carrera c
JOIN temporada t ON c.id_temporada = t.id_temporada
JOIN piloto p ON p.nombre = 'Oscar' AND p.apellido = 'Piastri'
JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Arabia Saudí 2025' AND t.anio = 2025;

-- 2º Max Verstappen
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 2, 'terminado', 18
FROM carrera c
JOIN temporada t ON c.id_temporada = t.id_temporada
JOIN piloto p ON p.nombre = 'Max' AND p.apellido = 'Verstappen'
JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Arabia Saudí 2025' AND t.anio = 2025;

-- 3º Charles Leclerc
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 3, 'terminado', 15
FROM carrera c
JOIN temporada t ON c.id_temporada = t.id_temporada
JOIN piloto p ON p.nombre = 'Charles' AND p.apellido = 'Leclerc'
JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Arabia Saudí 2025' AND t.anio = 2025;

-- =====================
-- Gran Premio de Miami 2025
-- =====================

-- 1º Oscar Piastri
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 1, 'terminado', 25
FROM carrera c
JOIN temporada t ON c.id_temporada = t.id_temporada
JOIN piloto p ON p.nombre = 'Oscar' AND p.apellido = 'Piastri'
JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Miami 2025' AND t.anio = 2025;

-- 2º Lando Norris
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 2, 'terminado', 18
FROM carrera c
JOIN temporada t ON c.id_temporada = t.id_temporada
JOIN piloto p ON p.nombre = 'Lando' AND p.apellido = 'Norris'
JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Miami 2025' AND t.anio = 2025;

-- 3º George Russell 
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 3, 'terminado', 15
FROM carrera c
JOIN temporada t ON c.id_temporada = t.id_temporada
JOIN piloto p ON p.nombre = 'George' AND p.apellido = 'Russell'
JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Miami 2025' AND t.anio = 2025;

-- =====================
-- Gran Premio de Emilia-Romaña 2025
-- =====================

-- 1º Max Verstappen
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 1, 'terminado', 25
FROM carrera c
JOIN temporada t ON c.id_temporada = t.id_temporada
JOIN piloto p ON p.nombre = 'Max' AND p.apellido = 'Verstappen'
JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Emilia-Romaña 2025' AND t.anio = 2025;

-- 2º Lando Norris
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 2, 'terminado', 18
FROM carrera c
JOIN temporada t ON c.id_temporada = t.id_temporada
JOIN piloto p ON p.nombre = 'Lando' AND p.apellido = 'Norris'
JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Emilia-Romaña 2025' AND t.anio = 2025;

-- 3º Oscar Piastri
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 3, 'terminado', 15
FROM carrera c
JOIN temporada t ON c.id_temporada = t.id_temporada
JOIN piloto p ON p.nombre = 'Oscar' AND p.apellido = 'Piastri'
JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Emilia-Romaña 2025' AND t.anio = 2025;

-- =====================
-- Gran Premio de Mónaco 2025
-- =====================

-- 1º Lando Norris
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 1, 'terminado', 25
FROM carrera c
JOIN temporada t ON c.id_temporada = t.id_temporada
JOIN piloto p ON p.nombre = 'Lando' AND p.apellido = 'Norris'
JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Mónaco 2025' AND t.anio = 2025;

-- 2º Charles Leclerc
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 2, 'terminado', 18
FROM carrera c
JOIN temporada t ON c.id_temporada = t.id_temporada
JOIN piloto p ON p.nombre = 'Charles' AND p.apellido = 'Leclerc'
JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Mónaco 2025' AND t.anio = 2025;

-- 3º Oscar Piastri
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 3, 'terminado', 15
FROM carrera c
JOIN temporada t ON c.id_temporada = t.id_temporada
JOIN piloto p ON p.nombre = 'v' AND p.apellido = 'Piastri'
JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Mónaco 2025' AND t.anio = 2025;

-- =====================
-- Gran Premio de España 2025
-- =====================

-- 1º Oscar Piastri
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 1, 'terminado', 25
FROM carrera c
JOIN temporada t ON c.id_temporada = t.id_temporada
JOIN piloto p ON p.nombre = 'Oscar' AND p.apellido = 'Piastri'
JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de España 2025' AND t.anio = 2025;

-- 2º Lando Norris
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 2, 'terminado', 18
FROM carrera c
JOIN temporada t ON c.id_temporada = t.id_temporada
JOIN piloto p ON p.nombre = 'Lando' AND p.apellido = 'Norris'
JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de España 2025' AND t.anio = 2025;

-- 3º Charles Leclerc
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 3, 'terminado', 15
FROM carrera c
JOIN temporada t ON c.id_temporada = t.id_temporada
JOIN piloto p ON p.nombre = 'Charles' AND p.apellido = 'Leclerc'
JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de España 2025' AND t.anio = 2025;

-- =====================
-- Gran Premio de Canadá 2025
-- =====================

-- 1º George Russel
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 1, 'terminado', 25
FROM carrera c
JOIN temporada t ON c.id_temporada = t.id_temporada
JOIN piloto p ON p.nombre = 'George' AND p.apellido = 'Russel'
JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Canadá 2025' AND t.anio = 2025;

-- 2º Max Verstappen
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 2, 'terminado', 18
FROM carrera c
JOIN temporada t ON c.id_temporada = t.id_temporada
JOIN piloto p ON p.nombre = 'Max' AND p.apellido = 'Verstappen'
JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Canadá 2025' AND t.anio = 2025;

-- 3º Andrea Kimi Antonelli
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 3, 'terminado', 15
FROM carrera c
JOIN temporada t ON c.id_temporada = t.id_temporada
JOIN piloto p ON p.nombre = 'Andrea Kimi' AND p.apellido = 'Antonelli'
JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Canadá 2025' AND t.anio = 2025;

-- =====================
-- Gran Premio de Austria 2025
-- =====================

-- 1º Lando Norris
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 1, 'terminado', 25
FROM carrera c
JOIN temporada t ON c.id_temporada = t.id_temporada
JOIN piloto p ON p.nombre = 'Lando' AND p.apellido = 'Norris'
JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Austria 2025' AND t.anio = 2025;

-- 2º Oscar Piastri
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 2, 'terminado', 18
FROM carrera c
JOIN temporada t ON c.id_temporada = t.id_temporada
JOIN piloto p ON p.nombre = 'Oscar' AND p.apellido = 'Piastri'
JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Austria 2025' AND t.anio = 2025;

-- 3º Charles Leclerc
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 3, 'terminado', 15
FROM carrera c
JOIN temporada t ON c.id_temporada = t.id_temporada
JOIN piloto p ON p.nombre = 'Charles' AND p.apellido = 'Leclerc'
JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Austria 2025' AND t.anio = 2025;

-- =====================
-- Gran Premio de Gran Bretaña 2025
-- =====================

-- 1º Lando Norris
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 1, 'terminado', 25
FROM carrera c
JOIN temporada t ON c.id_temporada = t.id_temporada
JOIN piloto p ON p.nombre = 'Lando' AND p.apellido = 'Norris'
JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Gran Bretaña 2025' AND t.anio = 2025;

-- 2º Oscar Piastri
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 2, 'terminado', 18
FROM carrera c
JOIN temporada t ON c.id_temporada = t.id_temporada
JOIN piloto p ON p.nombre = 'Oscar' AND p.apellido = 'Piastri'
JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Gran Bretaña 2025' AND t.anio = 2025;

-- 3º Nico Hülkenberg
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 3, 'terminado', 15
FROM carrera c
JOIN temporada t ON c.id_temporada = t.id_temporada
JOIN piloto p ON p.nombre = 'Nico' AND p.apellido = 'Hülkenberg'
JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Gran Bretaña 2025' AND t.anio = 2025;


-- =====================
-- Gran Premio de Belgica 2025
-- =====================

-- 1º Oscar Piastri
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 1, 'terminado', 25
FROM carrera c
JOIN temporada t ON c.id_temporada = t.id_temporada
JOIN piloto p ON p.nombre = 'Oscar' AND p.apellido = 'Piastri'
JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Bélgica 2025' AND t.anio = 2025;

-- 2º Lando Norris
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 2, 'terminado', 18
FROM carrera c
JOIN temporada t ON c.id_temporada = t.id_temporada
JOIN piloto p ON p.nombre = 'Lando' AND p.apellido = 'Norris'
JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Bélgica 2025' AND t.anio = 2025;

-- 3º Charles Leclerc
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 3, 'terminado', 15
FROM carrera c
JOIN temporada t ON c.id_temporada = t.id_temporada
JOIN piloto p ON p.nombre = 'Charles' AND p.apellido = 'Leclerc'
JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Bélgica 2025' AND t.anio = 2025;


-- =====================
-- Gran Premio de Hungría 2025
-- =====================

-- 1º Lando Norris
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 1, 'terminado', 25
FROM carrera c
JOIN temporada t ON c.id_temporada = t.id_temporada
JOIN piloto p ON p.nombre = 'Lando' AND p.apellido = 'Norris'
JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Hungría 2025' AND t.anio = 2025;

-- 2º Oscar Piastri
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 2, 'terminado', 18
FROM carrera c
JOIN temporada t ON c.id_temporada = t.id_temporada
JOIN piloto p ON p.nombre = 'Oscar' AND p.apellido = 'Piastri'
JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Hungría 2025' AND t.anio = 2025;

-- 3º George Russell
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 3, 'terminado', 15
FROM carrera c
JOIN temporada t ON c.id_temporada = t.id_temporada
JOIN piloto p ON p.nombre = 'George' AND p.apellido = 'Russell'
JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Hungría 2025' AND t.anio = 2025;


-- =====================
-- Gran Premio de Países Bajos 2025
-- =====================

-- 1º Oscar Piastri
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 1, 'terminado', 25
FROM carrera c
JOIN temporada t ON c.id_temporada = t.id_temporada
JOIN piloto p ON p.nombre = 'Oscar' AND p.apellido = 'Piastri'
JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Países Bajos 2025' AND t.anio = 2025;

-- 2º Max Verstappen
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 2, 'terminado', 18
FROM carrera c
JOIN temporada t ON c.id_temporada = t.id_temporada
JOIN piloto p ON p.nombre = 'Max' AND p.apellido = 'Verstappen'
JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Países Bajos 2025' AND t.anio = 2025;

-- 3º Isack Hadjar
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 3, 'terminado', 15
FROM carrera c
JOIN temporada t ON c.id_temporada = t.id_temporada
JOIN piloto p ON p.nombre = 'Isack' AND p.apellido = 'Hadjar'
JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Países Bajos 2025' AND t.anio = 2025;

-- =====================
-- Gran Premio de Italia 2025
-- =====================

-- 1º Max Verstappen
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 1, 'terminado', 25
FROM carrera c
JOIN temporada t ON c.id_temporada = t.id_temporada
JOIN piloto p ON p.nombre = 'Max' AND p.apellido = 'Verstappen'
JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Italia 2025' AND t.anio = 2025;

-- 2º Lando Norris
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 2, 'terminado', 18
FROM carrera c
JOIN temporada t ON c.id_temporada = t.id_temporada
JOIN piloto p ON p.nombre = 'Lando' AND p.apellido = 'Norris'
JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Italia 2025' AND t.anio = 2025;

-- 3º Oscar Piastri
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 3, 'terminado', 15
FROM carrera c
JOIN temporada t ON c.id_temporada = t.id_temporada
JOIN piloto p ON p.nombre = 'Oscar' AND p.apellido = 'Piastri'
JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Italia 2025' AND t.anio = 2025;

-- =====================
-- Gran Premio de Azerbaiyán 2025
-- =====================

-- 1º Max Verstappen
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 1, 'terminado', 25
FROM carrera c
JOIN temporada t ON c.id_temporada = t.id_temporada
JOIN piloto p ON p.nombre = 'Max' AND p.apellido = 'Verstappen'
JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Azerbaiyán 2025' AND t.anio = 2025;

-- 2º George Russell
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 2, 'terminado', 18
FROM carrera c
JOIN temporada t ON c.id_temporada = t.id_temporada
JOIN piloto p ON p.nombre = 'George' AND p.apellido = 'Russell'
JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Azerbaiyán 2025' AND t.anio = 2025;

-- 3º Carlos Sainz Jr
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 3, 'terminado', 15
FROM carrera c
JOIN temporada t ON c.id_temporada = t.id_temporada
JOIN piloto p ON p.nombre = 'Carlos' AND p.apellido = 'Sainz Jr'
JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Azerbaiyán 2025' AND t.anio = 2025;

-- =====================
-- Gran Premio de Singapur 2025
-- =====================

-- 1º George Russell
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 1, 'terminado', 25
FROM carrera c
JOIN temporada t ON c.id_temporada = t.id_temporada
JOIN piloto p ON p.nombre = 'George' AND p.apellido = 'Russell'
JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Singapur 2025' AND t.anio = 2025;

-- 2º Max Verstappen
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 2, 'terminado', 18
FROM carrera c
JOIN temporada t ON c.id_temporada = t.id_temporada
JOIN piloto p ON p.nombre = 'Max' AND p.apellido = 'Verstappen'
JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Singapur 2025' AND t.anio = 2025;

-- 3º Lando Norris
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 3, 'terminado', 15
FROM carrera c
JOIN temporada t ON c.id_temporada = t.id_temporada
JOIN piloto p ON p.nombre = 'Lando' AND p.apellido = 'Norris'
JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Singapur 2025' AND t.anio = 2025;

-- =====================
-- Gran Premio de Estados Unidos 2025
-- =====================

-- 1º [NOMBRE PILOTO]
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, NULL, NULL, 'pendiente', 0
FROM carrera c
JOIN temporada t ON c.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Estados Unidos 2025' AND t.anio = 2025;

-- 2º [NOMBRE PILOTO]
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, NULL, NULL, 'pendiente', 0
FROM carrera c
JOIN temporada t ON c.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Estados Unidos 2025' AND t.anio = 2025;

-- 3º [NOMBRE PILOTO]
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, NULL, NULL, 'pendiente', 0
FROM carrera c
JOIN temporada t ON c.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Estados Unidos 2025' AND t.anio = 2025;

-- =====================
-- Gran Premio de México 2025
-- =====================

-- 1º [NOMBRE PILOTO]
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, NULL, NULL, 'pendiente', 0
FROM carrera c
JOIN temporada t ON c.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de México 2025' AND t.anio = 2025;

-- 2º [NOMBRE PILOTO]
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, NULL, NULL, 'pendiente', 0
FROM carrera c
JOIN temporada t ON c.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de México 2025' AND t.anio = 2025;

-- 3º [NOMBRE PILOTO]
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, NULL, NULL, 'pendiente', 0
FROM carrera c
JOIN temporada t ON c.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de México 2025' AND t.anio = 2025;

-- =====================
-- Gran Premio de Brasil 2025
-- =====================

-- 1º [NOMBRE PILOTO]
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, NULL, NULL, 'pendiente', 0
FROM carrera c
JOIN temporada t ON c.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Brasil 2025' AND t.anio = 2025;

-- 2º [NOMBRE PILOTO]
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, NULL, NULL, 'pendiente', 0
FROM carrera c
JOIN temporada t ON c.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Brasil 2025' AND t.anio = 2025;

-- 3º [NOMBRE PILOTO]
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, NULL, NULL, 'pendiente', 0
FROM carrera c
JOIN temporada t ON c.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Brasil 2025' AND t.anio = 2025;

-- =====================
-- Gran Premio de Las Vegas 2025
-- =====================

-- 1º [NOMBRE PILOTO]
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, NULL, NULL, 'pendiente', 0
FROM carrera c
JOIN temporada t ON c.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Las Vegas 2025' AND t.anio = 2025;

-- 2º [NOMBRE PILOTO]
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, NULL, NULL, 'pendiente', 0
FROM carrera c
JOIN temporada t ON c.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Las Vegas 2025' AND t.anio = 2025;

-- 3º [NOMBRE PILOTO]
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, NULL, NULL, 'pendiente', 0
FROM carrera c
JOIN temporada t ON c.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Las Vegas 2025' AND t.anio = 2025;

-- =====================
-- Gran Premio de Qatar 2025
-- =====================

-- 1º [NOMBRE PILOTO]
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, NULL, NULL, 'pendiente', 0
FROM carrera c
JOIN temporada t ON c.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Qatar 2025' AND t.anio = 2025;

-- 2º [NOMBRE PILOTO]
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, NULL, NULL, 'pendiente', 0
FROM carrera c
JOIN temporada t ON c.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Qatar 2025' AND t.anio = 2025;

-- 3º [NOMBRE PILOTO]
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, NULL, NULL, 'pendiente', 0
FROM carrera c
JOIN temporada t ON c.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Qatar 2025' AND t.anio = 2025;

-- =====================
-- Gran Premio de Abu Dabi 2025
-- =====================

-- 1º [NOMBRE PILOTO]
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, NULL, NULL, 'pendiente', 0
FROM carrera c
JOIN temporada t ON c.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Abu Dabi 2025' AND t.anio = 2025;

-- 2º [NOMBRE PILOTO]
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, NULL, NULL, 'pendiente', 0
FROM carrera c
JOIN temporada t ON c.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Abu Dabi 2025' AND t.anio = 2025;

-- 3º [NOMBRE PILOTO]
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, NULL, NULL, 'pendiente', 0
FROM carrera c
JOIN temporada t ON c.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Abu Dabi 2025' AND t.anio = 2025;
