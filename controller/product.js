import { db } from "../db.js";

export const getAllProduct = (req, res) => {
  const q = "select * from products";
  db.query(q, (err, data) => {
    if (err) return res.json(err);
    return res.json(data);
  });
};
