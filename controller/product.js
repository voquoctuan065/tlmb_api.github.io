import { db } from "../db.js";

export const getAllProduct = (req, res) => {
  const q = "select * from products";
  db.query(q, (err, data) => {
    if (err) return res.json(err);
    return res.json(data);
  });
};

export const getProductById = (req, res) => {
  const q = "select * from products where productId = ?";
  db.query(q, [req.params.id], (err, data) => {
    if (err) return res.status(404).json("Không tìm thấy sản phẩm");
    return res.status(200).json(data);
  });
};
