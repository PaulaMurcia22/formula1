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

-- 4º Kimi Antonelli
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 4, 'terminado', 12
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Kimi' AND p.apellido = 'Antonelli'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Australia 2025' AND t.anio = 2025;

-- 5º Alexander Albon
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 5, 'terminado', 10
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Alexander' AND p.apellido = 'Albon'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Australia 2025' AND t.anio = 2025;

-- 6º Lance Stroll
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 6, 'terminado', 8
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Lance' AND p.apellido = 'Stroll'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Australia 2025' AND t.anio = 2025;

-- 7º Nico Hülkenberg
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 7, 'terminado', 6
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Nico' AND p.apellido = 'Hülkenberg'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Australia 2025' AND t.anio = 2025;

-- 8º Charles Leclerc
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 8, 'terminado', 4
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Charles' AND p.apellido = 'Leclerc'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Australia 2025' AND t.anio = 2025;

-- 9º Oscar Piastri
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 9, 'terminado', 2
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Oscar' AND p.apellido = 'Piastri'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Australia 2025' AND t.anio = 2025;

-- 10º Lewis Hamilton
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 10, 'terminado', 1
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Lewis' AND p.apellido = 'Hamilton'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Australia 2025' AND t.anio = 2025;

-- 11º Pierre Gasly
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 11, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Pierre' AND p.apellido = 'Gasly'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Australia 2025' AND t.anio = 2025;

-- 12º Yuki Tsunoda
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 12, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Yuki' AND p.apellido = 'Tsunoda'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Australia 2025' AND t.anio = 2025;

-- 13º Esteban Ocon
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 13, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Esteban' AND p.apellido = 'Ocon'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Australia 2025' AND t.anio = 2025;

-- 14º Oliver Bearman
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 14, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Oliver' AND p.apellido = 'Bearman'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Australia 2025' AND t.anio = 2025;

-- 15º Liam Lawson (DNF)
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 15, 'no terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Liam' AND p.apellido = 'Lawson'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Australia 2025' AND t.anio = 2025;

-- 16º Gabriel Bortoleto (DNF)
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 16, 'no terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Gabriel' AND p.apellido = 'Bortoleto'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Australia 2025' AND t.anio = 2025;

-- 17º Fernando Alonso (DNF)
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 17, 'no terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Fernando' AND p.apellido = 'Alonso'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Australia 2025' AND t.anio = 2025;

-- 18º Carlos Sainz (DNF)
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 18, 'no terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Carlos' AND p.apellido = 'Sainz'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Australia 2025' AND t.anio = 2025;

-- 19º Jack Doohan (DNF)
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 19, 'no terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Jack' AND p.apellido = 'Doohan'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Australia 2025' AND t.anio = 2025;

-- 20º Isack Hadjar (DNS)
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 20, 'no partió', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Isack' AND p.apellido = 'Hadjar'
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

-- 4º Max Verstappen
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 4, 'terminado', 12
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Max' AND p.apellido = 'Verstappen'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de China 2025' AND t.anio = 2025;

-- 5º Esteban Ocon
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 5, 'terminado', 10
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Esteban' AND p.apellido = 'Ocon'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de China 2025' AND t.anio = 2025;

-- 6º Kimi Antonelli
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 6, 'terminado', 8
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Kimi' AND p.apellido = 'Antonelli'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de China 2025' AND t.anio = 2025;

-- 7º Alexander Albon
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 7, 'terminado', 6
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Alexander' AND p.apellido = 'Albon'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de China 2025' AND t.anio = 2025;

-- 8º Oliver Bearman
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 8, 'terminado', 4
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Oliver' AND p.apellido = 'Bearman'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de China 2025' AND t.anio = 2025;

-- 9º Lance Stroll
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 9, 'terminado', 2
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Lance' AND p.apellido = 'Stroll'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de China 2025' AND t.anio = 2025;

-- 10º Carlos Sainz
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 10, 'terminado', 1
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Carlos' AND p.apellido = 'Sainz'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de China 2025' AND t.anio = 2025;

-- 11º Isack Hadjar
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 11, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Isack' AND p.apellido = 'Hadjar'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de China 2025' AND t.anio = 2025;

-- 12º Liam Lawson
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 12, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Liam' AND p.apellido = 'Lawson'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de China 2025' AND t.anio = 2025;

-- 13º Jack Doohan
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 13, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Jack' AND p.apellido = 'Doohan'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de China 2025' AND t.anio = 2025;

-- 14º Gabriel Bortoleto
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 14, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Gabriel' AND p.apellido = 'Bortoleto'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de China 2025' AND t.anio = 2025;

-- 15º Nico Hülkenberg
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 15, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Nico' AND p.apellido = 'Hülkenberg'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de China 2025' AND t.anio = 2025;

-- 16º Yuki Tsunoda
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 16, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Yuki' AND p.apellido = 'Tsunoda'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de China 2025' AND t.anio = 2025;

-- 17º Fernando Alonso (DNF)
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 17, 'no terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Fernando' AND p.apellido = 'Alonso'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de China 2025' AND t.anio = 2025;

-- 18º Charles Leclerc (DSQ)
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 18, 'descalificado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Charles' AND p.apellido = 'Leclerc'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de China 2025' AND t.anio = 2025;

-- 19º Lewis Hamilton (DSQ)
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 19, 'descalificado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Lewis' AND p.apellido = 'Hamilton'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de China 2025' AND t.anio = 2025;

-- 20º Pierre Gasly (DSQ)
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 20, 'descalificado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Pierre' AND p.apellido = 'Gasly'
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

-- 4º Charles Leclerc
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 4, 'terminado', 12
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Charles' AND p.apellido = 'Leclerc'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Japón 2025' AND t.anio = 2025;

-- 5º George Russell
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 5, 'terminado', 10
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'George' AND p.apellido = 'Russell'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Japón 2025' AND t.anio = 2025;

-- 6º Kimi Antonelli
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 6, 'terminado', 8
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Kimi' AND p.apellido = 'Antonelli'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Japón 2025' AND t.anio = 2025;

-- 7º Lewis Hamilton
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 7, 'terminado', 6
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Lewis' AND p.apellido = 'Hamilton'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Japón 2025' AND t.anio = 2025;

-- 8º Isack Hadjar
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 8, 'terminado', 4
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Isack' AND p.apellido = 'Hadjar'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Japón 2025' AND t.anio = 2025;

-- 9º Alexander Albon
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 9, 'terminado', 2
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Alexander' AND p.apellido = 'Albon'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Japón 2025' AND t.anio = 2025;

-- 10º Oliver Bearman
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 10, 'terminado', 1
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Oliver' AND p.apellido = 'Bearman'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Japón 2025' AND t.anio = 2025;

-- 11º Fernando Alonso
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 11, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Fernando' AND p.apellido = 'Alonso'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Japón 2025' AND t.anio = 2025;

-- 12º Yuki Tsunoda
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 12, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Yuki' AND p.apellido = 'Tsunoda'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Japón 2025' AND t.anio = 2025;

-- 13º Pierre Gasly
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 13, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Pierre' AND p.apellido = 'Gasly'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Japón 2025' AND t.anio = 2025;

