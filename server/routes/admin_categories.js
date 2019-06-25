

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
	 

	 app.post('/admin/categories', async (req, res, next) => {

		let category_name = req.body.category_name;

		let db = await mysql.connect();

		let result = await db.execute(`
		INSERT INTO categories 
			(category) 
		VALUES 
			(?)`, [category_name]);

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