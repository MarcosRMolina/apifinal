import {connection} from "../../db_config.js";

export class HardwareMd {
    static async getAll(NOMBRE){
        if(!NOMBRE){
        const [hardware, _info] = await 
        connection.query(`SELECT 
        NOMBRE, PRECIO, DESCRIPCION_CORTA, CATEGORIA, IMG, ID, STOCK FROM componentes `);
        return hardware.length ? hardware : null;
    }
    console.log(NOMBRE);
    const [hardware, _info] = await 
    connection.query(`SELECT NOMBRE, PRECIO, DESCRIPCION_CORTA, CATEGORIA, IMG, ID, STOCK FROM 
    componentes where NOMBRE LIKE ('%'?'%')`, 
    [NOMBRE]);

    return hardware.length ? hardware : null;
}
}