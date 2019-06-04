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
		'img': 'img/bg-img/19.jpg',
		'date': '04-14 07:00'
	},
	{
		'category': 'politics',
		'txt': 'Sed a elit euismod augue semper congue sit amet ac sapien.',
		'img': 'img/bg-img/20.jpg',
		'date': '04-14 07:00'
	},
	{
		'category': 'health',
		'txt': 'Pellentesque mattis arcu massa, nec fringilla turpis eleifend id.',
		'img': 'img/bg-img/21.jpg',
		'date': '04-14 07:00'
	},
	{
		'category': 'finance',
		'txt': 'Augue semper congue sit amet ac sapien. Fusce consequat.',
		'img': 'img/bg-img/22.jpg',
		'date': '04-14 07:00'
	},
	{
		'category': 'travel',
		'txt': 'Pellentesque mattis arcu massa, nec fringilla turpis eleifend id.',
		'img': 'img/bg-img/23.jpg',
		'date': '04-14 07:00'
	},
	{
		'category': 'politics',
		'txt': 'Augue semper congue sit amet ac sapien. Fusce consequat.',
		'img': 'img/bg-img/24.jpg',
		'date': '04-14 07:00'
	}
];


let latestComments = [
	{
		'name': 'Jamie Smith',
		'img': 'img/bg-img/29.jpg',
		'date': '2018-04-14 06:34'
	},
	{
		'name': 'Jamie Smith',
		'img': 'img/bg-img/30.jpg',
		'date': '2018-04-14 06:34'
	},
	{
		'name': 'Jamie Smith',
		'img': 'img/bg-img/31.jpg',
		'date': '2018-04-14 06:34'
	},
	{
		'name': 'Jamie Smith',
		'img': 'img/bg-img/32.jpg',
		'date': '2018-04-14 06:34'
	}
 ];



module.exports = (app) => {

	/*-------------------------------------------------------- Home --------------------------------------------------*/
   app.get('/', (req, res, next) => {

		let popularNews = [
			{
				'img': 'img/bg-img/12.jpg'
			},
			{
				'img': 'img/bg-img/13.jpg'
			},
			{
				'img': 'img/bg-img/14.jpg'
			},
			{
				'img': 'img/bg-img/15.jpg'
			}
		];

		let videoPosts = [
			{
				'img': 'img/bg-img/video1.jpg',
			},
			{
				'img': 'img/bg-img/video2.jpg',
			},
			{
				'img': 'img/bg-img/video3.jpg',
			}
		];

		let editorsPicks = [
			{
				'img': 'img/bg-img/1.jpg',
				'date': '2018-02-11'
			},
			{
				'img': 'img/bg-img/2.jpg',
				'date': '2018-02-11'
			},
			{
				'img': 'img/bg-img/3.jpg',
				'date': '2018-02-11'
			},
			{
				'img': 'img/bg-img/4.jpg',
				'date': '2018-02-11'
			},
			{
				'img': 'img/bg-img/5.jpg',
				'date': '2018-02-11'
			},
			{
				'img': 'img/bg-img/6.jpg',
				'date': '2018-02-11'
			},
		];

		let worldNewsPosts = [
			{
				'img': 'img/bg-img/7.jpg',
				'date': '2018-02-11'
			},
			{
				'img': 'img/bg-img/8.jpg',
				'date': '2018-02-11'
			},
			{
				'img': 'img/bg-img/9.jpg',
				'date': '2018-02-11'
			},
			{
				'img': 'img/bg-img/10.jpg',
				'date': '2018-02-11'
			},
			{
				'img': 'img/bg-img/11.jpg',
				'date': '2018-02-11'
			},
		]

      res.render('home', {fourMostPopularNews, singleFeaturedPosts, popularNews, videoPosts, editorsPicks, worldNewsPosts});
	 });
	 
	/*----------------------------------------------------- Home end -----------------------------------------------*/

	/*-------------------------------------------------- Categories-post -------------------------------------------*/
   app.get('/categories-post', (req, res, next) => {

		let singleFeaturedPosts2 = [
			{
				'title': 'Financial news: A new company is born today at the stock market',
				'img': 'img/bg-img/25.jpg'
			},
			{
				'title': 'Pompeo moves to reassure skeptical Dems in bid to be US diplomat',
				'img': 'img/bg-img/26.jpg'
			},
			{
				'title': 'Most investors think 2018 is the peak year for stocks',
				'img': 'img/bg-img/27.jpg'
			},
			{
				'title': 'Facebook is offering facial recognition again in Europe',
				'img': 'img/bg-img/28.jpg'
			}			
		];

      res.render('categories-post', {fourMostPopularNews, singleFeaturedPosts, latestComments, singleFeaturedPosts2});
	 });
	 
	/*------------------------------------------------ Categories-post end ----------------------------------------*/

	/*---------------------------------------------------- Single-post --------------------------------------------*/
   app.get('/single-post', (req, res, next) => {

		let relatedPosts = [
			{
				'img': 'img/bg-img/12.jpg'
			},
			{
				'img': 'img/bg-img/13.jpg'
			}
		]

      res.render('single-post', {fourMostPopularNews, singleFeaturedPosts, latestComments, relatedPosts});
	 });
	 
	/*-------------------------------------------------- Single-post end ------------------------------------------*/

	/*------------------------------------------------------- About ------------------------------------------------*/
	app.get('/about', (req, res, next) => {

		let teamMembers = [
			{
				'name': 'James Williams',
				'img': 'img/bg-img/t1.jpg'
			},
			{
				'name': 'Christinne Smith',
				'img': 'img/bg-img/t2.jpg'
			},
			{
				'name': 'Alicia Dormund',
				'img': 'img/bg-img/t3.jpg'
			},
			{
				'name': 'Steve Duncan',
				'img': 'img/bg-img/t4.jpg'
			},
			{
				'name': 'James Williams',
				'img': 'img/bg-img/t5.jpg'
			},
			{
				'name': 'Christinne Smith',
				'img': 'img/bg-img/t6.jpg'
			},
			{
				'name': 'Alicia Dormund',
				'img': 'img/bg-img/t7.jpg'
			},
			{
				'name': 'Steve Duncan',
				'img': 'img/bg-img/t8.jpg'
			},
		];

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

			res.render('about', {teamMembers, coolFacts});
	});
	
	/*----------------------------------------------------- About end ---------------------------------------------*/

	/*------------------------------------------------------ Contact ----------------------------------------------*/
   app.get('/contact', (req, res, next) => {
      res.render('contact');
	 });
	 
	/*---------------------------------------------------- Contact end --------------------------------------------*/

};