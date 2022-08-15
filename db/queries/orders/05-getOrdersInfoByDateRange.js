const getOrdersInfoByDateRange = (db, start, end) => {
  return db.query(`
  SELECT id, to_char(order_time,'YYYY-MM-DD') AS date,
    subtotal AS total, user_email AS email, user_name AS customer,
    user_address AS address, user_city AS city
  FROM orders
  WHERE order_time >= $1 AND order_time <= $2
  ORDER BY id DESC;`, [start, end])
}

module.exports = { getOrdersInfoByDateRange };
