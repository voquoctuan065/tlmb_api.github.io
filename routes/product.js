import express from "express";

import { getAllProduct } from "../controller/product.js";

const router = express.Router();

router.post("/", getAllProduct);

export default router;
