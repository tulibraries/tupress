module BookHelper
	  def social
	  	javascript_tag "$(document).ready(function(){
      $('.share').ShareLink({
          title: '"+@book.title+"',
          text: '"+@book.title+"',
          image: '"+@book.cover_image.url.to_s+"',
          url: 'http://localhost:3000/book/"+@book.book_id+"'
      });
      $('.counter').ShareCounter({
          url: 'http://google.com/',
          increment: true
      });
  });
	  "
	end
end