-- 14º Carlos Sainz
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 14, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Carlos' AND p.apellido = 'Sainz'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Japón 2025' AND t.anio = 2025;

-- 15º Jack Doohan
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 15, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Jack' AND p.apellido = 'Doohan'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Japón 2025' AND t.anio = 2025;

-- 16º Nico Hülkenberg
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 16, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Nico' AND p.apellido = 'Hülkenberg'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Japón 2025' AND t.anio = 2025;

-- 17º Liam Lawson
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 17, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Liam' AND p.apellido = 'Lawson'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Japón 2025' AND t.anio = 2025;

-- 18º Esteban Ocon
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 18, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Esteban' AND p.apellido = 'Ocon'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Japón 2025' AND t.anio = 2025;

-- 19º Gabriel Bortoleto
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 19, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Gabriel' AND p.apellido = 'Bortoleto'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Japón 2025' AND t.anio = 2025;

-- 20º Lance Stroll (+1 vuelta)
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 20, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Lance' AND p.apellido = 'Stroll'
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

-- 4º Charles Leclerc
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 4, 'terminado', 12
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Charles' AND p.apellido = 'Leclerc'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Bahréin 2025' AND t.anio = 2025;

-- 5º Lewis Hamilton
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 5, 'terminado', 10
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Lewis' AND p.apellido = 'Hamilton'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Bahréin 2025' AND t.anio = 2025;

-- 6º Max Verstappen
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 6, 'terminado', 8
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Max' AND p.apellido = 'Verstappen'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Bahréin 2025' AND t.anio = 2025;

-- 7º Pierre Gasly
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 7, 'terminado', 6
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Pierre' AND p.apellido = 'Gasly'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Bahréin 2025' AND t.anio = 2025;

-- 8º Esteban Ocon
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 8, 'terminado', 4
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Esteban' AND p.apellido = 'Ocon'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Bahréin 2025' AND t.anio = 2025;

-- 9º Yuki Tsunoda
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 9, 'terminado', 2
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Yuki' AND p.apellido = 'Tsunoda'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Bahréin 2025' AND t.anio = 2025;

-- 10º Oliver Bearman
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 10, 'terminado', 1
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Oliver' AND p.apellido = 'Bearman'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Bahréin 2025' AND t.anio = 2025;

-- 11º Kimi Antonelli
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 11, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Kimi' AND p.apellido = 'Antonelli'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Bahréin 2025' AND t.anio = 2025;

-- 12º Alexander Albon
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 12, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Alexander' AND p.apellido = 'Albon'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Bahréin 2025' AND t.anio = 2025;

-- 13º Isack Hadjar
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 13, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Isack' AND p.apellido = 'Hadjar'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Bahréin 2025' AND t.anio = 2025;

-- 14º Jack Doohan
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 14, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Jack' AND p.apellido = 'Doohan'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Bahréin 2025' AND t.anio = 2025;

-- 15º Fernando Alonso
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 15, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Fernando' AND p.apellido = 'Alonso'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Bahréin 2025' AND t.anio = 2025;

-- 16º Liam Lawson
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 16, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Liam' AND p.apellido = 'Lawson'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Bahréin 2025' AND t.anio = 2025;

-- 17º Lance Stroll
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 17, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Lance' AND p.apellido = 'Stroll'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Bahréin 2025' AND t.anio = 2025;

-- 18º Gabriel Bortoleto
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 18, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Gabriel' AND p.apellido = 'Bortoleto'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Bahréin 2025' AND t.anio = 2025;

-- 19º Carlos Sainz (DNF)
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 19, 'no terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Carlos' AND p.apellido = 'Sainz'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Bahréin 2025' AND t.anio = 2025;

-- 20º Nico Hülkenberg (DSQ)
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 20, 'descalificado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Nico' AND p.apellido = 'Hülkenberg'
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

-- 4º Lando Norris
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 4, 'terminado', 12
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Lando' AND p.apellido = 'Norris'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Arabia Saudí 2025' AND t.anio = 2025;

-- 5º George Russell
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 5, 'terminado', 10
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'George' AND p.apellido = 'Russell'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Arabia Saudí 2025' AND t.anio = 2025;

-- 6º Kimi Antonelli
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 6, 'terminado', 8
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Kimi' AND p.apellido = 'Antonelli'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Arabia Saudí 2025' AND t.anio = 2025;

-- 7º Lewis Hamilton
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 7, 'terminado', 6
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Lewis' AND p.apellido = 'Hamilton'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Arabia Saudí 2025' AND t.anio = 2025;

-- 8º Carlos Sainz
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 8, 'terminado', 4
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Carlos' AND p.apellido = 'Sainz'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Arabia Saudí 2025' AND t.anio = 2025;

-- 9º Alexander Albon
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 9, 'terminado', 2
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Alexander' AND p.apellido = 'Albon'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Arabia Saudí 2025' AND t.anio = 2025;

-- 10º Isack Hadjar
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 10, 'terminado', 1
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Isack' AND p.apellido = 'Hadjar'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Arabia Saudí 2025' AND t.anio = 2025;

-- 11º Fernando Alonso
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 11, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Fernando' AND p.apellido = 'Alonso'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Arabia Saudí 2025' AND t.anio = 2025;

-- 12º Liam Lawson
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 12, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Liam' AND p.apellido = 'Lawson'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Arabia Saudí 2025' AND t.anio = 2025;

-- 13º Oliver Bearman
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 13, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Oliver' AND p.apellido = 'Bearman'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Arabia Saudí 2025' AND t.anio = 2025;

-- 14º Esteban Ocon
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 14, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Esteban' AND p.apellido = 'Ocon'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Arabia Saudí 2025' AND t.anio = 2025;

-- 15º Nico Hülkenberg
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 15, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Nico' AND p.apellido = 'Hülkenberg'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Arabia Saudí 2025' AND t.anio = 2025;

-- 16º Lance Stroll
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 16, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Lance' AND p.apellido = 'Stroll'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Arabia Saudí 2025' AND t.anio = 2025;

-- 17º Jack Doohan
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 17, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Jack' AND p.apellido = 'Doohan'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Arabia Saudí 2025' AND t.anio = 2025;

-- 18º Gabriel Bortoleto
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 18, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Gabriel' AND p.apellido = 'Bortoleto'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Arabia Saudí 2025' AND t.anio = 2025;

-- 19º Yuki Tsunoda (DNF)
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 19, 'no terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Yuki' AND p.apellido = 'Tsunoda'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Arabia Saudí 2025' AND t.anio = 2025;

-- 20º Pierre Gasly (DNF)
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 20, 'no terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Pierre' AND p.apellido = 'Gasly'
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

-- 4º Max Verstappen
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 4, 'terminado', 12
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Max' AND p.apellido = 'Verstappen'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Miami 2025' AND t.anio = 2025;

-- 5º Alexander Albon
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 5, 'terminado', 10
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Alexander' AND p.apellido = 'Albon'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Miami 2025' AND t.anio = 2025;

-- 6º Kimi Antonelli
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 6, 'terminado', 8
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Kimi' AND p.apellido = 'Antonelli'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Miami 2025' AND t.anio = 2025;

