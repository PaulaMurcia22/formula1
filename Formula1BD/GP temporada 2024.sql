-- ===========================================
-- RESULTADOS F1 - TEMPORADA 2024
-- 24 Grandes Premios completos
-- ===========================================


-- =====================
-- Gran Premio de Bahréin 2024
-- =====================

-- 1º Max Verstappen
INSERT INTO Resultado_Carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 1, 'terminado', 26
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

-- 4º Charles Leclerc
INSERT INTO Resultado_Carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 4, 'terminado', 12
FROM Carrera c
         JOIN Temporada t ON c.id_temporada = t.id_temporada
         JOIN Piloto p ON p.nombre = 'Charles' AND p.apellido = 'Leclerc'
         JOIN Piloto_Temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Bahréin 2024' AND t.anio = 2024;

-- 5º George Russell
INSERT INTO Resultado_Carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 5, 'terminado', 10
FROM Carrera c
         JOIN Temporada t ON c.id_temporada = t.id_temporada
         JOIN Piloto p ON p.nombre = 'George' AND p.apellido = 'Russell'
         JOIN Piloto_Temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Bahréin 2024' AND t.anio = 2024;

-- 6º Lando Norris
INSERT INTO Resultado_Carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 6, 'terminado', 8
FROM Carrera c
         JOIN Temporada t ON c.id_temporada = t.id_temporada
         JOIN Piloto p ON p.nombre = 'Lando' AND p.apellido = 'Norris'
         JOIN Piloto_Temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Bahréin 2024' AND t.anio = 2024;

-- 7º Lewis Hamilton
INSERT INTO Resultado_Carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 7, 'terminado', 6
FROM Carrera c
         JOIN Temporada t ON c.id_temporada = t.id_temporada
         JOIN Piloto p ON p.nombre = 'Lewis' AND p.apellido = 'Hamilton'
         JOIN Piloto_Temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Bahréin 2024' AND t.anio = 2024;

-- 8º Oscar Piastri
INSERT INTO Resultado_Carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 8, 'terminado', 4
FROM Carrera c
         JOIN Temporada t ON c.id_temporada = t.id_temporada
         JOIN Piloto p ON p.nombre = 'Oscar' AND p.apellido = 'Piastri'
         JOIN Piloto_Temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Bahréin 2024' AND t.anio = 2024;

-- 9º Fernando Alonso
INSERT INTO Resultado_Carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 9, 'terminado', 2
FROM Carrera c
         JOIN Temporada t ON c.id_temporada = t.id_temporada
         JOIN Piloto p ON p.nombre = 'Fernando' AND p.apellido = 'Alonso'
         JOIN Piloto_Temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Bahréin 2024' AND t.anio = 2024;

-- 10º Lance Stroll
INSERT INTO Resultado_Carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 10, 'terminado', 1
FROM Carrera c
         JOIN Temporada t ON c.id_temporada = t.id_temporada
         JOIN Piloto p ON p.nombre = 'Lance' AND p.apellido = 'Stroll'
         JOIN Piloto_Temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Bahréin 2024' AND t.anio = 2024;

-- 11º Zhou Guanyu
INSERT INTO Resultado_Carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 11, 'terminado', 0
FROM Carrera c
         JOIN Temporada t ON c.id_temporada = t.id_temporada
         JOIN Piloto p ON p.nombre = 'Zhou' AND p.apellido = 'Guanyu'
         JOIN Piloto_Temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Bahréin 2024' AND t.anio = 2024;

-- 12º Kevin Magnussen
INSERT INTO Resultado_Carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 12, 'terminado', 0
FROM Carrera c
         JOIN Temporada t ON c.id_temporada = t.id_temporada
         JOIN Piloto p ON p.nombre = 'Kevin' AND p.apellido = 'Magnussen'
         JOIN Piloto_Temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Bahréin 2024' AND t.anio = 2024;

-- 13º Daniel Ricciardo
INSERT INTO Resultado_Carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 13, 'terminado', 0
FROM Carrera c
         JOIN Temporada t ON c.id_temporada = t.id_temporada
         JOIN Piloto p ON p.nombre = 'Daniel' AND p.apellido = 'Ricciardo'
         JOIN Piloto_Temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Bahréin 2024' AND t.anio = 2024;

-- 14º Yuki Tsunoda
INSERT INTO Resultado_Carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 14, 'terminado', 0
FROM Carrera c
         JOIN Temporada t ON c.id_temporada = t.id_temporada
         JOIN Piloto p ON p.nombre = 'Yuki' AND p.apellido = 'Tsunoda'
         JOIN Piloto_Temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Bahréin 2024' AND t.anio = 2024;

-- 15º Alexander Albon
INSERT INTO Resultado_Carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 15, 'terminado', 0
FROM Carrera c
         JOIN Temporada t ON c.id_temporada = t.id_temporada
         JOIN Piloto p ON p.nombre = 'Alexander' AND p.apellido = 'Albon'
         JOIN Piloto_Temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Bahréin 2024' AND t.anio = 2024;

-- 16º Nico Hülkenberg
INSERT INTO Resultado_Carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 16, 'terminado', 0
FROM Carrera c
         JOIN Temporada t ON c.id_temporada = t.id_temporada
         JOIN Piloto p ON p.nombre = 'Nico' AND p.apellido = 'Hülkenberg'
         JOIN Piloto_Temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Bahréin 2024' AND t.anio = 2024;

-- 17º Esteban Ocon
INSERT INTO Resultado_Carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 17, 'terminado', 0
FROM Carrera c
         JOIN Temporada t ON c.id_temporada = t.id_temporada
         JOIN Piloto p ON p.nombre = 'Esteban' AND p.apellido = 'Ocon'
         JOIN Piloto_Temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Bahréin 2024' AND t.anio = 2024;

-- 18º Pierre Gasly
INSERT INTO Resultado_Carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 18, 'terminado', 0
FROM Carrera c
         JOIN Temporada t ON c.id_temporada = t.id_temporada
         JOIN Piloto p ON p.nombre = 'Pierre' AND p.apellido = 'Gasly'
         JOIN Piloto_Temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Bahréin 2024' AND t.anio = 2024;

-- 19º Valtteri Bottas
INSERT INTO Resultado_Carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 19, 'terminado', 0
FROM Carrera c
         JOIN Temporada t ON c.id_temporada = t.id_temporada
         JOIN Piloto p ON p.nombre = 'Valtteri' AND p.apellido = 'Bottas'
         JOIN Piloto_Temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Bahréin 2024' AND t.anio = 2024;

-- 20º Logan Sargeant
INSERT INTO Resultado_Carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 20, 'terminado', 0
FROM Carrera c
         JOIN Temporada t ON c.id_temporada = t.id_temporada
         JOIN Piloto p ON p.nombre = 'Logan' AND p.apellido = 'Sargeant'
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

-- 4º Oscar Piastri
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 4, 'terminado', 12
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Oscar' AND p.apellido = 'Piastri'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Arabia Saudí 2024' AND t.anio = 2024;

-- 5º Fernando Alonso
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 5, 'terminado', 10
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Fernando' AND p.apellido = 'Alonso'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Arabia Saudí 2024' AND t.anio = 2024;

-- 6º George Russell
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 6, 'terminado', 8
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'George' AND p.apellido = 'Russell'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Arabia Saudí 2024' AND t.anio = 2024;

-- 7º Oliver Bearman
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 7, 'terminado', 6
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Oliver' AND p.apellido = 'Bearman'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Arabia Saudí 2024' AND t.anio = 2024;

-- 8º Lando Norris
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 8, 'terminado', 4
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Lando' AND p.apellido = 'Norris'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Arabia Saudí 2024' AND t.anio = 2024;

-- 9º Lewis Hamilton
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 9, 'terminado', 2
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Lewis' AND p.apellido = 'Hamilton'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Arabia Saudí 2024' AND t.anio = 2024;

-- 10º Nico Hülkenberg
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 10, 'terminado', 1
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Nico' AND p.apellido = 'Hülkenberg'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Arabia Saudí 2024' AND t.anio = 2024;

-- 11º Alexander Albon
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 11, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Alexander' AND p.apellido = 'Albon'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Arabia Saudí 2024' AND t.anio = 2024;

-- 12º Kevin Magnussen
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 12, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Kevin' AND p.apellido = 'Magnussen'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Arabia Saudí 2024' AND t.anio = 2024;

-- 13º Esteban Ocon
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 13, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Esteban' AND p.apellido = 'Ocon'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Arabia Saudí 2024' AND t.anio = 2024;

-- 14º Logan Sargeant
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 15, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Logan' AND p.apellido = 'Sargeant'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Arabia Saudí 2024' AND t.anio = 2024;

