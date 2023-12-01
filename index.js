import express from "express"
import {router as componentesRT} from "./src/routes/componentesEnrutador.js"

const PORT = process.env.PORT ?? 3000;
const app = express();
app.use(express.json)
app.listen(PORT, (err)=>{
    console.log(err 
    ? `Ocurrio un error ${err}`
    :`Servidor esta corriendo en http://localhost:${PORT}`);
});

app.use("/componentes", componentesRT);