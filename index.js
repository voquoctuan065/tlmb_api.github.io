import cors from "cors";
import express from "express";
import cookieParser from "cookie-parser";
import session from "express-session";
import passport from "passport";

import authRoutes from "./routes/auth.js";
import mobileRoutes from "./routes/mobile.js";
import tabletRoutes from "./routes/tablet.js";

import "./passport.js";

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

app.use("/api/mobile", mobileRoutes);
app.use("/api/auth", authRoutes);
app.use("/api/tablet", tabletRoutes);
app.listen(8800, () => {
  console.log("Connected!");
});