-- 15º Yuki Tsunoda
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 14, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Yuki' AND p.apellido = 'Tsunoda'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Arabia Saudí 2024' AND t.anio = 2024;

-- 16º Daniel Ricciardo
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 16, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Daniel' AND p.apellido = 'Ricciardo'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Arabia Saudí 2024' AND t.anio = 2024;

-- 17º Valtteri Bottas
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 17, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Valtteri' AND p.apellido = 'Bottas'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Arabia Saudí 2024' AND t.anio = 2024;

-- 18º Zhou Guanyu
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 18, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Zhou' AND p.apellido = 'Guanyu'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Arabia Saudí 2024' AND t.anio = 2024;

-- 19º Lance Stroll
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 19, 'retirado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Lance' AND p.apellido = 'Stroll'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Arabia Saudí 2024' AND t.anio = 2024;


-- 20º Pierre Gasly
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 20, 'retirado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Pierre' AND p.apellido = 'Gasly'
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


-- 4º Oscar Piastri
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 4, 'terminado', 12
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Oscar' AND p.apellido = 'Piastri'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Australia 2024' AND t.anio = 2024;

-- 5º Sergio Pérez
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 5, 'terminado', 10
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Sergio' AND p.apellido = 'Pérez'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Australia 2024' AND t.anio = 2024;

-- 6º Lance Stroll
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 6, 'terminado', 8
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Lance' AND p.apellido = 'Stroll'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Australia 2024' AND t.anio = 2024;

-- 7º Yuki Tsunoda
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 7, 'terminado', 6
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Yuki' AND p.apellido = 'Tsunoda'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Australia 2024' AND t.anio = 2024;

-- 8º Fernando Alonso
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 8, 'terminado', 4
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Fernando' AND p.apellido = 'Alonso'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Australia 2024' AND t.anio = 2024;

-- 9º Nico Hülkenberg
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 9, 'terminado', 2
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Nico' AND p.apellido = 'Hülkenberg'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Australia 2024' AND t.anio = 2024;

-- 10º Kevin Magnussen
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 10, 'terminado', 1
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Kevin' AND p.apellido = 'Magnussen'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Australia 2024' AND t.anio = 2024;

-- 11º Alexander Albon
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 11, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Alexander' AND p.apellido = 'Albon'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Australia 2024' AND t.anio = 2024;

-- 12º Daniel Ricciardo
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 12, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Daniel' AND p.apellido = 'Ricciardo'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Australia 2024' AND t.anio = 2024;


-- 13º Pierre Gasly
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 13, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Pierre' AND p.apellido = 'Gasly'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Australia 2024' AND t.anio = 2024;

-- 14º Valtteri Bottas
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 14, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Valtteri' AND p.apellido = 'Bottas'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Australia 2024' AND t.anio = 2024;

-- 15º Zhou Guanyu
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 15, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Zhou' AND p.apellido = 'Guanyu'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Australia 2024' AND t.anio = 2024;

-- 16º Esteban Ocon
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 16, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Esteban' AND p.apellido = 'Ocon'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Australia 2024' AND t.anio = 2024;

-- 17º George Russell
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 17, 'retirado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'George' AND p.apellido = 'Russell'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Australia 2024' AND t.anio = 2024;


-- 18º Lewis Hamilton
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 18, 'retirado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Lewis' AND p.apellido = 'Hamilton'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Australia 2024' AND t.anio = 2024;

-- 19º Max Verstappen
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 19, 'retirado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Max' AND p.apellido = 'Verstappen'
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


-- 4º Charles Leclerc
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 4, 'terminado', 12
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Charles' AND p.apellido = 'Leclerc'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Japón 2024' AND t.anio = 2024;

-- 5º Lando Norris
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 5, 'terminado', 10
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Lando' AND p.apellido = 'Norris'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Japón 2024' AND t.anio = 2024;

-- 6º Fernando Alonso
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 6, 'terminado', 8
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Fernando' AND p.apellido = 'Alonso'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Japón 2024' AND t.anio = 2024;

-- 7º George Russell
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 7, 'terminado', 6
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'George' AND p.apellido = 'Russell'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Japón 2024' AND t.anio = 2024;

-- 8º Oscar Piastri
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 8, 'terminado', 4
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Oscar' AND p.apellido = 'Piastri'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Japón 2024' AND t.anio = 2024;

-- 9º Lewis Hamilton
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 9, 'terminado', 2
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Lewis' AND p.apellido = 'Hamilton'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Japón 2024' AND t.anio = 2024;

-- 10º Yuki Tsunoda
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 10, 'terminado', 1
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Yuki' AND p.apellido = 'Tsunoda'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Japón 2024' AND t.anio = 2024;

-- 11º Nico Hülkenberg
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 11, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Nico' AND p.apellido = 'Hülkenberg'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Japón 2024' AND t.anio = 2024;

-- 12º Lance Stroll
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 12, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Lance' AND p.apellido = 'Stroll'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Japón 2024' AND t.anio = 2024;


-- 13º Kevin Magnussen
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 13, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Kevin' AND p.apellido = 'Magnussen'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Japón 2024' AND t.anio = 2024;


-- 14º Valtteri Bottas
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 14, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Valtteri' AND p.apellido = 'Bottas'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Japón 2024' AND t.anio = 2024;


-- 15º Esteban Ocon
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 15, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Esteban' AND p.apellido = 'Ocon'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Japón 2024' AND t.anio = 2024;


-- 16º Pierre Gasly
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 16, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Pierre' AND p.apellido = 'Gasly'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Japón 2024' AND t.anio = 2024;

-- 17º Logan Sargeant
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 17, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Logan' AND p.apellido = 'Sargeant'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Japón 2024' AND t.anio = 2024;

-- 18º Zhou Guanyu
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 18, 'retirado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Zhou' AND p.apellido = 'Guanyu'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Japón 2024' AND t.anio = 2024;

-- 19º Daniel Ricciardo
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 19, 'retirado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Daniel' AND p.apellido = 'Ricciardo'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Japón 2024' AND t.anio = 2024;

-- 20º Alexander Albon
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 20, 'retirado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Alexander' AND p.apellido = 'Albon'
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

-- 4º Charles Leclerc
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 4, 'terminado', 12
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Charles' AND p.apellido = 'Leclerc'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de China 2024' AND t.anio = 2024;

-- 5º Carlos Sainz
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 5, 'terminado', 10
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Carlos' AND p.apellido = 'Sainz'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de China 2024' AND t.anio = 2024;

-- 6º George Russell
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 6, 'terminado', 8
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'George' AND p.apellido = 'Russell'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de China 2024' AND t.anio = 2024;

-- 7º Fernando Alonso
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 7, 'terminado', 6
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Fernando' AND p.apellido = 'Alonso'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de China 2024' AND t.anio = 2024;

-- 8º Oscar Piastri
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 8, 'terminado', 4
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Oscar' AND p.apellido = 'Piastri'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de China 2024' AND t.anio = 2024;

-- 9º Lewis Hamilton
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 9, 'terminado', 2
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Lewis' AND p.apellido = 'Hamilton'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de China 2024' AND t.anio = 2024;

-- 10º Nico Hülkenberg
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 10, 'terminado', 1
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Nico' AND p.apellido = 'Hülkenberg'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de China 2024' AND t.anio = 2024;

-- 11º Esteban Ocon
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 11, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Esteban' AND p.apellido = 'Ocon'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de China 2024' AND t.anio = 2024;

-- 12º Alexander Albon
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 12, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Alexander' AND p.apellido = 'Albon'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de China 2024' AND t.anio = 2024;

-- 13º Pierre Gasly
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 13, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Pierre' AND p.apellido = 'Gasly'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de China 2024' AND t.anio = 2024;

-- 14º Zhou Guanyu
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 14, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Zhou' AND p.apellido = 'Guanyu'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de China 2024' AND t.anio = 2024;

-- 15º Lance Stroll
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 15, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Lance' AND p.apellido = 'Stroll'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de China 2024' AND t.anio = 2024;

-- 16º Kevin Magnussen
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 16, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Kevin' AND p.apellido = 'Magnussen'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de China 2024' AND t.anio = 2024;

-- 17º Logan Sargeant
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 17, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Logan' AND p.apellido = 'Sargeant'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de China 2024' AND t.anio = 2024;

-- 18º Daniel Ricciardo (NC)
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 18, 'retirado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Daniel' AND p.apellido = 'Ricciardo'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de China 2024' AND t.anio = 2024;

-- 19º Yuki Tsunoda (NC)
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 19, 'retirado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Yuki' AND p.apellido = 'Tsunoda'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de China 2024' AND t.anio = 2024;

-- 20º Valtteri Bottas (NC)
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 20, 'retirado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Valtteri' AND p.apellido = 'Bottas'
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

