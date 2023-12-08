import { HardwareMd } from "../models/hardwareMd.js";

export class HardwareCt {
    static async  getAll(req,res){
        const {CATEGORIA} = req.query
        const hardware = await HardwareMd.getAll(CATEGORIA);
        hardware ?
        res.status(200).json(hardware)
        :
        res.status(404).json({message: "Artículo no encontrado"})
    }

    static async getById(req, res){
        const {ID} = req.params;

        const hardware = await HardwareMd.getById(ID);
        if(!hardware.length) return res.status(422).json({message: "Componente no encontrado"});
        res.status(200).json(hardware)
    }


    static async deleteOne(req, res){
        const {ID} = req.params
        const result = await HardwareMd.deleteOne(ID);
        //si result es 0, no borró
        //si result no es 0, entonces borró
        if(!result) return res.status(404).json({message: "No se encontró el componente"});
        res.status(200).json({message: "Componente eliminado"})//se usa el 200 para poder enviar un mensaje al usuario y que lo entienda. Cosa que no se puede con el 204 
        console.log("Entro en el delete")
    }

    static async addOne(req, res){
        const hardwareCreate = await HardwareMd.addOne(req.body)
        hardwareCreate ? res.status(201).json({message: "Componente Creado"})
        :
        res.status(500).json({message: "Error interno del Servidor"})
        console.log("entra el addone")
    }


    static async updateOne(req, res){
        const {ID} = req.params;
        const [isHardware, _info] = await HardwareMd.getById(ID)
        
        if(!isHardware) return res.status(404).json({message: "No se ha encontrado el componente"})
        const updatedHardware = await HardwareMd.updateOne(ID, req.body)
        console.log(updatedHardware);
        updatedHardware?
        res.status(200).json({message: "Componente actualizado"})
        :
        res.status(500).json({message: "Error interno del Servidor"})
    }
}

