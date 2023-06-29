import { db } from "../db.js";

export const getProduct = (req, res) => {
  const q = "select * from products";
  const [values] = [];
  db.query(q, (err, data) => {
    if (err) return res.json(err);
    return res.json(data);
  });
};

export const getProductById = (req, res) => {
  const q = "select * from products";
  const [values] = [];
  db.query(q, (err, data) => {
    if (err) return res.json(err);
    if (data.length === 0)
      return res.status(404).json("Khồng tìm thấy bất cứ sản phẩm nào");
    return res.status(200).json(data[req.params.id - 1]);
  });
};