-- 4º Sergio Pérez
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 4, 'terminado', 12
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Sergio' AND p.apellido = 'Pérez'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Miami 2024' AND t.anio = 2024;

-- 5º Carlos Sainz
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 5, 'terminado', 10
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Carlos' AND p.apellido = 'Sainz'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Miami 2024' AND t.anio = 2024;

-- 6º Lewis Hamilton
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 6, 'terminado', 8
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Lewis' AND p.apellido = 'Hamilton'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Miami 2024' AND t.anio = 2024;

-- 7º Yuki Tsunoda
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 7, 'terminado', 6
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Yuki' AND p.apellido = 'Tsunoda'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Miami 2024' AND t.anio = 2024;

-- 8º George Russell
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 8, 'terminado', 4
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'George' AND p.apellido = 'Russell'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Miami 2024' AND t.anio = 2024;

-- 9º Fernando Alonso
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 9, 'terminado', 2
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Fernando' AND p.apellido = 'Alonso'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Miami 2024' AND t.anio = 2024;

-- 10º Esteban Ocon
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 10, 'terminado', 1
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Esteban' AND p.apellido = 'Ocon'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Miami 2024' AND t.anio = 2024;

-- 11º Nico Hülkenberg
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 11, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Nico' AND p.apellido = 'Hülkenberg'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Miami 2024' AND t.anio = 2024;

-- 12º Pierre Gasly
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 12, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Pierre' AND p.apellido = 'Gasly'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Miami 2024' AND t.anio = 2024;

-- 13º Oscar Piastri
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 13, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Oscar' AND p.apellido = 'Piastri'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Miami 2024' AND t.anio = 2024;

-- 14º Zhou Guanyu
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 14, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Zhou' AND p.apellido = 'Guanyu'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Miami 2024' AND t.anio = 2024;

-- 15º Daniel Ricciardo
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 15, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Daniel' AND p.apellido = 'Ricciardo'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Miami 2024' AND t.anio = 2024;

-- 16º Valtteri Bottas
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 16, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Valtteri' AND p.apellido = 'Bottas'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Miami 2024' AND t.anio = 2024;

-- 17º Lance Stroll
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 17, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Lance' AND p.apellido = 'Stroll'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Miami 2024' AND t.anio = 2024;

-- 18º Alexander Albon
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 18, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Alexander' AND p.apellido = 'Albon'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Miami 2024' AND t.anio = 2024;

-- 19º Kevin Magnussen
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 19, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Kevin' AND p.apellido = 'Magnussen'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Miami 2024' AND t.anio = 2024;

-- 20º Logan Sargeant
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 20, 'retirado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Logan' AND p.apellido = 'Sargeant'
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

-- 4º Oscar Piastri
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 4, 'terminado', 12
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Oscar' AND p.apellido = 'Piastri'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Emilia-Romaña 2024' AND t.anio = 2024;

-- 5º Carlos Sainz
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 5, 'terminado', 10
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Carlos' AND p.apellido = 'Sainz'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Emilia-Romaña 2024' AND t.anio = 2024;

-- 6º Lewis Hamilton
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 6, 'terminado', 8
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Lewis' AND p.apellido = 'Hamilton'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Emilia-Romaña 2024' AND t.anio = 2024;

-- 7º George Russell
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 7, 'terminado', 7
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'George' AND p.apellido = 'Russell'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Emilia-Romaña 2024' AND t.anio = 2024;

-- 8º Sergio Pérez
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 8, 'terminado', 4
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Sergio' AND p.apellido = 'Pérez'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Emilia-Romaña 2024' AND t.anio = 2024;

-- 9º Lance Stroll
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 9, 'terminado', 2
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Lance' AND p.apellido = 'Stroll'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Emilia-Romaña 2024' AND t.anio = 2024;

-- 10º Yuki Tsunoda
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 10, 'terminado', 1
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Yuki' AND p.apellido = 'Tsunoda'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Emilia-Romaña 2024' AND t.anio = 2024;

-- 11º Nico Hülkenberg
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 11, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Nico' AND p.apellido = 'Hülkenberg'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Emilia-Romaña 2024' AND t.anio = 2024;

-- 12º Kevin Magnussen
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 12, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Kevin' AND p.apellido = 'Magnussen'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Emilia-Romaña 2024' AND t.anio = 2024;

-- 13º Daniel Ricciardo
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 13, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Daniel' AND p.apellido = 'Ricciardo'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Emilia-Romaña 2024' AND t.anio = 2024;

-- 14º Esteban Ocon
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 14, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Esteban' AND p.apellido = 'Ocon'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Emilia-Romaña 2024' AND t.anio = 2024;

-- 15º Zhou Guanyu
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 15, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Zhou' AND p.apellido = 'Guanyu'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Emilia-Romaña 2024' AND t.anio = 2024;

-- 16º Pierre Gasly
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 16, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Pierre' AND p.apellido = 'Gasly'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Emilia-Romaña 2024' AND t.anio = 2024;

-- 17º Logan Sargeant
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 17, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Logan' AND p.apellido = 'Sargeant'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Emilia-Romaña 2024' AND t.anio = 2024;

-- 18º Valtteri Bottas
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 18, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Valtteri' AND p.apellido = 'Bottas'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Emilia-Romaña 2024' AND t.anio = 2024;

-- 19º Fernando Alonso
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 19, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Fernando' AND p.apellido = 'Alonso'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Emilia-Romaña 2024' AND t.anio = 2024;

-- 20º Alexander Albon
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 20, 'retirado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Alexander' AND p.apellido = 'Albon'
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

-- 4º Lando Norris
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 4, 'terminado', 12
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Lando' AND p.apellido = 'Norris'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Mónaco 2024' AND t.anio = 2024;

-- 5º George Russell
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 5, 'terminado', 10
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'George' AND p.apellido = 'Russell'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Mónaco 2024' AND t.anio = 2024;

-- 6º Max Verstappen
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 6, 'terminado', 8
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Max' AND p.apellido = 'Verstappen'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Mónaco 2024' AND t.anio = 2024;

-- 7º Lewis Hamilton
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 7, 'terminado', 6
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Lewis' AND p.apellido = 'Hamilton'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Mónaco 2024' AND t.anio = 2024;

-- 8º Yuki Tsunoda
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 8, 'terminado', 4
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Yuki' AND p.apellido = 'Tsunoda'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Mónaco 2024' AND t.anio = 2024;

-- 9º Alexander Albon
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 9, 'terminado', 2
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Alexander' AND p.apellido = 'Albon'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Mónaco 2024' AND t.anio = 2024;

-- 10º Pierre Gasly
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 10, 'terminado', 1
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Pierre' AND p.apellido = 'Gasly'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Mónaco 2024' AND t.anio = 2024;

-- 11º Fernando Alonso
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 11, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Fernando' AND p.apellido = 'Alonso'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Mónaco 2024' AND t.anio = 2024;

-- 12º Daniel Ricciardo
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 12, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Daniel' AND p.apellido = 'Ricciardo'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Mónaco 2024' AND t.anio = 2024;

-- 13º Valtteri Bottas
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 13, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Valtteri' AND p.apellido = 'Bottas'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Mónaco 2024' AND t.anio = 2024;

-- 14º Lance Stroll
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 14, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Lance' AND p.apellido = 'Stroll'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Mónaco 2024' AND t.anio = 2024;

-- 15º Logan Sargeant
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 15, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Logan' AND p.apellido = 'Sargeant'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Mónaco 2024' AND t.anio = 2024;

-- 16º Zhou Guanyu
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 16, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Zhou' AND p.apellido = 'Guanyu'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Mónaco 2024' AND t.anio = 2024;

-- 17º Esteban Ocon
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 17, 'retirado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Esteban' AND p.apellido = 'Ocon'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Mónaco 2024' AND t.anio = 2024;

-- 18º Sergio Pérez
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 18, 'retirado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Sergio' AND p.apellido = 'Pérez'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Mónaco 2024' AND t.anio = 2024;

-- 19º Nico Hülkenberg
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 19, 'retirado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Nico' AND p.apellido = 'Hülkenberg'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Mónaco 2024' AND t.anio = 2024;

-- 20º Kevin Magnussen
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 20, 'retirado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Kevin' AND p.apellido = 'Magnussen'
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

-- 4º Lewis Hamilton
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 4, 'terminado', 13
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Lewis' AND p.apellido = 'Hamilton'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Canadá 2024' AND t.anio = 2024;

-- 5º Oscar Piastri
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 5, 'terminado', 10
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Oscar' AND p.apellido = 'Piastri'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Canadá 2024' AND t.anio = 2024;

-- 6º Fernando Alonso
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 6, 'terminado', 8
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Fernando' AND p.apellido = 'Alonso'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Canadá 2024' AND t.anio = 2024;

