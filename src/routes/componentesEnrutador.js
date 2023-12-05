import { Router } from "express";
export const router = Router();
import { HardwareCt } from "../controllers/hardwareCt.js";

router.get("/", HardwareCt.getAll) 

router.get("/:ID", HardwareCt.getById);

router.delete("/:ID", HardwareCt.deleteOne)

router.post("/", HardwareCt.addOne)