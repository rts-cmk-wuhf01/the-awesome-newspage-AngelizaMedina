

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

		let categories = await getCategories();

		let category_name = req.body.category_name;

		let return_message = [];
		
		if (typeof category_name == 'undefined' || category_name == '') {

			return_message.push('Write a category!');

			res.render('admin_categories', {
				'categories': categories,
				'category': req.body,
				'return_message': return_message
			});

		}else{

			let db = await mysql.connect();

			let result = await db.execute(`
			INSERT INTO categories 
				(category) 
			VALUES 
				(?)`, [category_name]);

			let categories = await getCategories();

			return_message.push('New category has been added!');

			category_name = '';

			res.render('admin_categories', {
				'categories': categories,
				'return_message': return_message
			});

			db.end();
			
		}

   });
	 

	 app.get("/admin/categories/edit/:category_id", async (req, res, next) => {

		let db = await mysql.connect();

		let categories = await getCategories();

		let chosenCategory = await editCategory(req.params.category_id);

		res.render('admin_categories', {
			'categories': categories,
			'chosenCategory': chosenCategory
		});

		db.end();

	});
	 

}; // module.export end


/*=========================================================== Functions ===================================================*/

async function getCategories(){
	let db = await mysql.connect();
	let [categories] = await db.execute(`
		SELECT
		category_id,
		category

		FROM categories

		ORDER BY category_id

		`);
	db.end();
	return categories;
}

async function editCategory(parameter){
	let db = await mysql.connect();
	let [chosenCategory] = await db.execute(`
		SELECT
		category_id,
		category

		FROM categories

		WHERE category_id = ?

	`, [parameter]);

	db.end();

	return chosenCategory;

}

/*========================================================= Functions  end=================================================*/