-- 7º Lance Stroll
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 7, 'terminado', 6
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Lance' AND p.apellido = 'Stroll'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Canadá 2024' AND t.anio = 2024;

-- 8º Daniel Ricciardo
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 8, 'terminado', 4
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Daniel' AND p.apellido = 'Ricciardo'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Canadá 2024' AND t.anio = 2024;

-- 9º Pierre Gasly
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 9, 'terminado', 2
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Pierre' AND p.apellido = 'Gasly'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Canadá 2024' AND t.anio = 2024;

-- 10º Esteban Ocon
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 10, 'terminado', 1
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Esteban' AND p.apellido = 'Ocon'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Canadá 2024' AND t.anio = 2024;

-- 11º Nico Hülkenberg
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 11, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Nico' AND p.apellido = 'Hülkenberg'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Canadá 2024' AND t.anio = 2024;

-- 12º Kevin Magnussen
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 12, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Kevin' AND p.apellido = 'Magnussen'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Canadá 2024' AND t.anio = 2024;

-- 13º Valtteri Bottas
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 13, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Valtteri' AND p.apellido = 'Bottas'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Canadá 2024' AND t.anio = 2024;

-- 14º Yuki Tsunoda
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 14, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Yuki' AND p.apellido = 'Tsunoda'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Canadá 2024' AND t.anio = 2024;

-- 15º Zhou Guanyu
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 15, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Zhou' AND p.apellido = 'Guanyu'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Canadá 2024' AND t.anio = 2024;

-- 16º Carlos Sainz
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 16, 'retirado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Carlos' AND p.apellido = 'Sainz'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Canadá 2024' AND t.anio = 2024;

-- 17º Alexander Albon
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 17, 'retirado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Alexander' AND p.apellido = 'Albon'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Canadá 2024' AND t.anio = 2024;

-- 18º Sergio Pérez
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 18, 'retirado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Sergio' AND p.apellido = 'Pérez'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Canadá 2024' AND t.anio = 2024;

-- 19º Charles Leclerc
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 19, 'retirado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Charles' AND p.apellido = 'Leclerc'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Canadá 2024' AND t.anio = 2024;

-- 20º Logan Sargeant
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 20, 'retirado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Logan' AND p.apellido = 'Sargeant'
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

-- 4º George Russell
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 4, 'terminado', 12
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'George' AND p.apellido = 'Russell'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de España 2024' AND t.anio = 2024;

-- 5º Charles Leclerc
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 5, 'terminado', 10
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Charles' AND p.apellido = 'Leclerc'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de España 2024' AND t.anio = 2024;

-- 6º Carlos Sainz
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 6, 'terminado', 8
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Carlos' AND p.apellido = 'Sainz'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de España 2024' AND t.anio = 2024;

-- 7º Oscar Piastri
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 7, 'terminado', 6
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Oscar' AND p.apellido = 'Piastri'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de España 2024' AND t.anio = 2024;

-- 8º Sergio Pérez
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 8, 'terminado', 4
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Sergio' AND p.apellido = 'Pérez'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de España 2024' AND t.anio = 2024;

-- 9º Pierre Gasly
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 9, 'terminado', 2
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Pierre' AND p.apellido = 'Gasly'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de España 2024' AND t.anio = 2024;

-- 10º Esteban Ocon
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 10, 'terminado', 1
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Esteban' AND p.apellido = 'Ocon'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de España 2024' AND t.anio = 2024;

-- 11º Nico Hülkenberg
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 11, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Nico' AND p.apellido = 'Hülkenberg'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de España 2024' AND t.anio = 2024;

-- 12º Fernando Alonso
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 12, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Fernando' AND p.apellido = 'Alonso'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de España 2024' AND t.anio = 2024;

-- 13º Zhou Guanyu
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 13, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Zhou' AND p.apellido = 'Guanyu'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de España 2024' AND t.anio = 2024;

-- 14º Lance Stroll
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 14, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Lance' AND p.apellido = 'Stroll'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de España 2024' AND t.anio = 2024;

-- 15º Daniel Ricciardo
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 15, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Daniel' AND p.apellido = 'Ricciardo'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de España 2024' AND t.anio = 2024;

-- 16º Valtteri Bottas
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 16, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Valtteri' AND p.apellido = 'Bottas'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de España 2024' AND t.anio = 2024;

-- 17º Kevin Magnussen
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 17, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Kevin' AND p.apellido = 'Magnussen'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de España 2024' AND t.anio = 2024;

-- 18º Alexander Albon
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 18, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Alexander' AND p.apellido = 'Albon'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de España 2024' AND t.anio = 2024;

-- 19º Yuki Tsunoda
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 19, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Yuki' AND p.apellido = 'Tsunoda'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de España 2024' AND t.anio = 2024;

-- 20º Logan Sargeant
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 20, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Logan' AND p.apellido = 'Sargeant'
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

-- 4º Lewis Hamilton
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 4, 'terminado', 12
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Lewis' AND p.apellido = 'Hamilton'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Austria 2024' AND t.anio = 2024;

-- 5º Max Verstappen
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 5, 'terminado', 10
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Max' AND p.apellido = 'Verstappen'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Austria 2024' AND t.anio = 2024;

-- 6º Nico Hülkenberg
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 6, 'terminado', 8
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Nico' AND p.apellido = 'Hülkenberg'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Austria 2024' AND t.anio = 2024;

-- 7º Sergio Pérez
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 7, 'terminado', 6
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Sergio' AND p.apellido = 'Pérez'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Austria 2024' AND t.anio = 2024;

-- 8º Kevin Magnussen
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 8, 'terminado', 4
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Kevin' AND p.apellido = 'Magnussen'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Austria 2024' AND t.anio = 2024;

-- 9º Daniel Ricciardo
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 9, 'terminado', 2
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Daniel' AND p.apellido = 'Ricciardo'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Austria 2024' AND t.anio = 2024;

-- 10º Pierre Gasly
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 10, 'terminado', 1
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Pierre' AND p.apellido = 'Gasly'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Austria 2024' AND t.anio = 2024;

-- 11º Charles Leclerc
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 11, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Charles' AND p.apellido = 'Leclerc'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Austria 2024' AND t.anio = 2024;

-- 12º Esteban Ocon
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 12, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Esteban' AND p.apellido = 'Ocon'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Austria 2024' AND t.anio = 2024;

-- 13º Lance Stroll
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 13, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Lance' AND p.apellido = 'Stroll'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Austria 2024' AND t.anio = 2024;

-- 14º Yuki Tsunoda
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 14, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Yuki' AND p.apellido = 'Tsunoda'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Austria 2024' AND t.anio = 2024;

-- 15º Alexander Albon
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 15, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Alexander' AND p.apellido = 'Albon'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Austria 2024' AND t.anio = 2024;

-- 16º Valtteri Bottas
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 16, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Valtteri' AND p.apellido = 'Bottas'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Austria 2024' AND t.anio = 2024;

-- 17º Zhou Guanyu
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 17, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Zhou' AND p.apellido = 'Guanyu'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Austria 2024' AND t.anio = 2024;

-- 18º Fernando Alonso
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 18, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Fernando' AND p.apellido = 'Alonso'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Austria 2024' AND t.anio = 2024;

-- 19º Logan Sargeant
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 19, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Logan' AND p.apellido = 'Sargeant'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Austria 2024' AND t.anio = 2024;

-- 20º Lando Norris
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 20, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Lando' AND p.apellido = 'Norris'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Austria 2024' AND t.anio = 2024;


-- =====================
-- Gran Premio de Gran Bretaña 2024
-- =====================

-- 1º Lewis Hamilton
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

-- 4º Oscar Piastri
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 4, 'terminado', 12
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Oscar' AND p.apellido = 'Piastri'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Gran Bretaña 2024' AND t.anio = 2024;

-- 5º Carlos Sainz
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 5, 'terminado', 11
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Carlos' AND p.apellido = 'Sainz'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Gran Bretaña 2024' AND t.anio = 2024;

-- 6º Nico Hülkenberg
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 6, 'terminado', 8
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Nico' AND p.apellido = 'Hülkenberg'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Gran Bretaña 2024' AND t.anio = 2024;

-- 7º Lance Stroll
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 7, 'terminado', 6
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Lance' AND p.apellido = 'Stroll'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Gran Bretaña 2024' AND t.anio = 2024;

-- 8º Fernando Alonso
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 8, 'terminado', 4
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Fernando' AND p.apellido = 'Alonso'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Gran Bretaña 2024' AND t.anio = 2024;

-- 9º Alexander Albon
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 9, 'terminado', 2
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Alexander' AND p.apellido = 'Albon'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Gran Bretaña 2024' AND t.anio = 2024;

