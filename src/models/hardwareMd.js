import {connection} from "../../db_config.js";

export class HardwareMd {
    static async getAll(CATEGORIA){
    if(!CATEGORIA){
        const [hardware, _info] = await connection.query(`SELECT ID, 
        NOMBRE, PRECIO, DESCRIPCION_CORTA, CATEGORIA, IMG, STOCK FROM componentes `);
        return hardware.length ? hardware : null;
    }
    console.log(CATEGORIA);
    const [hardware, _info] = await connection.query(
    `SELECT ID, NOMBRE, PRECIO, DESCRIPCION_CORTA, CATEGORIA, IMG, STOCK FROM 
    componentes WHERE CATEGORIA = ?`, 
    [CATEGORIA]);

    return hardware.length ? hardware : null;
}

    //getById => Regresa todo + el ID
    
    static async getById(ID){
        const [hardware, _info] = await connection.query(
            `SELECT NOMBRE, PRECIO, DESCRIPCION_CORTA, CATEGORIA, IMG, STOCK, ID FROM 
            componentes WHERE ID = ?`,[ID]
        )
        return hardware;
    }

    static async deleteOne(ID){
        const [info] = await connection.query(
            `DELETE FROM componentes WHERE ID = ?`,[ID]
        )
       return info.affectedRows
    }


    static async addOne(hardware){
        const {NOMBRE, PRECIO, DESCRIPCION_CORTA, IMG, CATEGORIA, STOCK} = hardware;

        const result = await connection.query(`INSERT INTO componentes (NOMBRE, PRECIO, DESCRIPCION_CORTA, IMG, CATEGORIA, STOCK) 
        VALUES ( ?, ?, ?, ?, ?, ?)`, [NOMBRE, PRECIO, DESCRIPCION_CORTA, IMG, CATEGORIA, STOCK])

        console.log(result);
        return result ? result : null;

    }

    static async updateOne(ID, partialHardware) {
        let queryString = "";
        for (const key in partialHardware){
            queryString += `${key} = '${partialHardware[key]}', `
        }
        queryString = queryString.slice(0, -2);
        const [result, _info] = await connection.query(
        `UPDATE componentes SET ${queryString} WHERE ID = ?`, [ID]
       )
       console.log(result);
       return result.affectedRows
    }
}
