import { db } from "../db.js";

// mobile
export const getMApple = (req, res) => {
  const q =
    "select * from products where catalog_id = 11 and brand like 'apple'";
  db.query(q, (err, data) => {
    if (err) return res.json(err);
    return res.json(data);
  });
};

export const getMSamsung = (req, res) => {
  const q =
    "select * from products where catalog_id = 11 and brand like 'samsung'";
  db.query(q, (err, data) => {
    if (err) return res.json(err);
    return res.json(data);
  });
};

export const getMXiaomi = (req, res) => {
  const q =
    "select * from products where catalog_id = 11 and brand like 'xiaomi'";
  db.query(q, (err, data) => {
    if (err) return res.json(err);
    return res.json(data);
  });
};

export const getMRealme = (req, res) => {
  const q =
    "select * from products where catalog_id = 11 and brand like 'realme'";
  db.query(q, (err, data) => {
    if (err) return res.json(err);
    return res.json(data);
  });
};
export const getMVivo = (req, res) => {
  const q =
    "select * from products where catalog_id = 11 and brand like 'vivo'";
  db.query(q, (err, data) => {
    if (err) return res.json(err);
    return res.json(data);
  });
};

export const getMPriceFirst = (req, res) => {
  const q = "select * from products where catalog_id=11 and price < 2000000";
  db.query(q, (err, data) => {
    if (err) return res.json(err);
    return res.json(data);
  });
};

export const getMPriceSecond = (req, res) => {
  const q =
    "select * from products where catalog_id=11 and price between 2000000 and 4000000";
  db.query(q, (err, data) => {
    if (err) return res.json(err);
    return res.json(data);
  });
};

export const getMPriceThird = (req, res) => {
  const q =
    "select * from products where catalog_id=11 and price between 4000000 and 6000000";
  db.query(q, (err, data) => {
    if (err) return res.json(err);
    return res.json(data);
  });
};

export const getMPriceFourth = (req, res) => {
  const q =
    "select * from products where catalog_id=11 and price between 6000000 and 10000000";
  db.query(q, (err, data) => {
    if (err) return res.json(err);
    return res.json(data);
  });
};

export const getMPriceLast = (req, res) => {
  const q = "select * from products where catalog_id=11 and price > 10000000";
  db.query(q, (err, data) => {
    if (err) return res.json(err);
    return res.json(data);
  });
};

export const getMScreenU5 = (req, res) => {
  const q =
    "select * from products where catalog_id=11 and screenSize like '%4.%' ";
  db.query(q, (err, data) => {
    if (err) return res.json(err);
    return res.json(data);
  });
};

export const getMScreenU6 = (req, res) => {
  const q =
    "select * from products where catalog_id=11 and screenSize like '%5.%' ";
  db.query(q, (err, data) => {
    if (err) return res.json(err);
    return res.json(data);
  });
};

export const getMScreen6 = (req, res) => {
  const q =
    "select * from products where catalog_id=11 and screenSize like '%6.%' ";
  db.query(q, (err, data) => {
    if (err) return res.json(err);
    return res.json(data);
  });
};
export const getMScreenG = (req, res) => {
  const q =
    "select * from products where catalog_id=11 and screenSize like 'Chính %'";
  db.query(q, (err, data) => {
    if (err) return res.json(err);
    return res.json(data);
  });
};

export const getMNameAZ = (req, res) => {
  const q =
    "select * from products where catalog_id=11 order by productName asc";
  db.query(q, (err, data) => {
    if (err) return res.json(err);
    return res.json(data);
  });
};
export const getMNameZA = (req, res) => {
  const q =
    "select * from products where catalog_id=11 order by productName desc";
  db.query(q, (err, data) => {
    if (err) return res.json(err);
    return res.json(data);
  });
};

export const getMPriceAsc = (req, res) => {
  const q = "select * from products where catalog_id=11 order by price asc";
  db.query(q, (err, data) => {
    if (err) return res.json(err);
    return res.json(data);
  });
};

export const getMPriceDesc = (req, res) => {
  const q = "select * from products where catalog_id=11 order by price desc";
  db.query(q, (err, data) => {
    if (err) return res.json(err);
    return res.json(data);
  });
};
