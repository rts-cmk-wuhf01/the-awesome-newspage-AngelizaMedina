
const mysql = require('../config/mysql');

let fourMostPopularNews = [
	{
		'number': '1.',
		'txt': ' Amet, consectetur adipiscing elit. Nam eu metus sit amet odio sodales.',
		'date': '2018-04-14'
	},
	{
		'number': '2.',
		'txt': ' Consectetur adipiscing elit. Nam eu metus sit amet odio sodales placer.',
		'date': '2018-04-14'
	},
	{
		'number': '3.',
		'txt': ' Adipiscing elit. Nam eu metus sit amet odio sodales placer. Sed varius leo.',
		'date': '2018-04-14'
	},
	{
		'number': '4.',
		'txt': ' Eu metus sit amet odio sodales placer. Sed varius leo ac...',
		'date': '2018-04-14'
	}
];

let singleFeaturedPosts = [
	{
		'category': 'finance',
		'txt': 'Pellentesque mattis arcu massa, nec fringilla turpis eleifend id.',
		'img': '/img/bg-img/19.jpg',
		'date': '04-14 07:00'
	},
	{
		'category': 'politics',
		'txt': 'Sed a elit euismod augue semper congue sit amet ac sapien.',
		'img': '/img/bg-img/20.jpg',
		'date': '04-14 07:00'
	},
	{
		'category': 'health',
		'txt': 'Pellentesque mattis arcu massa, nec fringilla turpis eleifend id.',
		'img': '/img/bg-img/21.jpg',
		'date': '04-14 07:00'
	},
	{
		'category': 'finance',
		'txt': 'Augue semper congue sit amet ac sapien. Fusce consequat.',
		'img': '/img/bg-img/22.jpg',
		'date': '04-14 07:00'
	},
	{
		'category': 'travel',
		'txt': 'Pellentesque mattis arcu massa, nec fringilla turpis eleifend id.',
		'img': '/img/bg-img/23.jpg',
		'date': '04-14 07:00'
	},
	{
		'category': 'politics',
		'txt': 'Augue semper congue sit amet ac sapien. Fusce consequat.',
		'img': '/img/bg-img/24.jpg',
		'date': '04-14 07:00'
	}
];

let latestComments = [
	{
		'name': 'Jamie Smith',
		'img': '/img/bg-img/29.jpg',
		'date': '2018-04-14 06:34'
	},
	{
		'name': 'Jamie Smith',
		'img': '/img/bg-img/30.jpg',
		'date': '2018-04-14 06:34'
	},
	{
		'name': 'Jamie Smith',
		'img': '/img/bg-img/31.jpg',
		'date': '2018-04-14 06:34'
	},
	{
		'name': 'Jamie Smith',
		'img': '/img/bg-img/32.jpg',
		'date': '2018-04-14 06:34'
	}
 ];



