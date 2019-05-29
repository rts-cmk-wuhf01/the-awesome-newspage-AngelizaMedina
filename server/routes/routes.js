module.exports = (app) => {


   app.get('/', (req, res, next) => {

		let popularNews = [
			{
				'category': 'FINANACE',
				'title': 'Dolor sit amet, consectetur adipiscing elit. Nam eu metus sit amet odio sodales placer. Sed varius leo ac...',
				'img': 'img/bg-img/12.jpg'
			},
			{
				'category': 'FINANACE',
				'title': 'Dolor sit amet, consectetur adipiscing elit. Nam eu metus sit amet odio sodales placer. Sed varius leo ac...',
				'img': 'img/bg-img/13.jpg'
			},
			{
				'category': 'FINANACE',
				'title': 'Dolor sit amet, consectetur adipiscing elit. Nam eu metus sit amet odio sodales placer. Sed varius leo ac...',
				'img': 'img/bg-img/14.jpg'
			},
			{
				'category': 'FINANACE',
				'title': 'Dolor sit amet, consectetur adipiscing elit. Nam eu metus sit amet odio sodales placer. Sed varius leo ac...',
				'img': 'img/bg-img/15.jpg'
			}
		];

		let videoPosts = [
			{
				'img': 'img/bg-img/video1.jpg',
				'videoHref': 'https://www.youtube.com/watch?v=5BQr-j3BBzU'
			},
			{
				'img': 'img/bg-img/video2.jpg',
				'videoHref': 'https://www.youtube.com/watch?v=5BQr-j3BBzU'
			},
			{
				'img': 'img/bg-img/video3.jpg',
				'videoHref': 'https://www.youtube.com/watch?v=5BQr-j3BBzU'
			}
		];

      res.render('home', {popularNews, videoPosts});
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