-- 7º Charles Leclerc
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 7, 'terminado', 6
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Charles' AND p.apellido = 'Leclerc'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Miami 2025' AND t.anio = 2025;

-- 8º Lewis Hamilton
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 8, 'terminado', 4
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Lewis' AND p.apellido = 'Hamilton'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Miami 2025' AND t.anio = 2025;

-- 9º Carlos Sainz
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 9, 'terminado', 2
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Carlos' AND p.apellido = 'Sainz'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Miami 2025' AND t.anio = 2025;

-- 10º Yuki Tsunoda
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 10, 'terminado', 1
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Yuki' AND p.apellido = 'Tsunoda'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Miami 2025' AND t.anio = 2025;

-- 11º Isack Hadjar
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 11, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Isack' AND p.apellido = 'Hadjar'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Miami 2025' AND t.anio = 2025;

-- 12º Esteban Ocon
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 12, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Esteban' AND p.apellido = 'Ocon'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Miami 2025' AND t.anio = 2025;

-- 13º Pierre Gasly
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 13, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Pierre' AND p.apellido = 'Gasly'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Miami 2025' AND t.anio = 2025;

-- 14º Nico Hülkenberg
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 14, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Nico' AND p.apellido = 'Hülkenberg'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Miami 2025' AND t.anio = 2025;

-- 15º Fernando Alonso
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 15, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Fernando' AND p.apellido = 'Alonso'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Miami 2025' AND t.anio = 2025;

-- 16º Lance Stroll
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 16, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Lance' AND p.apellido = 'Stroll'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Miami 2025' AND t.anio = 2025;

-- 17º Liam Lawson (DNF)
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 17, 'no terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Liam' AND p.apellido = 'Lawson'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Miami 2025' AND t.anio = 2025;

-- 18º Gabriel Bortoleto (DNF)
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 18, 'no terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Gabriel' AND p.apellido = 'Bortoleto'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Miami 2025' AND t.anio = 2025;

-- 19º Oliver Bearman (DNF)
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 19, 'no terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Oliver' AND p.apellido = 'Bearman'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Miami 2025' AND t.anio = 2025;

-- 20º Jack Doohan (DNF)
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 20, 'no terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Jack' AND p.apellido = 'Doohan'
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

-- 4º Lewis Hamilton
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 4, 'terminado', 12
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Lewis' AND p.apellido = 'Hamilton'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Emilia-Romaña 2025' AND t.anio = 2025;

-- 5º Alexander Albon
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 5, 'terminado', 10
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Alexander' AND p.apellido = 'Albon'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Emilia-Romaña 2025' AND t.anio = 2025;

-- 6º Charles Leclerc
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 6, 'terminado', 8
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Charles' AND p.apellido = 'Leclerc'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Emilia-Romaña 2025' AND t.anio = 2025;

-- 7º George Russell
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 7, 'terminado', 6
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'George' AND p.apellido = 'Russell'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Emilia-Romaña 2025' AND t.anio = 2025;

-- 8º Carlos Sainz
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 8, 'terminado', 4
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Carlos' AND p.apellido = 'Sainz'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Emilia-Romaña 2025' AND t.anio = 2025;

-- 9º Isack Hadjar
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 9, 'terminado', 2
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Isack' AND p.apellido = 'Hadjar'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Emilia-Romaña 2025' AND t.anio = 2025;

-- 10º Yuki Tsunoda
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 10, 'terminado', 1
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Yuki' AND p.apellido = 'Tsunoda'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Emilia-Romaña 2025' AND t.anio = 2025;

-- 11º Fernando Alonso
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 11, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Fernando' AND p.apellido = 'Alonso'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Emilia-Romaña 2025' AND t.anio = 2025;

-- 12º Nico Hülkenberg
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 12, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Nico' AND p.apellido = 'Hülkenberg'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Emilia-Romaña 2025' AND t.anio = 2025;

-- 13º Pierre Gasly
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 13, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Pierre' AND p.apellido = 'Gasly'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Emilia-Romaña 2025' AND t.anio = 2025;

-- 14º Liam Lawson
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 14, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Liam' AND p.apellido = 'Lawson'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Emilia-Romaña 2025' AND t.anio = 2025;

-- 15º Lance Stroll
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 15, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Lance' AND p.apellido = 'Stroll'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Emilia-Romaña 2025' AND t.anio = 2025;

-- 16º Franco Colapinto
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 16, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Franco' AND p.apellido = 'Colapinto'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Emilia-Romaña 2025' AND t.anio = 2025;

-- 17º Oliver Bearman
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 17, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Oliver' AND p.apellido = 'Bearman'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Emilia-Romaña 2025' AND t.anio = 2025;

-- 18º Gabriel Bortoleto
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 18, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Gabriel' AND p.apellido = 'Bortoleto'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Emilia-Romaña 2025' AND t.anio = 2025;

-- 19º Kimi Antonelli (DNF)
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 19, 'no terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Kimi' AND p.apellido = 'Antonelli'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Emilia-Romaña 2025' AND t.anio = 2025;

-- 20º Esteban Ocon (DNF)
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 20, 'no terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Esteban' AND p.apellido = 'Ocon'
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
         JOIN piloto p ON p.nombre = 'Oscar' AND p.apellido = 'Piastri'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Mónaco 2025' AND t.anio = 2025;

-- 4º Max Verstappen
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 4, 'terminado', 12
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Max' AND p.apellido = 'Verstappen'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Mónaco 2025' AND t.anio = 2025;

-- 5º Lewis Hamilton
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 5, 'terminado', 10
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Lewis' AND p.apellido = 'Hamilton'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Mónaco 2025' AND t.anio = 2025;

-- 6º Isack Hadjar
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 6, 'terminado', 8
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Isack' AND p.apellido = 'Hadjar'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Mónaco 2025' AND t.anio = 2025;

-- 7º Esteban Ocon
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 7, 'terminado', 6
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Esteban' AND p.apellido = 'Ocon'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Mónaco 2025' AND t.anio = 2025;

-- 8º Liam Lawson
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 8, 'terminado', 4
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Liam' AND p.apellido = 'Lawson'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Mónaco 2025' AND t.anio = 2025;

-- 9º Alexander Albon
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 9, 'terminado', 2
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Alexander' AND p.apellido = 'Albon'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Mónaco 2025' AND t.anio = 2025;

-- 10º Carlos Sainz
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 10, 'terminado', 1
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Carlos' AND p.apellido = 'Sainz'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Mónaco 2025' AND t.anio = 2025;

-- 11º George Russell
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 11, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'George' AND p.apellido = 'Russell'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Mónaco 2025' AND t.anio = 2025;

-- 12º Oliver Bearman
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 12, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Oliver' AND p.apellido = 'Bearman'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Mónaco 2025' AND t.anio = 2025;

-- 13º Franco Colapinto
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 13, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Franco' AND p.apellido = 'Colapinto'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Mónaco 2025' AND t.anio = 2025;

-- 14º Gabriel Bortoleto
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 14, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Gabriel' AND p.apellido = 'Bortoleto'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Mónaco 2025' AND t.anio = 2025;

