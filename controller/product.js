import { db } from "../db.js";

export const getMobile = (req, res) => {
  const q = "select * from products where catalog_id = 11";
  db.query(q, (err, data) => {
    if (err) return res.json(err);
    return res.json(data);
  });
};

export const getMostMobile = (req, res) => {
  const q = "select * from products where catalog_id = 11 and outstanding = 1";
  db.query(q, (err, data) => {
    if (err) return res.json(err);
    return res.json(data);
  });
};

export const getTablet = (req, res) => {
  const q = "select * from products where catalog_id = 22";
  db.query(q, (err, data) => {
    if (err) return res.json(err);
    return res.json(data);
  });
};

export const getMostTablet = (req, res) => {
  const q = "select * from products where catalog_id = 22 and outstanding = 1";
  db.query(q, (err, data) => {
    if (err) return res.json(err);
    return res.json(data);
  });
};
