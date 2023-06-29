import { db } from "../db.js";
import bcrypt from "bcryptjs";
import jwt from "jsonwebtoken";

export const register = (req, res) => {
  //Check user existed (same email or use name)
  const q = "select * from users where email = ? or username = ?";
  db.query(q, [req.body.email, req.body.username], (err, data) => {
    if (err) return res.json(err);
    if (data.length)
      return res.status(409).json("Tên người dùng hoặc email đã tồn tại!"); //it means data already exist

    //Hash the password and create new user
    const salt = bcrypt.genSaltSync(10);
    const hash = bcrypt.hashSync(req.body.password, salt);

    const q = "insert into users(`username`, `email`, `password`) values (?)";
    const values = [req.body.username, req.body.email, hash];

    db.query(q, [values], (err, data) => {
      if (err) return res.json(err);
      return res.status(200).json("Đăng ký thành công!");
    });
  });
};

export const login = (req, res) => {
  // check user
  const q = "select * from users where email = ?";

  db.query(q, [req.body.email], (err, data) => {
    if (err) return res.json(err);
    if (data.length === 0)
      return res.status(404).json("Tài khoản không tồn tại!");

    //check password
    const isPasswordCorrect = bcrypt.compareSync(
      req.body.password,
      data[0].password
    );
    if (!isPasswordCorrect)
      return res.status(400).json("Email hoặc mật khẩu không đúng!");
    const token = jwt.sign({ id: data[0].id }, "jwtkey");
    const { password, ...other } = data[0];

    res
      .cookie("access_token", token, {
        httpOnly: true,
      })
      .status(200)
      .json(other);
  });
};

export const logout = (req, res) => {
  res.clearCookie("access_token");
  return res.json({ Status: "Success" });
};
