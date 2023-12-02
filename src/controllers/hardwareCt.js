import { HardwareMd } from "../models/hardwareMd.js";

export class HardwareCt {
    static async  getAll(req,res){
        const {NOMBRE} = req.query
        const hardware = await HardwareMd.getAll(NOMBRE);
        hardware ?
        res.status(200).json(hardware)
        :
        res.status(404).json({message: "Artículo no encontrado"})
    }
}