-- 10º Yuki Tsunoda
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 10, 'terminado', 1
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Yuki' AND p.apellido = 'Tsunoda'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Gran Bretaña 2024' AND t.anio = 2024;

-- 11º Logan Sargeant
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 11, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Logan' AND p.apellido = 'Sargeant'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Gran Bretaña 2024' AND t.anio = 2024;

-- 12º Kevin Magnussen
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 12, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Kevin' AND p.apellido = 'Magnussen'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Gran Bretaña 2024' AND t.anio = 2024;

-- 13º Daniel Ricciardo
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 13, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Daniel' AND p.apellido = 'Ricciardo'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Gran Bretaña 2024' AND t.anio = 2024;

-- 14º Charles Leclerc
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 14, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Charles' AND p.apellido = 'Leclerc'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Gran Bretaña 2024' AND t.anio = 2024;

-- 15º Valtteri Bottas
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 15, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Valtteri' AND p.apellido = 'Bottas'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Gran Bretaña 2024' AND t.anio = 2024;

-- 16º Esteban Ocon
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 16, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Esteban' AND p.apellido = 'Ocon'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Gran Bretaña 2024' AND t.anio = 2024;

-- 17º Sergio Pérez
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 17, 'retirado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Sergio' AND p.apellido = 'Pérez'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Gran Bretaña 2024' AND t.anio = 2024;

-- 18º Zhou Guanyu
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 18, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Zhou' AND p.apellido = 'Guanyu'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Gran Bretaña 2024' AND t.anio = 2024;

-- 19º Kevin Magnussen
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 19, 'retirado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Kevin' AND p.apellido = 'Magnussen'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Gran Bretaña 2024' AND t.anio = 2024;

-- 20º Pierre Gasly
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 20, 'retirado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Pierre' AND p.apellido = 'Gasly'
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

-- 4º Charles Leclerc
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 4, 'terminado', 12
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Charles' AND p.apellido = 'Leclerc'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Hungría 2024' AND t.anio = 2024;

-- 5º Max Verstappen
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 5, 'terminado', 10
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Max' AND p.apellido = 'Verstappen'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Hungría 2024' AND t.anio = 2024;

-- 6º Carlos Sainz
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 6, 'terminado', 8
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Carlos' AND p.apellido = 'Sainz'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Hungría 2024' AND t.anio = 2024;

-- 7º Sergio Pérez
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 7, 'terminado', 6
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Sergio' AND p.apellido = 'Pérez'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Hungría 2024' AND t.anio = 2024;

-- 8º George Russell
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 8, 'terminado', 5
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'George' AND p.apellido = 'Russell'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Hungría 2024' AND t.anio = 2024;

-- 9º Yuki Tsunoda
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 9, 'terminado', 2
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Yuki' AND p.apellido = 'Tsunoda'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Hungría 2024' AND t.anio = 2024;

-- 10º Lance Stroll
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 10, 'terminado', 1
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Lance' AND p.apellido = 'Stroll'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Hungría 2024' AND t.anio = 2024;

-- 11º Fernando Alonso
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 11, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Fernando' AND p.apellido = 'Alonso'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Hungría 2024' AND t.anio = 2024;

-- 12º Daniel Ricciardo
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 12, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Daniel' AND p.apellido = 'Ricciardo'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Hungría 2024' AND t.anio = 2024;

-- 13º Nico Hulkenberg
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 13, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Nico' AND p.apellido = 'Hulkenberg'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Hungría 2024' AND t.anio = 2024;

-- 14º Alexander Albon
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 14, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Alexander' AND p.apellido = 'Albon'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Hungría 2024' AND t.anio = 2024;

-- 15º Kevin Magnussen
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 15, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Kevin' AND p.apellido = 'Magnussen'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Hungría 2024' AND t.anio = 2024;

-- 16º Valtteri Bottas
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 16, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Valtteri' AND p.apellido = 'Bottas'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Hungría 2024' AND t.anio = 2024;

-- 17º Logan Sargeant
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 17, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Logan' AND p.apellido = 'Sargeant'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Hungría 2024' AND t.anio = 2024;

-- 18º Esteban Ocon
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 18, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Esteban' AND p.apellido = 'Ocon'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Hungría 2024' AND t.anio = 2024;

-- 19º Zhou Guanyu
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 19, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Zhou' AND p.apellido = 'Guanyu'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Hungría 2024' AND t.anio = 2024;

-- 20º Pierre Gasly
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 20, 'retirado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Pierre' AND p.apellido = 'Gasly'
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

-- 4º Max Verstappen
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 4, 'terminado', 12
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Max' AND p.apellido = 'Verstappen'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Bélgica 2024' AND t.anio = 2024;

-- 5º Lando Norris
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 5, 'terminado', 10
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Lando' AND p.apellido = 'Norris'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Bélgica 2024' AND t.anio = 2024;

-- 6º Carlos Sainz Jr.
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 6, 'terminado', 8
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Carlos' AND p.apellido = 'Sainz'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Bélgica 2024' AND t.anio = 2024;

-- 7º Sergio Pérez
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 7, 'terminado', 7
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Sergio' AND p.apellido = 'Pérez'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Bélgica 2024' AND t.anio = 2024;

-- 8º Fernando Alonso
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 8, 'terminado', 4
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Fernando' AND p.apellido = 'Alonso'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Bélgica 2024' AND t.anio = 2024;

-- 9º Esteban Ocon
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 9, 'terminado', 2
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Esteban' AND p.apellido = 'Ocon'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Bélgica 2024' AND t.anio = 2024;

-- 10º Daniel Ricciardo
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 10, 'terminado', 1
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Daniel' AND p.apellido = 'Ricciardo'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Bélgica 2024' AND t.anio = 2024;

-- 11º Lance Stroll
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 11, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Lance' AND p.apellido = 'Stroll'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Bélgica 2024' AND t.anio = 2024;

-- 12º Alexander Albon
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 12, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Alexander' AND p.apellido = 'Albon'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Bélgica 2024' AND t.anio = 2024;

-- 13º Pierre Gasly
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 13, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Pierre' AND p.apellido = 'Gasly'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Bélgica 2024' AND t.anio = 2024;

-- 14º Kevin Magnussen
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 14, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Kevin' AND p.apellido = 'Magnussen'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Bélgica 2024' AND t.anio = 2024;

-- 15º Valtteri Bottas
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 15, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Valtteri' AND p.apellido = 'Bottas'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Bélgica 2024' AND t.anio = 2024;

-- 16º Yuki Tsunoda
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 16, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Yuki' AND p.apellido = 'Tsunoda'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Bélgica 2024' AND t.anio = 2024;

-- 17º Logan Sargeant
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 17, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Logan' AND p.apellido = 'Sargeant'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Bélgica 2024' AND t.anio = 2024;

-- 18º Nico Hülkenberg
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 18, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Nico' AND p.apellido = 'Hülkenberg'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Bélgica 2024' AND t.anio = 2024;

-- 19º Zhou Guanyu
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 19, 'retirado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Zhou' AND p.apellido = 'Guanyu'
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

-- 4º Oscar Piastri
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 4, 'terminado', 12
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Oscar' AND p.apellido = 'Piastri'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Países Bajos 2024' AND t.anio = 2024;

-- 5º Carlos Sainz
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 5, 'terminado', 10
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Carlos' AND p.apellido = 'Sainz'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Países Bajos 2024' AND t.anio = 2024;

-- 6º Sergio Pérez
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 6, 'terminado', 8
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Sergio' AND p.apellido = 'Pérez'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Países Bajos 2024' AND t.anio = 2024;

-- 7º George Russell
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 7, 'terminado', 6
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'George' AND p.apellido = 'Russell'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Países Bajos 2024' AND t.anio = 2024;

-- 8º Lewis Hamilton
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 8, 'terminado', 4
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Lewis' AND p.apellido = 'Hamilton'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Países Bajos 2024' AND t.anio = 2024;

-- 9º Pierre Gasly
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 9, 'terminado', 2
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Pierre' AND p.apellido = 'Gasly'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Países Bajos 2024' AND t.anio = 2024;

-- 10º Fernando Alonso
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 10, 'terminado', 1
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Fernando' AND p.apellido = 'Alonso'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Países Bajos 2024' AND t.anio = 2024;

-- 11º Nico Hülkenberg
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 11, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Nico' AND p.apellido = 'Hülkenberg'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Países Bajos 2024' AND t.anio = 2024;

-- 12º Daniel Ricciardo
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 12, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Daniel' AND p.apellido = 'Ricciardo'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Países Bajos 2024' AND t.anio = 2024;

-- 13º Lance Stroll
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 13, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Lance' AND p.apellido = 'Stroll'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Países Bajos 2024' AND t.anio = 2024;

