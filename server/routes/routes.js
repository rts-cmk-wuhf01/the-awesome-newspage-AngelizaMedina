module.exports = (app) => {

   app.get('/', (req, res, next) => {
		 let products = [
			 {
				 'name': 'p1',
				 'price': 100
			 },

			 {
				'name': 'p2',
				'price': 200
			},

			{
				'name': 'p3',
				'price': 300
			}
		 ];

      res.render('home', {
				'products': products
			});
   });

   app.get('/about', (req, res, next) => {
      res.render('about');
   });

   app.get('/catagories-post', (req, res, next) => {
      res.render('catagories-post');
   });

   app.get('/single-post', (req, res, next) => {
      res.render('single-post');
   });

   app.get('/contact', (req, res, next) => {
      res.render('contact');
   });

};