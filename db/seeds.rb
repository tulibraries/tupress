# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# #

# ruby encoding: utf-8

Book.destroy_all

Book.create(
						title: 'A is for Art Museum', 
						author_attributes: [
							{author: 'Katy Friedland'}, 
							{author: 'Marla K. Shoemaker'}
						], 
						description: '<p class="award">Honorable mention in the AAM (American Association of Museums) design competition., 2008</p><P>An art museum is a magical place. What will you find inside? This playful primer features 37 full-color illustrations of paintings, sculpture, tapestries, prints, photographs, and installations from the collections of the Philadelphia Museum of Art. Children can learn their ABCs while discovering the beauty of a bridge by Monet, a dancer by Degas, a medieval knight\’s helmet, a Japanese teahouse, and other wonders from around the world.</P><P>In <i>A is for Art Museum</i>, children are encouraged to see art in new ways. Each image is accompanied by questions designed to engage their imaginations and spark lively conversations. Activities at the back of the book suggest ways for children and adults to create stories out of each picture, or to turn a trip to an art museum into a “treasure hunt.” Like a visit to a museum, <i>A is for Art Museum</i> provides endless opportunities for interaction, fun, and learning.</P><p>Recommended for ages 2-5.</P>', 
						review_attributes: [
							{review: '"Coffee-table books aren’t just for grown-ups, as proven by A Is for Art Museum, a kid-sized catalog that brings children into the Philadelphia Museum of Art through pictures and the alphabet. Every letter is tied to a piece in the museum, and asks readers a question about the photo…. It’s the perfect museum companion, too, for a first trip." —The Philadelphia Inquirer'}, 
							{review: '"Ages 2 to 5 will learn about art, shapes, colors and more through paintings and other objects found at the Philadelphia Art Museum. Famous artists have their works included in an educational format, showing children that different visions of the world are still accessible. Each page asks questions and helps develop the child’s thinking process as they search for letters, images and more. Truly a wonderful addition to any child’s library." —Parents Express'}, 
							{review: '"A highly engaging introduction to art, this thoughtfully designed volume will inspire young children to see not only the alphabet in an entirely new way but also the world around them as they discover and learn to view paintings, sculptures, photographs, and other works and installations housed at the Philadelphia Museum of Art.... This would be a wonderful gift for any young child." —The Bloomsbury Review'}
						], 
						about_author_attributes: [
							{about_author: 'Katy Friedland is Manager of Family and Children\'s Programs at the Philadelphia Museum of Art.'}, 
							{about_author: 'Marla K. Shoemaker is Senior Curator of Education at the Philadelphia Museum of Art.'}
						], 
						category_attributes: [
							{category: 'General Interest'}, 
							{category: 'Philadelphia Region'}, 
							{category: 'Education'}
						], 
						format: '64 pp<br>8.25x8.25<br>145 tables<br>37 color illustrations', 
						binding: 'Cloth', 
						price: '18.95', 
						pub_date: 'Sep 08', 
						isbn: '9781592139637', 
						ean: '978-1-59213-963-7', 
						cover_image: 'http://www.temple.edu/tempress/titles/2015_reg.gif'
						)