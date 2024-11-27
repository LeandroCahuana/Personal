const express = require("express");
const app = express();
const mysql = require("mysql");
let conexion = mysql.createConnection({
    host: "", /* hostname de la base de datos de contacto */
    database: "", /* nombre de la base de datos de contacto */
    user: "", /* nombre de usuario */
    password: "" /* contraseña de la base de datos de contacto */
})

let conexionCalendar = mysql.createConnection({
    host: "", /* hostname de la base de datos del calendario */
    database: "", /* nombre de la base de datos del calendario */
    user: "", /* nombre de usuario */
    password: "" /* contraseña de la base de datos del calendario */
})

const PORT = process.env.PORT || 3000;
const IP = ""; /* IP Pública */

app.use(express.json());
app.use(express.urlencoded({extended:false}));

conexion.connect((err) => {
    if (err) {
        console.error("Error al conectar a la base de datos:", err);
        return;
    }
    console.log("Conectado a la base de datos correctamente");
});

conexionCalendar.connect((err) => {
    if (err) {
        console.error("Error al conectar a la base de datos:", err);
        return;
    }
    console.log("Conectado a la base de datos correctamente");
});

app.post("/regConsulta", function(req, res) {
    const datos = req.body;
    console.log(datos);

    let name = datos.nombres;
    let lastname = datos.apellidos;
    let email = datos.correo;
    let cellphone = datos.celular;
    let consult = datos.consulta;

    let registrar = `INSERT INTO user (name_user, lastname, email, cellphone, consultation) VALUES ("${name}", "${lastname}", "${email}", "${cellphone}", "${consult}")`;

    conexion.query(registrar, (error)=>{
        if(error){
            console.log("Error al registrar los datos");
            throw error;
        } else {
            console.log("Datos almacenados correctamente");
            res.sendFile(__dirname + '/public/Contact.html');
        }
    })
});

app.get('/api/dates/:current', (req, res)=>{
    var request = req.params.current;
    conexionCalendar.query(
        "select name_event, description_event, DATE_FORMAT(date_event, '%d/%m/%Y') AS date_event from calendar where date_event = '"+request+"'",
        function (err, row, fields) {
            if (err) {
                throw err;
            } else if (row[0] != null) {
                res.json(
                    row[0]
                )
            } else {
                res.json(null)
            }
        }
    )
})

app.use(express.static("public"));

app.listen(PORT, ()=>{
    console.log(`http://${IP}:${PORT}`)
})