-- 15º Lance Stroll
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 15, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Lance' AND p.apellido = 'Stroll'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Mónaco 2025' AND t.anio = 2025;

-- 16º Nico Hülkenberg
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 16, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Nico' AND p.apellido = 'Hülkenberg'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Mónaco 2025' AND t.anio = 2025;

-- 17º Yuki Tsunoda
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 17, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Yuki' AND p.apellido = 'Tsunoda'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Mónaco 2025' AND t.anio = 2025;

-- 18º Kimi Antonelli
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 18, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Kimi' AND p.apellido = 'Antonelli'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Mónaco 2025' AND t.anio = 2025;

-- 19º Fernando Alonso (DNF)
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 19, 'no terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Fernando' AND p.apellido = 'Alonso'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Mónaco 2025' AND t.anio = 2025;

-- 20º Pierre Gasly (DNF)
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 20, 'no terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Pierre' AND p.apellido = 'Gasly'
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

-- 4º George Russell
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 4, 'terminado', 12
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'George' AND p.apellido = 'Russell'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de España 2025' AND t.anio = 2025;

-- 5º Nico Hülkenberg
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 5, 'terminado', 10
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Nico' AND p.apellido = 'Hülkenberg'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de España 2025' AND t.anio = 2025;

-- 6º Lewis Hamilton
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 6, 'terminado', 8
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Lewis' AND p.apellido = 'Hamilton'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de España 2025' AND t.anio = 2025;

-- 7º Isack Hadjar
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 7, 'terminado', 6
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Isack' AND p.apellido = 'Hadjar'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de España 2025' AND t.anio = 2025;

-- 8º Pierre Gasly
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 8, 'terminado', 4
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Pierre' AND p.apellido = 'Gasly'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de España 2025' AND t.anio = 2025;

-- 9º Fernando Alonso
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 9, 'terminado', 2
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Fernando' AND p.apellido = 'Alonso'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de España 2025' AND t.anio = 2025;

-- 10º Max Verstappen
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 10, 'terminado', 1
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Max' AND p.apellido = 'Verstappen'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de España 2025' AND t.anio = 2025;

-- 11º Liam Lawson
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 11, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Liam' AND p.apellido = 'Lawson'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de España 2025' AND t.anio = 2025;

-- 12º Gabriel Bortoleto
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 12, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Gabriel' AND p.apellido = 'Bortoleto'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de España 2025' AND t.anio = 2025;

-- 13º Yuki Tsunoda
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 13, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Yuki' AND p.apellido = 'Tsunoda'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de España 2025' AND t.anio = 2025;

-- 14º Carlos Sainz
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 14, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Carlos' AND p.apellido = 'Sainz'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de España 2025' AND t.anio = 2025;

-- 15º Franco Colapinto
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 15, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Franco' AND p.apellido = 'Colapinto'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de España 2025' AND t.anio = 2025;

-- 16º Esteban Ocon
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 16, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Esteban' AND p.apellido = 'Ocon'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de España 2025' AND t.anio = 2025;

-- 17º Oliver Bearman
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 17, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Oliver' AND p.apellido = 'Bearman'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de España 2025' AND t.anio = 2025;

-- 18º Kimi Antonelli (DNF)
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 18, 'no terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Kimi' AND p.apellido = 'Antonelli'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de España 2025' AND t.anio = 2025;

-- 19º Alexander Albon (DNF)
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 19, 'no terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Alexander' AND p.apellido = 'Albon'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de España 2025' AND t.anio = 2025;



-- =====================
-- Gran Premio de Canadá 2025
-- =====================

-- 1º George Russell
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 1, 'terminado', 25
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'George' AND p.apellido = 'Russell'
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

-- 3º Kimi Antonelli
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 3, 'terminado', 15
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Kimi' AND p.apellido = 'Antonelli'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Canadá 2025' AND t.anio = 2025;

-- 4º Oscar Piastri
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 4, 'terminado', 12
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Oscar' AND p.apellido = 'Piastri'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Canadá 2025' AND t.anio = 2025;

-- 5º Charles Leclerc
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 5, 'terminado', 10
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Charles' AND p.apellido = 'Leclerc'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Canadá 2025' AND t.anio = 2025;

-- 6º Lewis Hamilton
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 6, 'terminado', 8
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Lewis' AND p.apellido = 'Hamilton'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Canadá 2025' AND t.anio = 2025;

-- 7º Fernando Alonso
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 7, 'terminado', 6
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Fernando' AND p.apellido = 'Alonso'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Canadá 2025' AND t.anio = 2025;

-- 8º Nico Hülkenberg
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 8, 'terminado', 4
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Nico' AND p.apellido = 'Hülkenberg'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Canadá 2025' AND t.anio = 2025;

-- 9º Esteban Ocon
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 9, 'terminado', 2
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Esteban' AND p.apellido = 'Ocon'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Canadá 2025' AND t.anio = 2025;

-- 10º Carlos Sainz
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 10, 'terminado', 1
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Carlos' AND p.apellido = 'Sainz'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Canadá 2025' AND t.anio = 2025;

-- 11º Oliver Bearman
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 11, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Oliver' AND p.apellido = 'Bearman'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Canadá 2025' AND t.anio = 2025;

-- 12º Yuki Tsunoda
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 12, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Yuki' AND p.apellido = 'Tsunoda'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Canadá 2025' AND t.anio = 2025;

-- 13º Franco Colapinto
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 13, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Franco' AND p.apellido = 'Colapinto'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Canadá 2025' AND t.anio = 2025;

-- 14º Gabriel Bortoleto
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 14, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Gabriel' AND p.apellido = 'Bortoleto'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Canadá 2025' AND t.anio = 2025;

-- 15º Pierre Gasly
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 15, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Pierre' AND p.apellido = 'Gasly'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Canadá 2025' AND t.anio = 2025;

-- 16º Isack Hadjar
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 16, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Isack' AND p.apellido = 'Hadjar'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Canadá 2025' AND t.anio = 2025;

-- 17º Lance Stroll
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 17, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Lance' AND p.apellido = 'Stroll'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Canadá 2025' AND t.anio = 2025;

-- 18º Lando Norris (DNF)
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 18, 'no terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Lando' AND p.apellido = 'Norris'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Canadá 2025' AND t.anio = 2025;

-- 19º Liam Lawson (DNF)
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 19, 'no terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Liam' AND p.apellido = 'Lawson'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Canadá 2025' AND t.anio = 2025;

-- 20º Alexander Albon (DNF)
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 20, 'no terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Alexander' AND p.apellido = 'Albon'
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

-- 4º Lewis Hamilton
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 4, 'terminado', 12
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Lewis' AND p.apellido = 'Hamilton'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Austria 2025' AND t.anio = 2025;

-- 5º George Russell
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 5, 'terminado', 10
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'George' AND p.apellido = 'Russell'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Austria 2025' AND t.anio = 2025;

-- 6º Liam Lawson
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 6, 'terminado', 8
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Liam' AND p.apellido = 'Lawson'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Austria 2025' AND t.anio = 2025;

-- 7º Fernando Alonso
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 7, 'terminado', 6
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Fernando' AND p.apellido = 'Alonso'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Austria 2025' AND t.anio = 2025;

