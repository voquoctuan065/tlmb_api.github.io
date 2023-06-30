import express from "express";

import {
  getMobile,
  getMostMobile,
  getTablet,
  getMostTablet,
} from "../controller/product.js";

const router = express.Router();

router.get("/mobile", getMobile);
router.get("/mostmobile", getMostMobile);
router.get("/tablet", getTablet);
router.get("/mosttablet", getMostTablet);

export default router;
