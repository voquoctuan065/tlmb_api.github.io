import "./passport.js";
import cors from "cors";
import express from "express";
import passport from "passport";
import session from "express-session";
import cookieParser from "cookie-parser";

import authRoutes from "./routes/auth.js";
import filterRoutes from "./routes/filter.js";
import productRoutes from "./routes/product.js";

const app = express();
const corsOrigin = {
  origin: "http://localhost:3000", //or whatever port your frontend is using
  credentials: true,
  optionSuccessStatus: 200,
};

app.use(cors(corsOrigin));
app.use(express.json());
app.use(cookieParser());

app.use(
  session({
    secret: "secretCode",
    resave: true,
    saveUninitialized: true,
    cookie: { secure: false, maxAge: 20 * 60 * 60 * 100 },
  })
);

app.use(passport.initialize());
app.use(passport.session());

app.use("/api/auth", authRoutes);
app.use("/api/product", productRoutes);
app.use("/api/filter", filterRoutes);

app.listen(8800, () => {
  console.log("Connected!");
});