-- 8º Gabriel Bortoleto
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 8, 'terminado', 4
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Gabriel' AND p.apellido = 'Bortoleto'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Austria 2025' AND t.anio = 2025;

-- 9º Nico Hülkenberg
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 9, 'terminado', 2
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Nico' AND p.apellido = 'Hülkenberg'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Austria 2025' AND t.anio = 2025;

-- 10º Esteban Ocon
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 10, 'terminado', 1
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Esteban' AND p.apellido = 'Ocon'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Austria 2025' AND t.anio = 2025;

-- 11º Oliver Bearman
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 11, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Oliver' AND p.apellido = 'Bearman'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Austria 2025' AND t.anio = 2025;

-- 12º Isack Hadjar
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 12, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Isack' AND p.apellido = 'Hadjar'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Austria 2025' AND t.anio = 2025;

-- 13º Pierre Gasly
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 13, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Pierre' AND p.apellido = 'Gasly'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Austria 2025' AND t.anio = 2025;

-- 14º Lance Stroll
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 14, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Lance' AND p.apellido = 'Stroll'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Austria 2025' AND t.anio = 2025;

-- 15º Franco Colapinto
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 15, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Franco' AND p.apellido = 'Colapinto'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Austria 2025' AND t.anio = 2025;

-- 16º Yuki Tsunoda
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 16, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Yuki' AND p.apellido = 'Tsunoda'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Austria 2025' AND t.anio = 2025;

-- 17º Alexander Albon (DNF)
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 17, 'no terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Alexander' AND p.apellido = 'Albon'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Austria 2025' AND t.anio = 2025;

-- 18º Max Verstappen (DNF)
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 18, 'no terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Max' AND p.apellido = 'Verstappen'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Austria 2025' AND t.anio = 2025;

-- 19º Kimi Antonelli (DNF)
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 19, 'no terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Kimi' AND p.apellido = 'Antonelli'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Austria 2025' AND t.anio = 2025;

-- 20º Carlos Sainz (DNS)
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 20, 'no partió', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Carlos' AND p.apellido = 'Sainz'
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

-- 4º Lewis Hamilton
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 4, 'terminado', 12
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Lewis' AND p.apellido = 'Hamilton'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Gran Bretaña 2025' AND t.anio = 2025;

-- 5º Max Verstappen
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 5, 'terminado', 10
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Max' AND p.apellido = 'Verstappen'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Gran Bretaña 2025' AND t.anio = 2025;

-- 6º Pierre Gasly
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 6, 'terminado', 8
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Pierre' AND p.apellido = 'Gasly'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Gran Bretaña 2025' AND t.anio = 2025;

-- 7º Lance Stroll
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 7, 'terminado', 6
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Lance' AND p.apellido = 'Stroll'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Gran Bretaña 2025' AND t.anio = 2025;

-- 8º Alexander Albon
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 8, 'terminado', 4
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Alexander' AND p.apellido = 'Albon'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Gran Bretaña 2025' AND t.anio = 2025;

-- 9º Fernando Alonso
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 9, 'terminado', 2
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Fernando' AND p.apellido = 'Alonso'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Gran Bretaña 2025' AND t.anio = 2025;

-- 10º George Russell
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 10, 'terminado', 1
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'George' AND p.apellido = 'Russell'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Gran Bretaña 2025' AND t.anio = 2025;

-- 11º Oliver Bearman
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 11, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Oliver' AND p.apellido = 'Bearman'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Gran Bretaña 2025' AND t.anio = 2025;

-- 12º Carlos Sainz
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 12, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Carlos' AND p.apellido = 'Sainz'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Gran Bretaña 2025' AND t.anio = 2025;

-- 13º Esteban Ocon
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 13, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Esteban' AND p.apellido = 'Ocon'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Gran Bretaña 2025' AND t.anio = 2025;

-- 14º Charles Leclerc
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 14, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Charles' AND p.apellido = 'Leclerc'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Gran Bretaña 2025' AND t.anio = 2025;

-- 15º Yuki Tsunoda
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 15, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Yuki' AND p.apellido = 'Tsunoda'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Gran Bretaña 2025' AND t.anio = 2025;

-- 16º Kimi Antonelli (DNF)
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 16, 'no terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Kimi' AND p.apellido = 'Antonelli'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Gran Bretaña 2025' AND t.anio = 2025;

-- 17º Isack Hadjar (DNF)
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 17, 'no terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Isack' AND p.apellido = 'Hadjar'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Gran Bretaña 2025' AND t.anio = 2025;

-- 18º Gabriel Bortoleto (DNF)
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 18, 'no terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Gabriel' AND p.apellido = 'Bortoleto'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Gran Bretaña 2025' AND t.anio = 2025;

-- 19º Liam Lawson (DNF)
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 19, 'no terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Liam' AND p.apellido = 'Lawson'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Gran Bretaña 2025' AND t.anio = 2025;

-- 20º Franco Colapinto (DNS)
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 20, 'no partió', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Franco' AND p.apellido = 'Colapinto'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Gran Bretaña 2025' AND t.anio = 2025;



-- =====================
-- Gran Premio de Bélgica 2025
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

-- 4º Max Verstappen
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 4, 'terminado', 12
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Max' AND p.apellido = 'Verstappen'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Bélgica 2025' AND t.anio = 2025;

-- 5º George Russell
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 5, 'terminado', 10
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'George' AND p.apellido = 'Russell'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Bélgica 2025' AND t.anio = 2025;

-- 6º Alexander Albon
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 6, 'terminado', 8
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Alexander' AND p.apellido = 'Albon'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Bélgica 2025' AND t.anio = 2025;

-- 7º Lewis Hamilton
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 7, 'terminado', 6
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Lewis' AND p.apellido = 'Hamilton'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Bélgica 2025' AND t.anio = 2025;

-- 8º Liam Lawson
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 8, 'terminado', 4
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Liam' AND p.apellido = 'Lawson'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Bélgica 2025' AND t.anio = 2025;

-- 9º Gabriel Bortoleto
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 9, 'terminado', 2
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Gabriel' AND p.apellido = 'Bortoleto'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Bélgica 2025' AND t.anio = 2025;

-- 10º Pierre Gasly
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 10, 'terminado', 1
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Pierre' AND p.apellido = 'Gasly'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Bélgica 2025' AND t.anio = 2025;

-- 11º Oliver Bearman
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 11, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Oliver' AND p.apellido = 'Bearman'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Bélgica 2025' AND t.anio = 2025;

-- 12º Nico Hülkenberg
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 12, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Nico' AND p.apellido = 'Hülkenberg'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Bélgica 2025' AND t.anio = 2025;

-- 13º Yuki Tsunoda
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 13, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Yuki' AND p.apellido = 'Tsunoda'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Bélgica 2025' AND t.anio = 2025;

-- 14º Lance Stroll
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 14, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Lance' AND p.apellido = 'Stroll'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Bélgica 2025' AND t.anio = 2025;

-- 15º Esteban Ocon
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 15, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Esteban' AND p.apellido = 'Ocon'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Bélgica 2025' AND t.anio = 2025;

