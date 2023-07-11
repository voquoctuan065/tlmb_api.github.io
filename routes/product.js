import express from "express";

import { getAllProduct, getProductById } from "../controller/product.js";

const router = express.Router();

router.post("/", getAllProduct);
router.get("/:id", getProductById);
export default router;
