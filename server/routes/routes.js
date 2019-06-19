
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

		let [singleFeaturedPosts] = await db.execute(`
      SELECT 
			article_excerpt,
			categories.category,
			article_date_time,
      article_thumbnails.article_thumbnail

      FROM articles

			LEFT OUTER JOIN categories ON FK_article_category = categories.category_id
      LEFT OUTER JOIN article_thumbnails ON FK_article_thumbnail = article_thumbnails.article_thumbnail_id

      WHERE article_id = (
        SELECT article_id 
        FROM articles 
        WHERE FK_article_category = category_id
        ORDER BY article_date_time DESC
        LIMIT 1
      )
		`);

		res.render('database', {'singleFeaturedPosts': singleFeaturedPosts});

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

		let db = await mysql.connect();

		let categories = await getCategories();

		let videos = await getVideos();

		let singleFeaturedPosts = await getSingleFeaturedPosts();

		let editorsPicks = await getEditorsPicks();

		let worldNews = await getWorldNews();

    res.render('home', {'categories': categories, 'videos': videos, fourMostPopularNews, 'singleFeaturedPosts': singleFeaturedPosts, popularNews, 'editorsPicks': editorsPicks, 'worldNews': worldNews});
		
		db.end();

	});
	 
	/*----------------------------------------------------- Home end -----------------------------------------------*/

	/*-------------------------------------------------- Categories-post -------------------------------------------*/

  app.get('/categories-post', async (req, res, next) => {

		let db = await mysql.connect();

		let categories = await getCategories();

		let singleFeaturedPosts = await getSingleFeaturedPosts();

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

		res.render('categories-post', {fourMostPopularNews, 'singleFeaturedPosts': singleFeaturedPosts, latestComments, 'categories': categories, 'articles': articles});
		
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

		let categories = await getCategories();

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
			ORDER BY article_date_time DESC`, [req.params.category_id]
			
		);

		let singleFeaturedPosts = await getSingleFeaturedPosts();

		res.render('categories-post', {'categories': categories, 'articles': articles, fourMostPopularNews, 'singleFeaturedPosts': singleFeaturedPosts, latestComments, singleFeaturedPosts2});

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

		let categories = await getCategories();

		let singleFeaturedPosts = await getSingleFeaturedPosts();

		res.render('single-post', {'categories': categories, fourMostPopularNews, 'singleFeaturedPosts': singleFeaturedPosts, latestComments, relatedPosts});
		
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

		let categories = await getCategories();

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

		let categories = await getCategories();

		res.render('contact', {'categories': categories});
	});

	app.post('/contact', async (req, res, next) => {

		let name = req.body.name;
		let email = req.body.email;
		let subject = req.body.subject;
		let message = req.body.message;
		let contactDate = new Date();

		let return_message = [];

		if (typeof name == 'undefined' || name == '') {
			 return_message.push('Name is missing');
		}
		if (email == undefined || email == '') {
			 return_message.push('Email is missing');
		}
		if (subject == undefined || subject == '') {
			 return_message.push('Subject is missing');
		}
		if (message == undefined || message == '') {
			 return_message.push('Message is missing');
		}

		
		if (return_message.length > 0) {

			res.render('contact', {

				'return_message': return_message.join(', '),
				'values': req.body
			});
			
  	}else{

			let db = await mysql.connect();

			let result = await db.execute(`
			INSERT INTO messages 
				 (sender_name, sender_email, subject, message, message_date_time) 
			VALUES 
				 (?,?,?,?,?)`, [name, email, subject, message, contactDate]);
			db.end();

			return_message.push('Your message has been sent');

      res.render('contact');
  	}
 }); //app.post('/contact'...)
	 
	/*---------------------------------------------------- Contact end --------------------------------------------*/
	

}; //module.exports


/*======================================================= Functions ==============================================*/

	/*------------------------------------------------ Multiple pages data -----------------------------------------*/

	async function getCategories() {
		let db = await mysql.connect();
		let [categories] = await db.execute(`
			SELECT category_id, 
			category 
			FROM categories
			`);
		db.end();
		return categories;
	}

	async function getSingleFeaturedPosts(){
		let db = await mysql.connect();
		let [singleFeaturedPosts] = await db.execute(`
			SELECT 
			article_title,
			article_excerpt,
			categories.category,
			article_date_time,
			article_thumbnails.article_thumbnail

			FROM articles

			LEFT OUTER JOIN categories ON FK_article_category = categories.category_id
			LEFT OUTER JOIN article_thumbnails ON FK_article_thumbnail = article_thumbnails.article_thumbnail_id

			WHERE article_id = (
				SELECT article_id 
				FROM articles 
				WHERE FK_article_category = category_id
				ORDER BY article_date_time DESC
				LIMIT 1
				)
		`);
		db.end();
		return singleFeaturedPosts;
	}

	/*---------------------------------------------- Multiple pages data end ---------------------------------------*/

	/*----------------------------------------------------- Home data ----------------------------------------------*/

	async function getVideos(){
		let db = await mysql.connect();
		let [videos] = await db.execute(`
			SELECT video_id,
			video_title,
			video_src,
			video_img
			FROM videos
		`);
		db.end();
		return videos;
	}

	async function getEditorsPicks(){
		let db = await mysql.connect();
		let [editorsPicks] = await db.execute(`
			SELECT
			article_title, 
			article_date_time,
			article_thumbnails.article_thumbnail

			FROM editors_picks

			LEFT OUTER JOIN articles ON FK_editors_pick_article = articles.article_id
			LEFT OUTER JOIN article_thumbnails ON FK_article_thumbnail = article_thumbnails.article_thumbnail_id

			ORDER BY article_date_time DESC

			LIMIT 6
			`);
		db.end();
		return editorsPicks;
	}

	async function getWorldNews(){
		let db = await mysql.connect();
		let [worldNews] = await db.execute(`
			SELECT
			article_title, 
			article_date_time,
			article_thumbnails.article_thumbnail

			FROM world_news

			LEFT OUTER JOIN articles ON FK_article = articles.article_id
			LEFT OUTER JOIN article_thumbnails ON FK_article_thumbnail = article_thumbnails.article_thumbnail_id

			ORDER BY article_date_time DESC

			LIMIT 5
			`);
		db.end();
		return worldNews;
	}

	/*---------------------------------------------------- Home data end -------------------------------------------*/

/*====================================================== Functions end ============================================*/