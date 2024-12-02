## GESTIÓN DE DATOS

# UTILIZAMOS NUESTRA BASE DE DATOS IMT_Contact_DB PREVIAMENTE CREADA
USE IMT_Contact_DB;

## INSERTAR DATOS A LAS TABLAS
-- Para poder realizar los registros de los datos, vamos a utilizar los siguientes comandos:
-- SINTAXIS: INSERT INTO nombre_tabla (campos) VALUES (valores);
-- EJEMPLOS:
-- Registramos datos a la tabla "user"
INSERT INTO user 
(name_user, lastname, email, cellphone, consultation) 
VALUES
("Carlos", "Perez", "carlos432@gmail.com", "985632741", "Como puedo apoyar en esta ODS?"),
("Juan", "Gonzales", "juan.gonzales@gmail.com", "956238942", "Formas de pago para los productos educativos"),
("Luis", "Cesar", "luisC278@gmail.com", "954876321", "Quiero más información"),
("Ana", "Huaman", "anahuaman23@yahoo.com", "925361489", "Pueden mejorar la paleta de colores"),
("Maria", "Sanchez", "maria321@outlook.com", "959862347", "Formas de envío"),
("Jaime", "Vilcapuma", "jaime.vilcapuma@gmail.com", "914259863", "Quiero conocer en que puedo aportar desde mi rol como estudiante"),
("Karla", "López", "karlaLP232@gmail.com", "998567422", "Me pueden brindar información sobre como se esta avanzando con este objetivo"),
("Julio", "Dominguez", "julioDC24@hotmail.com", "98856423", "Quiero conocer más sobre las actividades que se realizan a favor de este objetivo"),
("Cecilia", "Fernández", "ceciliaFer212@gmail.com", "936362451", "Pueden tambien brindar tecnicas de estudio"),
("Alexandra", "Quispe", "alexa.quis222@gmail.com", "985742635", "Pueden aumentar los productos que ofrecen")
;

-- Registramos datos a la tabla "agent"
INSERT INTO agent
(name_agent, lastname, email, cellphone, password_agent)
VALUES
("Leandro", "Cahuana", "leandro.cahuana@vallegrande.edu.pe", "912159151", "leandro.cahuana.2024"),
("Luciana", "Ruiz", "luciana.ruiz.cahuas@vallegrande.edu.pe", "924207577", "luciana.ruiz.2024"),
("Luis", "Levano", "luis.levano.vega@vallegrande.edu.pe", "908587198", "luis.levano.2024");

-- Registramos datos a la tabla "consultation"
INSERT INTO consultation (user, agent, answer) VALUES (1, 1, "respuestaEjemplo");

# UTILIZAMOS NUESTRA BASE DE DATOS IMT_Calendar_DB PREVIAMENTE CREADA
USE IMT_Calendar_DB;

