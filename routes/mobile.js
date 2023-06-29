import express from "express";
import {
  getMobile,
  getMobileById,
  getMobileBest,
} from "../controller/mobile.js";

const router = express.Router();

router.get("/", getMobile);
router.get("/mostmobile", getMobileBest);
router.get("/:id", getMobileById);

export default router;
