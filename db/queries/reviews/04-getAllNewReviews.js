const getAllNewReviews = (db) => {
  return db.query(`
  SELECT reviews.id, image1, name, headline, comments,
   to_char(create_time,'YYYY-MM-DD') AS date, rating, display, inactive
  FROM reviews
  JOIN products ON products.id = reviews.product_id
  WHERE display is false AND inactive is false
  ORDER BY reviews.id DESC;`)
}

module.exports = { getAllNewReviews };
