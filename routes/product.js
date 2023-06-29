import express from "express";
import { getProduct, getProductById } from "../controller/product.js";

const router = express.Router();

router.get("/", getProduct);
router.get("/:id", getProductById);

export default router;
