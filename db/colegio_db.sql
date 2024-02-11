-- Esquema para las aulas
CREATE TABLE aulas (
                       id_aula SERIAL PRIMARY KEY,
                       nombre VARCHAR(255) NOT NULL,
                       capacidad INT NOT NULL,
                       equipamiento VARCHAR(255)
);

-- Esquema para los docentes
CREATE TABLE docentes (
                          id_docente SERIAL PRIMARY KEY,
                          nombre VARCHAR(255) NOT NULL,
                          materia VARCHAR(255) NOT NULL,
                          email VARCHAR(255),
                          telefono VARCHAR(255)
);

-- Esquema para las materias
CREATE TABLE materias (
                          id_materia SERIAL PRIMARY KEY,
                          nombre VARCHAR(255) NOT NULL,
                          nivel VARCHAR(255) NOT NULL,
                          duracion INT NOT NULL
);

-- Esquema para los horarios
CREATE TABLE horarios (
                          id_horario SERIAL PRIMARY KEY,
                          dia VARCHAR(255) NOT NULL,
                          hora_inicio TIME NOT NULL,
                          hora_fin TIME NOT NULL
);

-- Esquema para la asignación de aulas a horarios, materias y docentes
CREATE TABLE asignacion (
                            id_asignacion SERIAL PRIMARY KEY,
                            id_horario INT NOT NULL REFERENCES horarios(id_horario),
                            id_aula INT NOT NULL REFERENCES aulas(id_aula),
                            id_materia INT NOT NULL REFERENCES materias(id_materia),
                            id_docente INT NOT NULL REFERENCES docentes(id_docente)
);