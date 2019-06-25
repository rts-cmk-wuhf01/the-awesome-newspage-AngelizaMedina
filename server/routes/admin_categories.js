

const mysql = require("../config/mysql");

module.exports = app => {

   app.get('/admin/categories', async (req, res, next) => {

		let db = await mysql.connect();

		let categories = await getCategories();

		res.render('admin_categories', {
			'categories': categories
		});

		db.end();

   });
   
}; // module.export end


async function getCategories(){
	let db = await mysql.connect();
	let [categories] = await db.execute(`
		SELECT
		category_id,
		category

		FROM categories

		ORDER BY category

		`);
	db.end();
	return categories;
}