-- 16º Kimi Antonelli
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 16, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Kimi' AND p.apellido = 'Antonelli'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Bélgica 2025' AND t.anio = 2025;

-- 17º Fernando Alonso
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 17, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Fernando' AND p.apellido = 'Alonso'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Bélgica 2025' AND t.anio = 2025;

-- 18º Carlos Sainz
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 18, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Carlos' AND p.apellido = 'Sainz'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Bélgica 2025' AND t.anio = 2025;

-- 19º Franco Colapinto
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 19, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Franco' AND p.apellido = 'Colapinto'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Bélgica 2025' AND t.anio = 2025;

-- 20º Isack Hadjar (+1 lap)
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 20, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Isack' AND p.apellido = 'Hadjar'
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

-- 4º Charles Leclerc
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 4, 'terminado', 12
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Charles' AND p.apellido = 'Leclerc'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Hungría 2025' AND t.anio = 2025;

-- 5º Fernando Alonso
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 5, 'terminado', 10
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Fernando' AND p.apellido = 'Alonso'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Hungría 2025' AND t.anio = 2025;

-- 6º Gabriel Bortoleto
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 6, 'terminado', 8
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Gabriel' AND p.apellido = 'Bortoleto'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Hungría 2025' AND t.anio = 2025;

-- 7º Lance Stroll
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 7, 'terminado', 6
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Lance' AND p.apellido = 'Stroll'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Hungría 2025' AND t.anio = 2025;

-- 8º Liam Lawson
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 8, 'terminado', 4
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Liam' AND p.apellido = 'Lawson'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Hungría 2025' AND t.anio = 2025;

-- 9º Max Verstappen
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 9, 'terminado', 2
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Max' AND p.apellido = 'Verstappen'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Hungría 2025' AND t.anio = 2025;

-- 10º Kimi Antonelli
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 10, 'terminado', 1
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Kimi' AND p.apellido = 'Antonelli'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Hungría 2025' AND t.anio = 2025;

-- 11º Isack Hadjar
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 11, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Isack' AND p.apellido = 'Hadjar'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Hungría 2025' AND t.anio = 2025;

-- 12º Lewis Hamilton
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 12, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Lewis' AND p.apellido = 'Hamilton'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Hungría 2025' AND t.anio = 2025;

-- 13º Nico Hülkenberg
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 13, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Nico' AND p.apellido = 'Hülkenberg'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Hungría 2025' AND t.anio = 2025;

-- 14º Carlos Sainz
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 14, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Carlos' AND p.apellido = 'Sainz'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Hungría 2025' AND t.anio = 2025;

-- 15º Alexander Albon
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 15, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Alexander' AND p.apellido = 'Albon'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Hungría 2025' AND t.anio = 2025;

-- 16º Esteban Ocon
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 16, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Esteban' AND p.apellido = 'Ocon'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Hungría 2025' AND t.anio = 2025;

-- 17º Yuki Tsunoda
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 17, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Yuki' AND p.apellido = 'Tsunoda'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Hungría 2025' AND t.anio = 2025;

-- 18º Franco Colapinto
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 18, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Franco' AND p.apellido = 'Colapinto'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Hungría 2025' AND t.anio = 2025;

-- 19º Pierre Gasly
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 19, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Pierre' AND p.apellido = 'Gasly'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Hungría 2025' AND t.anio = 2025;

-- 20º Oliver Bearman (DNF)
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 20, 'no terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Oliver' AND p.apellido = 'Bearman'
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

-- 4º George Russell
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 4, 'terminado', 12
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'George' AND p.apellido = 'Russell'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Países Bajos 2025' AND t.anio = 2025;

-- 5º Alexander Albon
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 5, 'terminado', 10
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Alexander' AND p.apellido = 'Albon'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Países Bajos 2025' AND t.anio = 2025;

-- 6º Oliver Bearman
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 6, 'terminado', 8
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Oliver' AND p.apellido = 'Bearman'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Países Bajos 2025' AND t.anio = 2025;

-- 7º Lance Stroll
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 7, 'terminado', 6
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Lance' AND p.apellido = 'Stroll'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Países Bajos 2025' AND t.anio = 2025;

-- 8º Fernando Alonso
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 8, 'terminado', 4
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Fernando' AND p.apellido = 'Alonso'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Países Bajos 2025' AND t.anio = 2025;

-- 9º Yuki Tsunoda
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 9, 'terminado', 2
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Yuki' AND p.apellido = 'Tsunoda'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Países Bajos 2025' AND t.anio = 2025;

-- 10º Esteban Ocon
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 10, 'terminado', 1
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Esteban' AND p.apellido = 'Ocon'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Países Bajos 2025' AND t.anio = 2025;

-- 11º Franco Colapinto
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 11, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Franco' AND p.apellido = 'Colapinto'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Países Bajos 2025' AND t.anio = 2025;

-- 12º Liam Lawson
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 12, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Liam' AND p.apellido = 'Lawson'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Países Bajos 2025' AND t.anio = 2025;

-- 13º Carlos Sainz
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 13, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Carlos' AND p.apellido = 'Sainz'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Países Bajos 2025' AND t.anio = 2025;

-- 14º Nico Hülkenberg
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 14, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Nico' AND p.apellido = 'Hülkenberg'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Países Bajos 2025' AND t.anio = 2025;

-- 15º Gabriel Bortoleto
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 15, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Gabriel' AND p.apellido = 'Bortoleto'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Países Bajos 2025' AND t.anio = 2025;

-- 16º Kimi Antonelli
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 16, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Kimi' AND p.apellido = 'Antonelli'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Países Bajos 2025' AND t.anio = 2025;

-- 17º Pierre Gasly
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 17, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Pierre' AND p.apellido = 'Gasly'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Países Bajos 2025' AND t.anio = 2025;

-- 18º Lando Norris (DNF)
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 18, 'no terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Lando' AND p.apellido = 'Norris'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Países Bajos 2025' AND t.anio = 2025;

-- 19º Charles Leclerc (DNF)
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 19, 'no terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Charles' AND p.apellido = 'Leclerc'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Países Bajos 2025' AND t.anio = 2025;

-- 20º Lewis Hamilton (DNF)
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 20, 'no terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Lewis' AND p.apellido = 'Hamilton'
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

-- 4º Charles Leclerc
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 4, 'terminado', 12
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Charles' AND p.apellido = 'Leclerc'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Italia 2025' AND t.anio = 2025;

-- 5º George Russell
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 5, 'terminado', 10
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'George' AND p.apellido = 'Russell'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Italia 2025' AND t.anio = 2025;

-- 6º Lewis Hamilton
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 6, 'terminado', 8
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Lewis' AND p.apellido = 'Hamilton'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Italia 2025' AND t.anio = 2025;

-- 7º Alexander Albon
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 7, 'terminado', 6
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Alexander' AND p.apellido = 'Albon'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Italia 2025' AND t.anio = 2025;

-- 8º Gabriel Bortoleto
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 8, 'terminado', 4
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Gabriel' AND p.apellido = 'Bortoleto'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Italia 2025' AND t.anio = 2025;

