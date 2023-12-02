import { Router } from "express";
export const router = Router();
import { HardwareCt } from "../controllers/hardwareCt.js";

router.get("/", HardwareCt.getAll) 

router.get("/:ID", (req,res) => {
    res.json({message: "find by id"});
});

router.post("/", (req,res) => {
console.log(req.body);
})