import express from "express";
import {
  getTablet,
  getTabletById,
  getTabletBest,
} from "../controller/tablet.js";

const router = express.Router();

router.get("/", getTablet);
router.get("/mosttablet", getTabletBest);
router.get("/:id", getTabletById);

export default router;