-- 9º Kimi Antonelli
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 9, 'terminado', 2
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Kimi' AND p.apellido = 'Antonelli'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Italia 2025' AND t.anio = 2025;

-- 10º Isack Hadjar
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 10, 'terminado', 1
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Isack' AND p.apellido = 'Hadjar'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Italia 2025' AND t.anio = 2025;

-- 11º Carlos Sainz
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 11, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Carlos' AND p.apellido = 'Sainz'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Italia 2025' AND t.anio = 2025;

-- 12º Oliver Bearman
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 12, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Oliver' AND p.apellido = 'Bearman'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Italia 2025' AND t.anio = 2025;

-- 13º Yuki Tsunoda
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 13, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Yuki' AND p.apellido = 'Tsunoda'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Italia 2025' AND t.anio = 2025;

-- 14º Liam Lawson
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 14, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Liam' AND p.apellido = 'Lawson'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Italia 2025' AND t.anio = 2025;

-- 15º Esteban Ocon
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 15, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Esteban' AND p.apellido = 'Ocon'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Italia 2025' AND t.anio = 2025;

-- 16º Pierre Gasly
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 16, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Pierre' AND p.apellido = 'Gasly'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Italia 2025' AND t.anio = 2025;

-- 17º Franco Colapinto
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 17, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Franco' AND p.apellido = 'Colapinto'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Italia 2025' AND t.anio = 2025;

-- 18º Lance Stroll
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 18, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Lance' AND p.apellido = 'Stroll'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Italia 2025' AND t.anio = 2025;

-- 19º Fernando Alonso (DNF)
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 19, 'no terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Fernando' AND p.apellido = 'Alonso'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Italia 2025' AND t.anio = 2025;

-- 20º Nico Hülkenberg (DNS)
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 20, 'no salió', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Nico' AND p.apellido = 'Hülkenberg'
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

-- 3º Carlos Sainz
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 3, 'terminado', 15
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Carlos' AND p.apellido = 'Sainz'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Azerbaiyán 2025' AND t.anio = 2025;

-- 4º Kimi Antonelli
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 4, 'terminado', 12
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Kimi' AND p.apellido = 'Antonelli'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Azerbaiyán 2025' AND t.anio = 2025;

-- 5º Liam Lawson
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 5, 'terminado', 10
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Liam' AND p.apellido = 'Lawson'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Azerbaiyán 2025' AND t.anio = 2025;

-- 6º Yuki Tsunoda
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 6, 'terminado', 8
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Yuki' AND p.apellido = 'Tsunoda'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Azerbaiyán 2025' AND t.anio = 2025;

-- 7º Lando Norris
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 7, 'terminado', 6
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Lando' AND p.apellido = 'Norris'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Azerbaiyán 2025' AND t.anio = 2025;

-- 8º Lewis Hamilton
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 8, 'terminado', 4
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Lewis' AND p.apellido = 'Hamilton'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Azerbaiyán 2025' AND t.anio = 2025;

-- 9º Charles Leclerc
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 9, 'terminado', 2
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Charles' AND p.apellido = 'Leclerc'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Azerbaiyán 2025' AND t.anio = 2025;

-- 10º Isack Hadjar
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 10, 'terminado', 1
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Isack' AND p.apellido = 'Hadjar'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Azerbaiyán 2025' AND t.anio = 2025;

-- 11º Gabriel Bortoleto
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 11, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Gabriel' AND p.apellido = 'Bortoleto'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Azerbaiyán 2025' AND t.anio = 2025;

-- 12º Oliver Bearman
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 12, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Oliver' AND p.apellido = 'Bearman'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Azerbaiyán 2025' AND t.anio = 2025;

-- 13º Alexander Albon
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 13, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Alexander' AND p.apellido = 'Albon'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Azerbaiyán 2025' AND t.anio = 2025;

-- 14º Esteban Ocon
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 14, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Esteban' AND p.apellido = 'Ocon'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Azerbaiyán 2025' AND t.anio = 2025;

-- 15º Fernando Alonso
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 15, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Fernando' AND p.apellido = 'Alonso'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Azerbaiyán 2025' AND t.anio = 2025;

-- 16º Nico Hülkenberg
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 16, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Nico' AND p.apellido = 'Hülkenberg'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Azerbaiyán 2025' AND t.anio = 2025;

-- 17º Lance Stroll
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 17, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Lance' AND p.apellido = 'Stroll'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Azerbaiyán 2025' AND t.anio = 2025;

-- 18º Pierre Gasly
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 18, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Pierre' AND p.apellido = 'Gasly'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Azerbaiyán 2025' AND t.anio = 2025;

-- 19º Franco Colapinto
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 19, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Franco' AND p.apellido = 'Colapinto'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Azerbaiyán 2025' AND t.anio = 2025;

-- 20º Oscar Piastri (DNF)
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 20, 'no terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Oscar' AND p.apellido = 'Piastri'
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

-- 4º Oscar Piastri
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 4, 'terminado', 12
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Oscar' AND p.apellido = 'Piastri'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Singapur 2025' AND t.anio = 2025;

-- 5º Kimi Antonelli
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 5, 'terminado', 10
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Kimi' AND p.apellido = 'Antonelli'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Singapur 2025' AND t.anio = 2025;

-- 6º Charles Leclerc
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 6, 'terminado', 8
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Charles' AND p.apellido = 'Leclerc'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Singapur 2025' AND t.anio = 2025;

-- 7º Fernando Alonso
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 7, 'terminado', 6
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Fernando' AND p.apellido = 'Alonso'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Singapur 2025' AND t.anio = 2025;

-- 8º Lewis Hamilton
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 8, 'terminado', 4
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Lewis' AND p.apellido = 'Hamilton'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Singapur 2025' AND t.anio = 2025;

-- 9º Oliver Bearman
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 9, 'terminado', 2
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Oliver' AND p.apellido = 'Bearman'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Singapur 2025' AND t.anio = 2025;

-- 10º Carlos Sainz
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 10, 'terminado', 1
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Carlos' AND p.apellido = 'Sainz'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Singapur 2025' AND t.anio = 2025;

-- 11º Isack Hadjar
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 11, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Isack' AND p.apellido = 'Hadjar'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Singapur 2025' AND t.anio = 2025;

-- 12º Yuki Tsunoda
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 12, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Yuki' AND p.apellido = 'Tsunoda'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Singapur 2025' AND t.anio = 2025;

-- 13º Lance Stroll
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 13, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Lance' AND p.apellido = 'Stroll'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Singapur 2025' AND t.anio = 2025;

-- 14º Alexander Albon
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 14, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Alexander' AND p.apellido = 'Albon'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Singapur 2025' AND t.anio = 2025;

-- 15º Liam Lawson
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 15, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Liam' AND p.apellido = 'Lawson'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Singapur 2025' AND t.anio = 2025;

-- 16º Franco Colapinto
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 16, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Franco' AND p.apellido = 'Colapinto'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Singapur 2025' AND t.anio = 2025;

-- 17º Gabriel Bortoleto
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 17, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Gabriel' AND p.apellido = 'Bortoleto'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Singapur 2025' AND t.anio = 2025;

