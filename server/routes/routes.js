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

      res.render('home', {popularNews, videoPosts, editorsPicks, worldNewsPosts});
   });

   app.get('/about', (req, res, next) => {

      res.render('about');
   });

   app.get('/categories-post', (req, res, next) => {
      res.render('categories-post');
   });

   app.get('/single-post', (req, res, next) => {
      res.render('single-post');
   });

   app.get('/contact', (req, res, next) => {
      res.render('contact');
   });

};