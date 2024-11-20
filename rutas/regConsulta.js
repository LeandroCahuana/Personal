const express = require("express");
const router = express.Router();
const conexion = require("../config/conexion");

router.post("/regConsulta", (req, res)=>{
    let name = req.body.nombres;
    let lastname = req.body.apellidos;
    let email = req.body.correo;
    let cellphone = req.body.celular;
    let consult = req.body.consulta;

    const insertar = `INSERT INTO user (name_user, lastname, email, cellphone, consultation) VALUES ("${name}", "${lastname}", "${email}", "${cellphone}", "${consult}")`;

    conexion.query(insertar, (error, row)=>{
        if(error){
            console.log("Error al intentar registrar usuario");
            throw error;
        } else {
            console.log("Registro exitoso");
        }
    });
});

module.exports = router;