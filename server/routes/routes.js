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
		]

      res.render('home', {popularNews});
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