-- 14º Alexander Albon
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 14, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Alexander' AND p.apellido = 'Albon'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Países Bajos 2024' AND t.anio = 2024;

-- 15º Esteban Ocon
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 15, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Esteban' AND p.apellido = 'Ocon'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Países Bajos 2024' AND t.anio = 2024;

-- 16º Logan Sargeant
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 16, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Logan' AND p.apellido = 'Sargeant'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Países Bajos 2024' AND t.anio = 2024;

-- 17º Yuki Tsunoda
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 17, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Yuki' AND p.apellido = 'Tsunoda'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Países Bajos 2024' AND t.anio = 2024;

-- 18º Kevin Magnussen
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 18, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Kevin' AND p.apellido = 'Magnussen'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Países Bajos 2024' AND t.anio = 2024;

-- 19º Valtteri Bottas
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 19, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Valtteri' AND p.apellido = 'Bottas'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Países Bajos 2024' AND t.anio = 2024;

-- 20º Zhou Guanyu
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 20, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Zhou' AND p.apellido = 'Guanyu'
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

-- 4º Carlos Sainz
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 4, 'terminado', 12
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Carlos' AND p.apellido = 'Sainz'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Italia 2024' AND t.anio = 2024;

-- 5º Lewis Hamilton
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 5, 'terminado', 10
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Lewis' AND p.apellido = 'Hamilton'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Italia 2024' AND t.anio = 2024;

-- 6º Max Verstappen
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 6, 'terminado', 8
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Max' AND p.apellido = 'Verstappen'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Italia 2024' AND t.anio = 2024;

-- 7º George Russell
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 7, 'terminado', 6
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'George' AND p.apellido = 'Russell'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Italia 2024' AND t.anio = 2024;

-- 8º Sergio Pérez
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 8, 'terminado', 4
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Sergio' AND p.apellido = 'Pérez'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Italia 2024' AND t.anio = 2024;

-- 9º Alexander Albon
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 9, 'terminado', 2
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Alexander' AND p.apellido = 'Albon'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Italia 2024' AND t.anio = 2024;

-- 10º Kevin Magnussen
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 10, 'terminado', 1
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Kevin' AND p.apellido = 'Magnussen'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Italia 2024' AND t.anio = 2024;

-- 11º Fernando Alonso
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 11, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Fernando' AND p.apellido = 'Alonso'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Italia 2024' AND t.anio = 2024;

-- 12º Franco Colapinto
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 12, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Franco' AND p.apellido = 'Colapinto'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Italia 2024' AND t.anio = 2024;

-- 13º Daniel Ricciardo
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 13, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Daniel' AND p.apellido = 'Ricciardo'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Italia 2024' AND t.anio = 2024;

-- 14º Esteban Ocon
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 14, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Esteban' AND p.apellido = 'Ocon'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Italia 2024' AND t.anio = 2024;

-- 15º Pierre Gasly
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 15, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Pierre' AND p.apellido = 'Gasly'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Italia 2024' AND t.anio = 2024;

-- 16º Valtteri Bottas
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 16, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Valtteri' AND p.apellido = 'Bottas'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Italia 2024' AND t.anio = 2024;

-- 17º Nico Hülkenberg
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 17, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Nico' AND p.apellido = 'Hülkenberg'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Italia 2024' AND t.anio = 2024;

-- 18º Zhou Guanyu
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 18, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Zhou' AND p.apellido = 'Guanyu'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Italia 2024' AND t.anio = 2024;

-- 19º Lance Stroll
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 19, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Lance' AND p.apellido = 'Stroll'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Italia 2024' AND t.anio = 2024;

-- 20º Zhou Guanyu
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 20, 'retirado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Zhou' AND p.apellido = 'Guanyu'
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

-- 4º Lando Norris
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 4, 'terminado', 13
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Lando' AND p.apellido = 'Norris'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Azerbaiyán 2024' AND t.anio = 2024;

-- 5º Max Verstappen
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 5, 'terminado', 10
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Max' AND p.apellido = 'Verstappen'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Azerbaiyán 2024' AND t.anio = 2024;

-- 6º Fernando Alonso
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 6, 'terminado', 8
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Fernando' AND p.apellido = 'Alonso'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Azerbaiyán 2024' AND t.anio = 2024;

-- 7º Alexander Albon
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 7, 'terminado', 6
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Alexander' AND p.apellido = 'Albon'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Azerbaiyán 2024' AND t.anio = 2024;

-- 8º Franco Colapinto
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 8, 'terminado', 4
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Franco' AND p.apellido = 'Colapinto'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Azerbaiyán 2024' AND t.anio = 2024;

-- 9º Lewis Hamilton
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 9, 'terminado', 2
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Lewis' AND p.apellido = 'Hamilton'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Azerbaiyán 2024' AND t.anio = 2024;

-- 10º Oliver Bearman
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 10, 'terminado', 1
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Oliver' AND p.apellido = 'Bearman'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Azerbaiyán 2024' AND t.anio = 2024;

-- 11º Nico Hülkenberg
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 11, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Nico' AND p.apellido = 'Hülkenberg'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Azerbaiyán 2024' AND t.anio = 2024;

-- 12º Pierre Gasly
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 12, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Pierre' AND p.apellido = 'Gasly'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Azerbaiyán 2024' AND t.anio = 2024;

-- 13º Daniel Ricciardo
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 13, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Daniel' AND p.apellido = 'Ricciardo'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Azerbaiyán 2024' AND t.anio = 2024;

-- 14º Zhou Guanyu
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 14, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Zhou' AND p.apellido = 'Guanyu'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Azerbaiyán 2024' AND t.anio = 2024;

-- 15º Esteban Ocon
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 15, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Esteban' AND p.apellido = 'Ocon'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Azerbaiyán 2024' AND t.anio = 2024;

-- 16º Valtteri Bottas
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 16, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Valtteri' AND p.apellido = 'Bottas'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Azerbaiyán 2024' AND t.anio = 2024;

-- 17º Sergio Pérez
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 17, 'retirado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Sergio' AND p.apellido = 'Pérez'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Azerbaiyán 2024' AND t.anio = 2024;

-- 18º Carlos Sainz
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 18, 'retirado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Carlos' AND p.apellido = 'Sainz'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Azerbaiyán 2024' AND t.anio = 2024;

-- 19º Lance Stroll
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 19, 'retirado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Lance' AND p.apellido = 'Stroll'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Azerbaiyán 2024' AND t.anio = 2024;

-- 20º Yuki Tsunoda
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 20, 'retirado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Yuki' AND p.apellido = 'Tsunoda'
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

-- 4º George Russell
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 4, 'terminado', 12
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'George' AND p.apellido = 'Russell'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Singapur 2024' AND t.anio = 2024;

-- 5º Charles Leclerc
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 5, 'terminado', 10
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Charles' AND p.apellido = 'Leclerc'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Singapur 2024' AND t.anio = 2024;

-- 6º Lewis Hamilton
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 6, 'terminado', 8
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Lewis' AND p.apellido = 'Hamilton'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Singapur 2024' AND t.anio = 2024;

-- 7º Carlos Sainz
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 7, 'terminado', 6
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Carlos' AND p.apellido = 'Sainz'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Singapur 2024' AND t.anio = 2024;

-- 8º Fernando Alonso
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 8, 'terminado', 4
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Fernando' AND p.apellido = 'Alonso'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Singapur 2024' AND t.anio = 2024;

-- 9º Nico Hülkenberg
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 9, 'terminado', 2
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Nico' AND p.apellido = 'Hülkenberg'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Singapur 2024' AND t.anio = 2024;

-- 10º Sergio Pérez
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 10, 'terminado', 1
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Sergio' AND p.apellido = 'Pérez'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Singapur 2024' AND t.anio = 2024;

-- 11º Franco Colapinto
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 11, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Franco' AND p.apellido = 'Colapinto'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Singapur 2024' AND t.anio = 2024;

-- 12º Yuki Tsunoda
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 12, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Yuki' AND p.apellido = 'Tsunoda'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Singapur 2024' AND t.anio = 2024;

-- 13º Esteban Ocon
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 13, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Esteban' AND p.apellido = 'Ocon'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Singapur 2024' AND t.anio = 2024;

-- 14º Lance Stroll
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 14, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Lance' AND p.apellido = 'Stroll'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Singapur 2024' AND t.anio = 2024;

-- 15º Zhou Guanyu
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 15, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Zhou' AND p.apellido = 'Guanyu'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Singapur 2024' AND t.anio = 2024;

-- 16º Valtteri Bottas
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 16, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Valtteri' AND p.apellido = 'Bottas'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Singapur 2024' AND t.anio = 2024;

-- 17º Pierre Gasly
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 17, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Pierre' AND p.apellido = 'Gasly'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Singapur 2024' AND t.anio = 2024;

