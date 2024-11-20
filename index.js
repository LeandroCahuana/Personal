const express = require("express");
const app = express();
const mysql = require("mysql");
const link = require("./config/link");
let conexion = mysql.createConnection({
    host: "imt-database.clscwubwbk8o.us-east-1.rds.amazonaws.com",
    database: "IMT_Contact_DB",
    user: "admin",
    password: "imt.data.2024"
})
const PORT = process.env.PORT || 3000;

app.use(express.json())
app.use(express.urlencoded({extended:false}));

app.post("/regConsulta", (req, res)=>{
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
            res.render("index",{link});
        }
    })
});

app.use(express.static("public"));

app.listen(PORT, ()=>{
    console.log(`http://23.21.206.170:${PORT}`)
})