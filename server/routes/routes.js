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





module.exports = (app) => {


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
			},
			{
				'img': 'img/bg-img/2.jpg',
			},
			{
				'img': 'img/bg-img/3.jpg',
			},
			{
				'img': 'img/bg-img/4.jpg',
			},
			{
				'img': 'img/bg-img/5.jpg',
			},
			{
				'img': 'img/bg-img/6.jpg',
			},
		];

		let worldNewsPosts = [
			{
				'img': 'img/bg-img/7.jpg'
			},
			{
				'img': 'img/bg-img/8.jpg'
			},
			{
				'img': 'img/bg-img/9.jpg'
			},
			{
				'img': 'img/bg-img/10.jpg'
			},
			{
				'img': 'img/bg-img/11.jpg'
			},
		]

      res.render('home', {fourMostPopularNews, popularNews, videoPosts, editorsPicks, worldNewsPosts});
   });

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

      res.render('about', {teamMembers});
   });

   app.get('/categories-post', (req, res, next) => {

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

      res.render('categories-post', {fourMostPopularNews, latestComments});
   });

   app.get('/single-post', (req, res, next) => {
      res.render('single-post', {fourMostPopularNews});
   });

   app.get('/contact', (req, res, next) => {
      res.render('contact');
   });

};