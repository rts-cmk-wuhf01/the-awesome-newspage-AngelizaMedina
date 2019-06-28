

const mysql = require("../config/mysql");

module.exports = app => {

	/*------------------------------------------------ Page that shows all our categories -------------------------------------*/

   app.get('/admin/categories', async (req, res, next) => {

		let db = await mysql.connect();

		let categories = await getCategories();

		res.render('admin_categories', {
			'categories': categories
		});

		db.end();

	 });

	/*--------------------------------------------- Page that shows all our categories END ------------------------------------*/
	 
	/*---------------------------------------- Thingy that adds a new category to our database --------------------------------*/

	 app.post('/admin/categories', async (req, res, next) => {

		let categories = await getCategories();

		let category_name = req.body.category_name;

		let return_message = [];

		//Check if something has been written in the input field
		if (typeof category_name == 'undefined' || category_name == '') {

			return_message.push('Write a new category before saving!');

			res.render('admin_categories', {
				'categories': categories,
				'category': req.body,
				'return_message': return_message
			});

		}else{

			let db = await mysql.connect();
		
			// Check if the 'new category' already exists in the database
			let [possibleDuplicate] = await db.execute(`
				SELECT
				category_id,
				category
		
				FROM categories
		
				WHERE category = '${category_name}'
			`);
		
			// If the 'new category' doesn't exists, then add it to the database
			if(typeof possibleDuplicate[0] == 'undefined'){
		
				let result = await db.execute(`
				INSERT INTO categories 
					(category) 
				VALUES 
					(?)`, [category_name]
				);
		
				db.end();
		
				res.redirect('/admin/categories');
		
			// If the 'new category' does exists, then don't add it to the database
			}else{
		
				return_message.push('The category does already exist!');
		
				res.render('admin_categories', {
					'categories': categories,
					'category': req.body,
					'return_message': return_message
				});
			}
		}
	 }); // app.post('/admin/categories'...) END
	 
	/*------------------------------------ Thingy that adds a new category to our database END --------------------------------*/
	 

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


	app.post("/admin/categories/edit/:category_id", async (req, res, next) => {
		
		let db = await mysql.connect();

		let editedCategory = req.body.category_name;

		let category_id = req.params.category_id;  

		let [result] = await db.execute(
			
			`UPDATE categories 

			SET category = ?

			WHERE category_id = ?`

			,[editedCategory, category_id]
		);


		//NOTE: Can't have two res.something. Get your 'return_message' with something called 'session' LATER!

		// res.render('admin_categories', {
		// 	'return_message': return_message
		// });

		db.end();

		res.redirect("/admin/categories");

	}); //app.post("/admin/categories/edit/:category_id"... END)


	app.get("/admin/categories/delete/:category_id", async (req, res, next) => {

		let db = await mysql.connect();
		
		let category_id = req.params.category_id;

		let [result] = await db.execute(`

		DELETE FROM categories 
		
		WHERE category_id = ?

		`, [category_id]);

		db.end();

		res.redirect("/admin/categories");

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

	parameter = '';

	db.end();

	return chosenCategory[0];
}
//Politics

/*========================================================= Functions  end=================================================*/

/* 
------x-------------x
-----xxx-----------xx
----xxxxx---------xxxx
----xxxxx--------xxxxx
----xxxxx-------xxxxxx-----------x
-----xxxxxxxxxxxxxxxxx-----------xx
----xxxxxxxxxxxxxxxxx-----------xxxx
---xxxxxxxxxxxxxxxxxx-----------xxxxx
--xxxxxxxxxxxxxxxxxxx----------xxxxxxxx
--xxxxxxxxxxxxxxxxxxxx--------xxxxx
---xxxxxxxxxxxxxxxxxxxxx----xxxxxxx
--xxxxxxxxxxxxxxxxxxxxxxx------xxxxxxxx
--xxxxxxxxxxxxxxxxxxxxxxxx-----xxxxxx
--xxxxxxxxxxxxxxxxxxxxxxxx--xxxxxx
--xxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
---xxxxxxxxxxxxxxxxxxxxxxxx
---xxxxxxxxxxxxxxxxxxxxxxx
--xxxxxxx---xxxxxxxxxxxx
*/