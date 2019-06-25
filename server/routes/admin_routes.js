

const mysql = require("../config/mysql");

module.exports = app => {

   app.get('/admin/categories', async (req, res, next) => {

		let db = await mysql.connect();

		res.render('admin_categories');

		db.end();

   });
   

   app.post('/admin/categories', async (req, res, next) => {

		let db = await mysql.connect();

		res.render('admin_categories');

		db.end();

   });
   

   app.get('/admin/categories/edit/:category_id', async (req, res, next) => {

		let db = await mysql.connect();

		res.render('admin_categories');

      db.end();

   });
   

   app.post('/admin/categories/edit/:category_id', async (req, res, next) => {

		let db = await mysql.connect();

		res.render('admin_categories');

		db.end();

   });
   

   app.get('/admin/categories/delete/:category_id', async (req, res, next) => {

		let db = await mysql.connect();

		res.render('admin_categories');

		db.end();

	});

};
