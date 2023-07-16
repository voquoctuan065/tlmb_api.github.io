import express from "express";
import {
  getMApple,
  getMPriceFirst,
  getMPriceFourth,
  getMPriceLast,
  getMPriceSecond,
  getMPriceThird,
  getMRealme,
  getMSamsung,
  getMScreenU5,
  getMScreenU6,
  getMVivo,
  getMXiaomi,
  getMScreen6,
  getMScreenG,
  getMNameAZ,
  getMNameZA,
  getMPriceAsc,
  getMPriceDesc,
} from "../controller/filter.js";
const router = express.Router();

//mobile brand
router.get("/mapple", getMApple);
router.get("/msamsung", getMSamsung);
router.get("/mxiaomi", getMXiaomi);
router.get("/mrealme", getMRealme);
router.get("/mvivo", getMVivo);

//Mobile price
router.get("/mpricefirst", getMPriceFirst);
router.get("/mpricesecond", getMPriceSecond);
router.get("/mpricethird", getMPriceThird);
router.get("/mpricefourth", getMPriceFourth);
router.get("/mpricelast", getMPriceLast);

//mobile screen
router.get("/mscreenu5", getMScreenU5);
router.get("/mscreenu6", getMScreenU6);
router.get("/mscreen6", getMScreen6);
router.get("/mscreengap", getMScreenG);

//
router.get("/mnameaz", getMNameAZ);
router.get("/mnameza", getMNameZA);
router.get("/mpriceasc", getMPriceAsc);
router.get("/mpricedesc", getMPriceDesc);
export default router;