module.exports = (app) => {

/*======================================================= TESTING ROUTES ==========================================*/

	app.get('/database', async (req, res, next) => {

		let db = await mysql.connect();

		let [articles] = await db.execute(`
			SELECT 
			article_title,
			article_excerpt,
			article_imgs.article_img,
			categories.category,
			article_date_time,
			authors.author_name,
      authors.author_img,
      article_thumbnails.article_thumbnail

			FROM articles

			LEFT OUTER JOIN article_imgs ON FK_article_img = article_imgs.article_img_id
			LEFT OUTER JOIN categories ON FK_article_category = categories.category_id
      LEFT OUTER JOIN authors ON FK_author_name = authors.author_id
      LEFT OUTER JOIN article_thumbnails ON FK_article_thumbnail = article_thumbnails.article_thumbnail_id

		`);

		res.render('database', {'articles': articles});

		db.end();

	});
	
	app.get('/database/:category_id', async (req, res, next) => {

		let db = await mysql.connect();

		let [articles] = await db.execute(`
			SELECT categories.category
			FROM articles
			LEFT OUTER JOIN categories ON FK_article_category = categories.category_id
			WHERE FK_article_category = ?
		`, [req.params.category_id]);

		res.render('database', {'articles': articles});

		db.end();

	});

	/*================================================= TESTING ROUTES END ===========================================*/

	/*-------------------------------------------------------- Home --------------------------------------------------*/
  app.get('/', async (req, res, next) => {

		let popularNews = [
			{
				'img': '/img/bg-img/12.jpg'
			},
			{
				'img': '/img/bg-img/13.jpg'
			},
			{
				'img': '/img/bg-img/14.jpg'
			},
			{
				'img': '/img/bg-img/15.jpg'
			}
		];

		let editorsPicks = [
			{
				'img': '/img/bg-img/1.jpg',
				'date': '2018-02-11'
			},
			{
				'img': '/img/bg-img/2.jpg',
				'date': '2018-02-11'
			},
			{
				'img': '/img/bg-img/3.jpg',
				'date': '2018-02-11'
			},
			{
				'img': '/img/bg-img/4.jpg',
				'date': '2018-02-11'
			},
			{
				'img': '/img/bg-img/5.jpg',
				'date': '2018-02-11'
			},
			{
				'img': '/img/bg-img/6.jpg',
				'date': '2018-02-11'
			},
		];

		let worldNewsPosts = [
			{
				'img': '/img/bg-img/7.jpg',
				'date': '2018-02-11'
			},
			{
				'img': '/img/bg-img/8.jpg',
				'date': '2018-02-11'
			},
			{
				'img': '/img/bg-img/9.jpg',
				'date': '2018-02-11'
			},
			{
				'img': '/img/bg-img/10.jpg',
				'date': '2018-02-11'
			},
			{
				'img': '/img/bg-img/11.jpg',
				'date': '2018-02-11'
			},
		]

		let db = await mysql.connect();

		let [categories] = await db.execute(`
			SELECT category_id,
			category
			FROM categories
		`);

		let [videos] = await db.execute(`
			SELECT video_id,
			video_title,
			video_src,
			video_img
			FROM videos
		`);

    res.render('home', {'categories': categories, 'videos': videos, fourMostPopularNews, singleFeaturedPosts, popularNews, editorsPicks, worldNewsPosts});
		
		db.end();

	});
	 
	/*----------------------------------------------------- Home end -----------------------------------------------*/

	/*-------------------------------------------------- Categories-post -------------------------------------------*/
  app.get('/categories-post', async (req, res, next) => {

		let db = await mysql.connect();

		let [categories] = await db.execute(`
			SELECT 
			category

			FROM categories
		`);

		let [articles] = await db.execute(`
			SELECT 
			article_title,
			article_excerpt,
			article_imgs.article_img,
			categories.category,
			article_date_time,
			authors.author_name,
			authors.author_img

			FROM articles

			LEFT OUTER JOIN article_imgs ON FK_article_img = article_imgs.article_img_id
			LEFT OUTER JOIN categories ON FK_article_category = categories.category_id
			LEFT OUTER JOIN authors ON FK_author_name = authors.author_id
		`);

		res.render('categories-post', {fourMostPopularNews, singleFeaturedPosts, latestComments, 'categories': categories, 'articles': articles});
		
		db.end();
	});

	app.get('/categories-post/:category_id', async (req, res, next) => {

		let singleFeaturedPosts2 = [
			{
				'title': 'Financial news: A new company is born today at the stock market',
				'img': '/img/bg-img/25.jpg'
			},
			{
				'title': 'Pompeo moves to reassure skeptical Dems in bid to be US diplomat',
				'img': '/img/bg-img/26.jpg'
			},
			{
				'title': 'Most investors think 2018 is the peak year for stocks',
				'img': '/img/bg-img/27.jpg'
			},
			{
				'title': 'Facebook is offering facial recognition again in Europe',
				'img': '/img/bg-img/28.jpg'
			}			
		];

		let db = await mysql.connect();

		let [categories] = await db.execute(`
			SELECT category_id,
			category
			FROM categories
		`);

		let [articles] = await db.execute(`
			SELECT
			article_title,
			article_excerpt,
			article_imgs.article_img,
			categories.category,
			article_date_time,
			authors.author_name,
			authors.author_img

			FROM articles

			LEFT OUTER JOIN article_imgs ON FK_article_img = article_imgs.article_img_id
			LEFT OUTER JOIN categories ON FK_article_category = categories.category_id
			LEFT OUTER JOIN authors ON FK_author_name = authors.author_id

			WHERE FK_article_category = ?
		`, [req.params.category_id]);

		res.render('categories-post', {'categories': categories, 'articles': articles, fourMostPopularNews, singleFeaturedPosts, latestComments, singleFeaturedPosts2});

		db.end();

	});
	 
	/*------------------------------------------------ Categories-post end ----------------------------------------*/

	/*---------------------------------------------------- Single-post --------------------------------------------*/
   app.get('/single-post', async (req, res, next) => {

		let relatedPosts = [
			{
				'img': '/img/bg-img/12.jpg'
			},
			{
				'img': '/img/bg-img/13.jpg'
			}
		]

		let db = await mysql.connect();
		let [categories] = await db.execute(`
			SELECT category_id,
			category
			FROM categories
		`);

		res.render('single-post', {'categories': categories, fourMostPopularNews, singleFeaturedPosts, latestComments, relatedPosts});
		
		db.end();
	});
	 
	/*-------------------------------------------------- Single-post end ------------------------------------------*/

	/*------------------------------------------------------- About ------------------------------------------------*/
	app.get('/about', async (req, res, next) => {

		let coolFacts = [
			{
				'title': 'News Article',
				'counter': 12,
			},
			{
				'title': 'Reporters',
				'counter': 45,
			},
			{
				'title': 'Awards Won',
				'counter': 25,
			},
			{
				'title': 'Years Old',
				'counter': 17,
			}
		];

		let db = await mysql.connect();

		let [categories] = await db.execute(`
			SELECT 
			category_id,
			category
			FROM categories
		`);

		let [employees] = await db.execute(`
			SELECT
			employee_name,
			employee_img,
			job
			FROM employees
		`);

		res.render('about', {'categories': categories, 'employees': employees, coolFacts});

		db.end();
	});
	
	/*----------------------------------------------------- About end ---------------------------------------------*/

	/*------------------------------------------------------ Contact ----------------------------------------------*/
   app.get('/contact', async (req, res, next) => {

			let db = await mysql.connect();

			let [categories] = await db.execute(`
				SELECT category_id,
				category
				FROM categories
			`);

      res.render('contact', {'categories': categories});
	 });
	 
	/*---------------------------------------------------- Contact end --------------------------------------------*/

};