-- 18º Esteban Ocon
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 18, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Esteban' AND p.apellido = 'Ocon'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Singapur 2025' AND t.anio = 2025;

-- 19º Pierre Gasly
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 19, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Pierre' AND p.apellido = 'Gasly'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Singapur 2025' AND t.anio = 2025;

-- 20º Nico Hülkenberg
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 20, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Nico' AND p.apellido = 'Hülkenberg'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Singapur 2025' AND t.anio = 2025;


-- =====================
-- Gran Premio de Estados Unidos 2025
-- =====================

-- 1º Max Verstappen
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 1, 'terminado', 25
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Max' AND p.apellido = 'Verstappen'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Estados Unidos 2025' AND t.anio = 2025;

-- 2º Lando Norris
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 2, 'terminado', 18
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Lando' AND p.apellido = 'Norris'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Estados Unidos 2025' AND t.anio = 2025;

-- 3º Charles Leclerc
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 3, 'terminado', 15
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Charles' AND p.apellido = 'Leclerc'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Estados Unidos 2025' AND t.anio = 2025;

-- 4º Lewis Hamilton
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 4, 'terminado', 12
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Lewis' AND p.apellido = 'Hamilton'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Estados Unidos 2025' AND t.anio = 2025;

-- 5º Oscar Piastri
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 5, 'terminado', 10
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Oscar' AND p.apellido = 'Piastri'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Estados Unidos 2025' AND t.anio = 2025;

-- 6º George Russell
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 6, 'terminado', 8
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'George' AND p.apellido = 'Russell'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Estados Unidos 2025' AND t.anio = 2025;

-- 7º Yuki Tsunoda
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 7, 'terminado', 6
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Yuki' AND p.apellido = 'Tsunoda'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Estados Unidos 2025' AND t.anio = 2025;

-- 8º Nico Hülkenberg
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 8, 'terminado', 4
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Nico' AND p.apellido = 'Hülkenberg'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Estados Unidos 2025' AND t.anio = 2025;

-- 9º Oliver Bearman
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 9, 'terminado', 2
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Oliver' AND p.apellido = 'Bearman'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Estados Unidos 2025' AND t.anio = 2025;

-- 10º Fernando Alonso
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 10, 'terminado', 1
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Fernando' AND p.apellido = 'Alonso'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Estados Unidos 2025' AND t.anio = 2025;

-- 11º Liam Lawson
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 11, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Liam' AND p.apellido = 'Lawson'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Estados Unidos 2025' AND t.anio = 2025;

-- 12º Lance Stroll
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 12, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Lance' AND p.apellido = 'Stroll'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Estados Unidos 2025' AND t.anio = 2025;

-- 13º Kimi Antonelli
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 13, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Kimi' AND p.apellido = 'Antonelli'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Estados Unidos 2025' AND t.anio = 2025;

-- 14º Alexander Albon
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 14, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Alexander' AND p.apellido = 'Albon'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Estados Unidos 2025' AND t.anio = 2025;

-- 15º Esteban Ocon
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 15, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Esteban' AND p.apellido = 'Ocon'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Estados Unidos 2025' AND t.anio = 2025;

-- 16º Isack Hadjar
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 16, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Isack' AND p.apellido = 'Hadjar'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Estados Unidos 2025' AND t.anio = 2025;

-- 17º Franco Colapinto
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 17, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Franco' AND p.apellido = 'Colapinto'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Estados Unidos 2025' AND t.anio = 2025;

-- 18º Gabriel Bortoleto
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 18, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Gabriel' AND p.apellido = 'Bortoleto'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Estados Unidos 2025' AND t.anio = 2025;

-- 19º Pierre Gasly
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 19, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Pierre' AND p.apellido = 'Gasly'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Estados Unidos 2025' AND t.anio = 2025;

-- 20º Carlos Sainz (DNF)
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 20, 'no terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Carlos' AND p.apellido = 'Sainz'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Estados Unidos 2025' AND t.anio = 2025;


-- =====================
-- Gran Premio de México 2025
-- =====================

-- 1º Lando Norris
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 1, 'terminado', 25
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Lando' AND p.apellido = 'Norris'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de México 2025' AND t.anio = 2025;

-- 2º Charles Leclerc
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 2, 'terminado', 18
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Charles' AND p.apellido = 'Leclerc'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de México 2025' AND t.anio = 2025;

-- 3º Max Verstappen
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 3, 'terminado', 15
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Max' AND p.apellido = 'Verstappen'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de México 2025' AND t.anio = 2025;

-- 4º Oliver Bearman
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 4, 'terminado', 12
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Oliver' AND p.apellido = 'Bearman'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de México 2025' AND t.anio = 2025;

-- 5º Oscar Piastri
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 5, 'terminado', 10
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Oscar' AND p.apellido = 'Piastri'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de México 2025' AND t.anio = 2025;

-- 6º Kimi Antonelli
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 6, 'terminado', 8
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Kimi' AND p.apellido = 'Antonelli'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de México 2025' AND t.anio = 2025;

-- 7º George Russell
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 7, 'terminado', 6
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'George' AND p.apellido = 'Russell'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de México 2025' AND t.anio = 2025;

-- 8º Lewis Hamilton
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 8, 'terminado', 4
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Lewis' AND p.apellido = 'Hamilton'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de México 2025' AND t.anio = 2025;

-- 9º Esteban Ocon
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 9, 'terminado', 2
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Esteban' AND p.apellido = 'Ocon'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de México 2025' AND t.anio = 2025;

-- 10º Gabriel Bortoleto
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 10, 'terminado', 1
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Gabriel' AND p.apellido = 'Bortoleto'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de México 2025' AND t.anio = 2025;

-- 11º Yuki Tsunoda
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 11, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Yuki' AND p.apellido = 'Tsunoda'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de México 2025' AND t.anio = 2025;

-- 12º Alexander Albon
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 12, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Alexander' AND p.apellido = 'Albon'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de México 2025' AND t.anio = 2025;

-- 13º Isack Hadjar
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 13, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Isack' AND p.apellido = 'Hadjar'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de México 2025' AND t.anio = 2025;

-- 14º Lance Stroll
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 14, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Lance' AND p.apellido = 'Stroll'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de México 2025' AND t.anio = 2025;

-- 15º Pierre Gasly
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 15, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Pierre' AND p.apellido = 'Gasly'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de México 2025' AND t.anio = 2025;

-- 16º Franco Colapinto
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 16, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Franco' AND p.apellido = 'Colapinto'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de México 2025' AND t.anio = 2025;

-- 17º Carlos Sainz (DNF)
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 17, 'no terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Carlos' AND p.apellido = 'Sainz'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de México 2025' AND t.anio = 2025;

-- 18º Fernando Alonso (DNF)
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 18, 'no terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Fernando' AND p.apellido = 'Alonso'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de México 2025' AND t.anio = 2025;

-- 19º Nico Hülkenberg (DNF)
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 19, 'no terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Nico' AND p.apellido = 'Hülkenberg'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de México 2025' AND t.anio = 2025;

-- 20º Liam Lawson (DNF)
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 20, 'no terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Liam' AND p.apellido = 'Lawson'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
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
