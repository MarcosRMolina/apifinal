import { Router } from "express";
import componentes from "../data/componentes.json" assert { type: "json" };
export const router = Router();

router.get("/", (req,res) => {
    const {CATEGORIA} = req.query;
    if(!CATEGORIA) return res.status(200).json({info: componentes})
    const filteredByCategory = componentes.filter(
    c => c.CATEGORIA.toLocaleLowerCase() === CATEGORIA.toLocaleLowerCase())
    !filteredByCategory.length
    ? res.status(404).json({message: "no existe"})
    : res.status(200).json({info: filteredByCategory})
    }
);

router.get("/:ID", (req,res) => {
    res.json({message: "find by id"});
});

router.post("/", (req,res) => {
console.log(req.body);
})