const express = require("express");
const app = express();
const PORT = process.env.PORT || 3000;

app.set("view engine", "ejs");
app.use(express.json());
app.use(express.urlencoded({extended:false}));

app.use(require("./rutas/index"));
app.use(express.static("public"));
app.use(require("./rutas/regConsulta"));

app.listen(PORT, ()=>{
    console.log(`http://23.21.206.170:${PORT}`)
})