-- 18º Daniel Ricciardo
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 18, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Daniel' AND p.apellido = 'Ricciardo'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Singapur 2024' AND t.anio = 2024;

-- 19º Kevin Magnussen
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 19, 'retirado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Kevin' AND p.apellido = 'Magnussen'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Singapur 2024' AND t.anio = 2024;

-- 20º Alexander Albon
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 20, 'retirado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Alexander' AND p.apellido = 'Albon'
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

-- 4º Lando Norris
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 4, 'terminado', 12
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Lando' AND p.apellido = 'Norris'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Estados Unidos 2024' AND t.anio = 2024;

-- 5º Oscar Piastri
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 5, 'terminado', 10
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Oscar' AND p.apellido = 'Piastri'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Estados Unidos 2024' AND t.anio = 2024;

-- 6º George Russell
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 6, 'terminado', 8
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'George' AND p.apellido = 'Russell'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Estados Unidos 2024' AND t.anio = 2024;

-- 7º Sergio Pérez
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 7, 'terminado', 6
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Sergio' AND p.apellido = 'Pérez'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Estados Unidos 2024' AND t.anio = 2024;

-- 8º Nico Hülkenberg
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 8, 'terminado', 4
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Nico' AND p.apellido = 'Hülkenberg'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Estados Unidos 2024' AND t.anio = 2024;

-- 9º Liam Lawson
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 9, 'terminado', 2
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Liam' AND p.apellido = 'Lawson'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Estados Unidos 2024' AND t.anio = 2024;

-- 10º Franco Colapinto
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 10, 'terminado', 1
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Franco' AND p.apellido = 'Colapinto'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Estados Unidos 2024' AND t.anio = 2024;

-- 11º Kevin Magnussen
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 11, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Kevin' AND p.apellido = 'Magnussen'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Estados Unidos 2024' AND t.anio = 2024;

-- 12º Pierre Gasly
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 12, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Pierre' AND p.apellido = 'Gasly'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Estados Unidos 2024' AND t.anio = 2024;

-- 13º Fernando Alonso
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 13, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Fernando' AND p.apellido = 'Alonso'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Estados Unidos 2024' AND t.anio = 2024;

-- 14º Esteban Ocon
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 14, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Esteban' AND p.apellido = 'Ocon'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Estados Unidos 2024' AND t.anio = 2024;

-- 15º Alexander Albon
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 15, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Alexander' AND p.apellido = 'Albon'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Estados Unidos 2024' AND t.anio = 2024;

-- 16º Alexander Albon (Williams Mercedes)
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 16, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Alexander' AND p.apellido = 'Albon'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Estados Unidos 2024' AND t.anio = 2024;

-- 17º Valtteri Bottas (Kick Sauber Ferrari)
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 17, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Valtteri' AND p.apellido = 'Bottas'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Estados Unidos 2024' AND t.anio = 2024;

-- 18º Esteban Ocon (Alpine Renault)
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 18, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Esteban' AND p.apellido = 'Ocon'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Estados Unidos 2024' AND t.anio = 2024;

-- 19º Zhou Guanyu (Kick Sauber Ferrari)
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 19, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Zhou' AND p.apellido = 'Guanyu'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Estados Unidos 2024' AND t.anio = 2024;

-- 20º Lewis Hamilton (Mercedes) – DNF
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 20, 'DNF', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Lewis' AND p.apellido = 'Hamilton'
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

-- 4º Lewis Hamilton
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 4, 'terminado', 12
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Lewis' AND p.apellido = 'Hamilton'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de México 2024' AND t.anio = 2024;

-- 5º George Russell
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 5, 'terminado', 10
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'George' AND p.apellido = 'Russell'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de México 2024' AND t.anio = 2024;

-- 6º Max Verstappen
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 6, 'terminado', 8
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Max' AND p.apellido = 'Verstappen'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de México 2024' AND t.anio = 2024;

-- 7º Kevin Magnussen
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 7, 'terminado', 6
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Kevin' AND p.apellido = 'Magnussen'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de México 2024' AND t.anio = 2024;

-- 8º Oscar Piastri
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 8, 'terminado', 4
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Oscar' AND p.apellido = 'Piastri'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de México 2024' AND t.anio = 2024;

-- 9º Nico Hülkenberg
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 9, 'terminado', 2
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Nico' AND p.apellido = 'Hülkenberg'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de México 2024' AND t.anio = 2024;

-- 10º Pierre Gasly
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 10, 'terminado', 1
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Pierre' AND p.apellido = 'Gasly'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de México 2024' AND t.anio = 2024;

-- 11º Lance Stroll
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 11, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Lance' AND p.apellido = 'Stroll'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de México 2024' AND t.anio = 2024;

-- 12º Franco Colapinto
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 12, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Franco' AND p.apellido = 'Colapinto'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de México 2024' AND t.anio = 2024;

-- 13º Esteban Ocon
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 13, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Esteban' AND p.apellido = 'Ocon'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de México 2024' AND t.anio = 2024;

-- 14º Valtteri Bottas
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 14, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Valtteri' AND p.apellido = 'Bottas'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de México 2024' AND t.anio = 2024;

-- 15º Zhou Guanyu
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 15, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Zhou' AND p.apellido = 'Guanyu'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de México 2024' AND t.anio = 2024;

-- 16º Liam Lawson
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 16, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Liam' AND p.apellido = 'Lawson'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de México 2024' AND t.anio = 2024;

-- 17º Sergio Pérez
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 17, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Sergio' AND p.apellido = 'Pérez'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de México 2024' AND t.anio = 2024;

-- 18º Alexander Albon
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 18, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Alexander' AND p.apellido = 'Albon'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de México 2024' AND t.anio = 2024;

-- 19º Yuki Tsunoda
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 19, 'retirado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Yuki' AND p.apellido = 'Tsunoda'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de México 2024' AND t.anio = 2024;

-- 20º Yuki Tsunoda
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 20, 'DNF', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Yuki' AND p.apellido = 'Tsunoda'
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

-- 4º George Russell
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 4, 'terminado', 12
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'George' AND p.apellido = 'Russell'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Brasil 2024' AND t.anio = 2024;

-- 5º Charles Leclerc
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 5, 'terminado', 10
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Charles' AND p.apellido = 'Leclerc'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Brasil 2024' AND t.anio = 2024;

-- 6º Lando Norris
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 6, 'terminado', 8
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Lando' AND p.apellido = 'Norris'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Brasil 2024' AND t.anio = 2024;

-- 7º Yuki Tsunoda
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 7, 'terminado', 6
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Yuki' AND p.apellido = 'Tsunoda'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Brasil 2024' AND t.anio = 2024;

-- 8º Oscar Piastri
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 8, 'terminado', 4
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Oscar' AND p.apellido = 'Piastri'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Brasil 2024' AND t.anio = 2024;

-- 9º Liam Lawson
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 9, 'terminado', 2
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Liam' AND p.apellido = 'Lawson'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Brasil 2024' AND t.anio = 2024;

-- 10º Lewis Hamilton
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 10, 'terminado', 1
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Lewis' AND p.apellido = 'Hamilton'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Brasil 2024' AND t.anio = 2024;

-- 11º Sergio Pérez
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 11, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Sergio' AND p.apellido = 'Pérez'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Brasil 2024' AND t.anio = 2024;

-- 12º Oliver Bearman
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 12, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Oliver' AND p.apellido = 'Bearman'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Brasil 2024' AND t.anio = 2024;

-- 13º Valtteri Bottas
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 13, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Valtteri' AND p.apellido = 'Bottas'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Brasil 2024' AND t.anio = 2024;

-- 14º Fernando Alonso
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 14, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Fernando' AND p.apellido = 'Alonso'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Brasil 2024' AND t.anio = 2024;

-- 15º Zhou Guanyu
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 15, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Zhou' AND p.apellido = 'Guanyu'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Brasil 2024' AND t.anio = 2024;

-- 16º Carlos Sainz (DNF)
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 16, 'DNF', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Carlos' AND p.apellido = 'Sainz'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Brasil 2024' AND t.anio = 2024;

-- 17º Franco Colapinto (DNF)
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 17, 'DNF', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Franco' AND p.apellido = 'Colapinto'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Brasil 2024' AND t.anio = 2024;

-- 18º Alexander Albon (DNS)
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 18, 'DNS', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Alexander' AND p.apellido = 'Albon'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Brasil 2024' AND t.anio = 2024;

-- 19º Lance Stroll (DNS)
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 19, 'DNS', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Lance' AND p.apellido = 'Stroll'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Brasil 2024' AND t.anio = 2024;

-- 20º Nico Hülkenberg (DSQ)
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 20, 'DSQ', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Nico' AND p.apellido = 'Hülkenberg'
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