-- Registramos datos a la tabla "calendar"
INSERT INTO calendar 
(name_event, description_event, date_event)
VALUES
("Día Mundial del Braille", "Fue en diciembre de 2018 cuando la ONU reconoció y declaró el Día Mundial del Braille, en su Resolución A/RES/73/161, para su celebración cada 4 de enero, destacando el multilingüismo, como valor básico de las Naciones Unidas.", STR_TO_DATE("04-01-2024","%d-%m-%Y")),
("Día Mundial de la Lógica", "Ha sido en el año 2020 cuando la UNESCO en asociación con el Consejo Internacional de Filosofía y Ciencias Humanas (CIPSH) ha proclamado el 14 de enero como el Día Mundial de la Lógica. Con ello pretenden llamar la atención de los círculos científicos, pero también del público en general, de la importancia de la lógica para la vida práctica.", STR_TO_DATE("14-01-2024","%d-%m-%Y")),
("Día Internacional de la Educación", "El 24 de enero se celebra el Día Internacional de la Educación, una fecha proclamada por la Organización de las Naciones Unidas (ONU) con el objetivo de concienciar a la población mundial acerca de la importancia de la educación para conseguir los objetivos contemplados en la Agenda 2030 para el Desarrollo Sostenible.", STR_TO_DATE("24-01-2024","%d-%m-%Y")),
("Día Mundial de la Educación Ambiental", "El 26 de enero se celebra el Día Mundial de la Educación Ambiental, con la finalidad de concienciar a las personas acerca de la importancia de preservar y proteger el medio ambiente, así como incentivar su participación en las iniciativas que se están llevando a cabo a nivel mundial, para su conservación.", STR_TO_DATE("26-01-2024","%d-%m-%Y")),
("Día Escolar de la No Violencia y la Paz", "Cada 30 de enero (Hemisferio Norte) se celebra el Día Escolar de la Paz y la No Violencia, con la finalidad de fomentar en las instituciones educativas valores y acciones orientadas a promover la no violencia y la paz. En el Hemisferio Sur el Día Escolar de la Paz y No Violencia se celebra el 30 de marzo.", STR_TO_DATE("30-01-2024","%d-%m-%Y")),
("Día Internacional de las Matemáticas", "La resolución, fue aprobada en 2019 en París, por parte de la UNESCO, gracias a una propuesta de la Unión Matemática Internacional, y contó con la participación de algunos gobiernos y organizaciones Internacionales.", STR_TO_DATE("14-03-2024","%d-%m-%Y")),
("Día Mundial del Discurso", "Cada 15 de marzo se celebra el Día Mundial del Discurso, con la finalidad de homenajear la elaboración de discursos, a través de eventos de oratoria en vivo a nivel mundial.", STR_TO_DATE("15-03-2024","%d-%m-%Y")),
("Día Mundial del Aprendizaje Digital", "El 19 de marzo se celebra el Día Mundial del Aprendizaje Digital, una fecha proclamada oficialmente por la UNESCO en su 42ª reunión el 20 de noviembre de 2023. Esta fecha se celebra por primera vez en 2024.", STR_TO_DATE("19-03-2024","%d-%m-%Y")),
("Día Mundial del Aprendizaje", "El 23 de marzo se celebra el Día Mundial del Aprendizaje, una fecha para destacar la importancia del aprendizaje para el crecimiento y desarrollo de las personas.", STR_TO_DATE("23-03-2024","%d-%m-%Y")),
("Día Internacional de la Educación No Sexista", "Cada 21 de junio se celebra el Día Internacional de la Educación No Sexista, con la finalidad de promover una educación participativa e igualitaria en materia de género y diversidad sexual, promoviendo la igualdad de acceso a oportunidades.", STR_TO_DATE("21-06-2024","%d-%m-%Y")),
("Día Mundial para la Prevención de los Ahogamientos", "El 25 de julio se celebra el Día Mundial para la Prevención de los Ahogamientos, una fecha proclamada por la Asamblea General de las Naciones Unidas, con la finalidad de concienciar a la población mundial acerca de este problema prevenible que ha sido la causa de más de 2,5 millones de muertes durante la última década.", STR_TO_DATE("25-07-2024","%d-%m-%Y")),
("Día Mundial del Peatón", "El objetivo de este día es difundir la cultura vial del peatón, promover los espacios adecuados para esta forma de moverse en las ciudades y recordar las obligaciones que implica la movilidad a pie.", STR_TO_DATE("17-08-2024","%d-%m-%Y")),
("Día Global de Adquisición de Talento", "La creación del Día Global de Adquisición de Talento en el año 2018 ha sido por iniciativa de las organizaciones KRT Marketing Agency y The Association for Talent Acquisition Professionals (ATAP), para reconocer la labor de aquellas personas que se dedican a la adquisición de talento.", STR_TO_DATE("04-09-2024","%d-%m-%Y")),
("Día Internacional de la Alfabetización", "El objetivo de este día, es evaluar cómo ha mejorado la tasa de alfabetización de los países miembros, para el logró de la Agenda 2030 y sus Objetivos de Desarrollo Sostenible.", STR_TO_DATE("08-09-2024","%d-%m-%Y")),
("Día Internacional Proteger la Educación de Ataques", "Su principal objetivo es proteger a todos los niños y jóvenes de todo el mundo de sufrir ataques armados, desastres naturales, enfermedades o algún tipo de agresión que pueda atentar con sus vidas, además de garantizarles un entorno seguro para su formación y capacitación integral.", STR_TO_DATE("09-09-2024","%d-%m-%Y")),
("Día Internacional de las Lenguas de Señas", "La fecha conmemora la creación de la Federación Mundial del Sordo en 1951, organización no gubernamental que hoy por hoy ostenta el carácter de órgano consultivo de las Naciones Unidas y máxima autoridad mundial para la defensa de los derechos e intereses de las personas con disfunción auditiva.", STR_TO_DATE("23-09-2024","%d-%m-%Y")),
("Día Mundial de la Leche Escolar", "La creación de este día mundial en el año 2000 ha sido por iniciativa de la Organización de las Naciones Unidas para la Agricultura y la Alimentación (FAO), con la finalidad de promover las propiedades de la leche en los niños en la etapa escolar, así como destacar la importancia de su consumo durante la infancia y su impacto nutricional para un buen desarrollo físico y desempeño académico.", STR_TO_DATE("25-09-2024","%d-%m-%Y")),
("Día Mundial de las y los Docentes", "El 5 de octubre se celebra el Día Mundial de las y los Docentes. Es la fecha en que la UNESCO y la Organización Internacional del Trabajo (OIT), decidieron rendir homenaje a una de las profesiones más valiosas dentro de cualquier sociedad: la enseñanza, los docentes. Esas personas que tienen el deber y la pasión de formar a las generaciones futuras y así garantizar el desarrollo de los países.", STR_TO_DATE("05-10-2024","%d-%m-%Y")),
("Día Internacional de la Educación Vial", "El 5 de octubre se celebra el Día Internacional de la Educación Vial, con la finalidad de concienciar a la población mundial acerca del aprendizaje de las normas básicas viales para prevenir accidentes de tráfico.", STR_TO_DATE("05-10-2024","%d-%m-%Y")),
("Día Internacional de la Biblioteca Escolar", "Esta celebración, establecida por la International Association of School Librarianship (IASL), nos invita a reflexionar sobre el impacto fundamental que tienen las bibliotecas en la formación de futuros ciudadanos.", STR_TO_DATE("07-10-2024","%d-%m-%Y")),
("Día Internacional de la Dislexia", "Uno de los trastornos de aprendizaje más comunes que afecta a los niños en edad escolar es la Dislexia. Es por ello que el 8 de octubre se celebra el Día Internacional de la Dislexia, para concienciar a las personas acerca de este trastorno que afecta al 10% de la población mundial, según la Organización Mundial de la Salud (OMS).", STR_TO_DATE("08-10-2024","%d-%m-%Y")),
("Día Mundial del Patrimonio Audiovisual", "Fue la Conferencia General de la UNESCO quien declaró esta efeméride en el año 2005. Se escogió la fecha del 27 de octubre para conmemorar el Día Mundial del Patrimonio Audiovisual porque coincide con la fecha de aprobación de la Recomendación sobre la Salvaguardia y la Conservación de las Imágenes en Movimiento, de 27 de octubre de 1980.", STR_TO_DATE("27-10-2024","%d-%m-%Y")),
("Día Internacional contra la Violencia y el Acoso Escolar", "El primer jueves de noviembre de cada año se celebra el Día Internacional contra la Violencia y el Acoso Escolar, incluido el Ciberacoso. Con esto, se busca acabar de una vez por todas con un tipo de violencia, que afecta a la población infantil a nivel mundial y que provoca terribles secuelas psicológicas.", STR_TO_DATE("07-11-2024","%d-%m-%Y")),
("Día Mundial de la Tabla de Multiplicar", "El 15 de noviembre de 2024 se celebra el Día Mundial de la Tabla de Multiplicar o World Multiplication Table Day (WMT Day). Es una campaña educativa dirigida a animar a las personas, especialmente a los niños y jóvenes en edad escolar a recordar las tablas de multiplicar. Se trata de una fecha variable que se celebra cada tercer viernes del mes de noviembre.", STR_TO_DATE("15-11-2024","%d-%m-%Y")),
("Día Internacional de los Estudiantes", "El 17 de noviembre se celebra el Día Internacional de los Estudiantes, una fecha anual donde se conmemora a la juventud de varios países del mundo por sus luchas para conseguir una educación libre y que dieron origen a numerosos movimientos estudiantiles.", STR_TO_DATE("17-11-2024","%d-%m-%Y")),
("Día Internacional de la Palabra", "El 23 de noviembre se celebra el Día Internacional de la Palabra con el objetivo de fomentar el diálogo y la paz entre las naciones del mundo, orientado hacia el avance pacifico de la sociedad mundial sin discriminaciones políticas ni religiosas.", STR_TO_DATE("23-11-2024","%d-%m-%Y")),
("Día Mundial del Acceso a la Educación Superior", "El Día Mundial del Acceso a la Educación Superior se celebra desde el año 2018, por iniciativa de la Red Nacional de Oportunidades de Educación (Education Opportunities Network #NEON). Tiene su sede en el Reino Unido, orientada a la ejecución de acciones necesarias para ampliar el acceso a la Educación Superior.", STR_TO_DATE("26-11-2024","%d-%m-%Y"))
;

## VISUALIZAR REGISTROS DE LAS TABLAS
-- SINTAXIS: SELECT * FROM nombre_tabla;
-- EJEMPLOS: 
-- Visualizar los registros de la tabla "user"
# SELECT * FROM user;

-- Visualizar los registros de la tabla "consultation"
# SELECT * FROM consultation;

-- Visualizar los registros de la tabla "agent"
# SELECT * FROM agent;

-- Visualizar los registros de la tabla "calendar"
# SELECT * FROM calendar;

## ACTUALIZAR LOS REGISTROS DE LAS TABLAS
-- SINTAXIS: UPDATE nombre_tabla SET nombre_campo = nuevo_valor WHERE campo_buscado = valor_requerido;
-- EJEMPLO:
-- Actualizamos el número de celular de 'Leandro' de la tabla 'agent'
/*UPDATE agent
SET cellphone = 986532741
WHERE id = 1;
*/

## ELIMINACIÓN DE REGISTRO
-- SINTAXIS: DELETE FROM nombre_tabla WHERE campo_buscado = valor_requerido;
-- EJEMPLO:
-- Eliminación del primer registro de la tabla 'agent';
/*DELETE FROM agent
WHERE id = 1;
*/
