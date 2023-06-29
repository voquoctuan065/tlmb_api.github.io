import { db } from "../db.js";

export const getTablet = (req, res) => {
  const q = "select * from tablets";
  db.query(q, (err, data) => {
    if (err) return res.json(err);
    return res.json(data);
  });
};

export const getTabletById = (req, res) => {
  const q = "select * from tablets where id = ?";
  db.query(q, [req.params.id], (err, data) => {
    if (err) return res.json(err);
    return res.json(data);
  });
};

export const getTabletBest = (req, res) => {
  const q = "select * from tablets where levels = 1";
  db.query(q, (err, data) => {
    if (err) return res.json(err);
    return res.json(data);
  });
};