-- 4º Charles Leclerc
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 4, 'terminado', 12
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Charles' AND p.apellido = 'Leclerc'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Las Vegas 2024' AND t.anio = 2024;

-- 5º Max Verstappen
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 5, 'terminado', 10
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Max' AND p.apellido = 'Verstappen'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Las Vegas 2024' AND t.anio = 2024;

-- 6º Lando Norris
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 6, 'terminado', 9
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Lando' AND p.apellido = 'Norris'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Las Vegas 2024' AND t.anio = 2024;

-- 7º Oscar Piastri
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 7, 'terminado', 6
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Oscar' AND p.apellido = 'Piastri'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Las Vegas 2024' AND t.anio = 2024;

-- 8º Nico Hülkenberg
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 8, 'terminado', 4
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Nico' AND p.apellido = 'Hülkenberg'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Las Vegas 2024' AND t.anio = 2024;

-- 9º Yuki Tsunoda
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 9, 'terminado', 2
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Yuki' AND p.apellido = 'Tsunoda'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Las Vegas 2024' AND t.anio = 2024;

-- 10º Sergio Pérez
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 10, 'terminado', 1
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Sergio' AND p.apellido = 'Pérez'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Las Vegas 2024' AND t.anio = 2024;

-- 11º Fernando Alonso
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 11, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Fernando' AND p.apellido = 'Alonso'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Las Vegas 2024' AND t.anio = 2024;

-- 12º Kevin Magnussen
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 12, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Kevin' AND p.apellido = 'Magnussen'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Las Vegas 2024' AND t.anio = 2024;

-- 13º Zhou Guanyu
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 13, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Zhou' AND p.apellido = 'Guanyu'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Las Vegas 2024' AND t.anio = 2024;

-- 14º Franco Colapinto
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 14, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Franco' AND p.apellido = 'Colapinto'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Las Vegas 2024' AND t.anio = 2024;

-- 15º Lance Stroll
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 15, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Lance' AND p.apellido = 'Stroll'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Las Vegas 2024' AND t.anio = 2024;

-- 16º Liam Lawson
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 16, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Liam' AND p.apellido = 'Lawson'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Las Vegas 2024' AND t.anio = 2024;

-- 17º Esteban Ocon
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 17, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Esteban' AND p.apellido = 'Ocon'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Las Vegas 2024' AND t.anio = 2024;

-- 18º Valtteri Bottas
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 18, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Valtteri' AND p.apellido = 'Bottas'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Las Vegas 2024' AND t.anio = 2024;

-- 19º Alexander Albon (DNF)
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 19, 'DNF', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Alexander' AND p.apellido = 'Albon'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Las Vegas 2024' AND t.anio = 2024;

-- 20º Pierre Gasly (DNF)
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 20, 'DNF', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Pierre' AND p.apellido = 'Gasly'
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

-- 4º George Russell
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 4, 'terminado', 12
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'George' AND p.apellido = 'Russell'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Qatar 2024' AND t.anio = 2024;

-- 5º Pierre Gasly
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 5, 'terminado', 10
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Pierre' AND p.apellido = 'Gasly'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Qatar 2024' AND t.anio = 2024;

-- 6º Carlos Sainz
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 6, 'terminado', 8
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Carlos' AND p.apellido = 'Sainz'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Qatar 2024' AND t.anio = 2024;

-- 7º Fernando Alonso
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 7, 'terminado', 6
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Fernando' AND p.apellido = 'Alonso'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Qatar 2024' AND t.anio = 2024;

-- 8º Zhou Guanyu
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 8, 'terminado', 4
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Zhou' AND p.apellido = 'Guanyu'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Qatar 2024' AND t.anio = 2024;

-- 9º Kevin Magnussen
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 9, 'terminado', 2
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Kevin' AND p.apellido = 'Magnussen'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Qatar 2024' AND t.anio = 2024;

-- 10º Lando Norris
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 10, 'terminado', 1
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Lando' AND p.apellido = 'Norris'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Qatar 2024' AND t.anio = 2024;

-- 11º Valtteri Bottas
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 11, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Valtteri' AND p.apellido = 'Bottas'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Qatar 2024' AND t.anio = 2024;

-- 12º Lewis Hamilton
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 12, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Lewis' AND p.apellido = 'Hamilton'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Qatar 2024' AND t.anio = 2024;

-- 13º Yuki Tsunoda
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 13, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Yuki' AND p.apellido = 'Tsunoda'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Qatar 2024' AND t.anio = 2024;

-- 14º Liam Lawson
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 14, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Liam' AND p.apellido = 'Lawson'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Qatar 2024' AND t.anio = 2024;

-- 15º Alexander Albon
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 15, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Alexander' AND p.apellido = 'Albon'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Qatar 2024' AND t.anio = 2024;

-- 16º Esteban Ocon
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 16, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Esteban' AND p.apellido = 'Ocon'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Qatar 2024' AND t.anio = 2024;

-- 17º Sergio Pérez
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 17, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Sergio' AND p.apellido = 'Pérez'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Qatar 2024' AND t.anio = 2024;

-- 18º Lance Stroll
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 18, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Lance' AND p.apellido = 'Stroll'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Qatar 2024' AND t.anio = 2024;

-- 19º Franco Colapinto
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 19, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Franco' AND p.apellido = 'Colapinto'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Qatar 2024' AND t.anio = 2024;

-- 20º Nico Hülkenberg
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 20, 'DSQ', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Nico' AND p.apellido = 'Hülkenberg'
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

-- 4º Lewis Hamilton
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 4, 'terminado', 12
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Lewis' AND p.apellido = 'Hamilton'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Abu Dabi 2024' AND t.anio = 2024;

-- 5º George Russell
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 5, 'terminado', 10
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'George' AND p.apellido = 'Russell'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Abu Dabi 2024' AND t.anio = 2024;

-- 6º Max Verstappen
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 6, 'terminado', 8
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Max' AND p.apellido = 'Verstappen'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Abu Dabi 2024' AND t.anio = 2024;

-- 7º Pierre Gasly
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 7, 'terminado', 6
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Pierre' AND p.apellido = 'Gasly'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Abu Dabi 2024' AND t.anio = 2024;

-- 8º Nico Hülkenberg
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 8, 'terminado', 4
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Nico' AND p.apellido = 'Hülkenberg'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Abu Dabi 2024' AND t.anio = 2024;

-- 9º Fernando Alonso
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 9, 'terminado', 2
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Fernando' AND p.apellido = 'Alonso'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Abu Dabi 2024' AND t.anio = 2024;

-- 10º Oscar Piastri
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 10, 'terminado', 1
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Oscar' AND p.apellido = 'Piastri'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Abu Dabi 2024' AND t.anio = 2024;

-- 11º Alexander Albon
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 11, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Alexander' AND p.apellido = 'Albon'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Abu Dabi 2024' AND t.anio = 2024;

-- 12º Yuki Tsunoda
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 12, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Yuki' AND p.apellido = 'Tsunoda'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Abu Dabi 2024' AND t.anio = 2024;

-- 13º Zhou Guanyu
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 13, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Zhou' AND p.apellido = 'Guanyu'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Abu Dabi 2024' AND t.anio = 2024;

-- 14º Lance Stroll
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 14, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Lance' AND p.apellido = 'Stroll'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Abu Dabi 2024' AND t.anio = 2024;

-- 15º Jack Doohan
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 15, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Jack' AND p.apellido = 'Doohan'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Abu Dabi 2024' AND t.anio = 2024;

-- 16º Kevin Magnussen
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 16, 'terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Kevin' AND p.apellido = 'Magnussen'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Abu Dabi 2024' AND t.anio = 2024;

-- 17º Liam Lawson (DNF)
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 17, 'no terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Liam' AND p.apellido = 'Lawson'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Abu Dabi 2024' AND t.anio = 2024;

-- 18º Valtteri Bottas (DNF)
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 18, 'no terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Valtteri' AND p.apellido = 'Bottas'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Abu Dabi 2024' AND t.anio = 2024;

-- 19º Franco Colapinto (DNF)
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 19, 'no terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Franco' AND p.apellido = 'Colapinto'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Abu Dabi 2024' AND t.anio = 2024;

-- 20º Sergio Pérez (DNF)
INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
SELECT c.id_carrera, pt.id_piloto_temporada, 20, 'no terminado', 0
FROM carrera c
         JOIN temporada t ON c.id_temporada = t.id_temporada
         JOIN piloto p ON p.nombre = 'Sergio' AND p.apellido = 'Pérez'
         JOIN piloto_temporada pt ON pt.id_piloto = p.id_piloto AND pt.id_temporada = t.id_temporada
WHERE c.nombre_gp = 'Gran Premio de Abu Dabi 2024' AND t.anio = 2024;