import { db } from "../db.js";

export const getMobile = (req, res) => {
  const q = "select * from mobiles";
  db.query(q, (err, data) => {
    if (err) return res.json(err);
    return res.json(data);
  });
};

export const getMobileById = (req, res) => {
  const q = "select * from mobiles where id = ?";
  db.query(q, [req.params.id], (err, data) => {
    if (err) return res.json(err);
    return res.json(data);
  });
};
