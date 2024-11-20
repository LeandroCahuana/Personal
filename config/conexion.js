let conectar = require("mysql");

let conexion = conectar.createConnection({
    host: "imt-database.clscwubwbk8o.us-east-1.rds.amazonaws.com",
    database: "IMT_Contact_DB",
    user: "admin",
    password: "imt.data.2024"
})

conexion.connect((error)=>{
    if(error){
        throw error;
    } else {
        console.log("Conexion exitosa");
    }
});

module.exports = conexion;