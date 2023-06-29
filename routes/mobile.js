import express from "express";
import { getMobile, getMobileById } from "../controller/mobile.js";

const router = express.Router();

router.get("/", getMobile);
router.get("/:id", getMobileById);

export default router;
