import express from "express";

import { searchProduct } from "../controller/search.js";

const router = express.Router();

router.get("/", searchProduct);

export default router;
