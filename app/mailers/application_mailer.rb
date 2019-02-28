class ApplicationMailer < ActionMailer::Base
  # default to: 'tempress@temple.edu'
  default to: 'cdoyle@temple.edu'
  layout 'mailer'

  def router(form)
  	case form.type
  	when "copy_request"
  		copy_request(form)
  	when "contact"
  		contact(form)
  	when "review_copy"
  		review_copy(form)
  	else
  		"Error: form type not specified"
  	end
  end

  def contact(form)
    mail(body: '', 
    	name: form.name,
    	email: form.email, 
    	comments: form.comments,
    	address1: form.address1,
			address2: form.address2,
			city: form.city,
			state: form.state,
			zipcode: form.zipcode,
			country: form.country,
			send_ecatalog: form.ecatalog,
			send_print_catalog: form.printcatalog,
			remove_from_mailer: form.removemailer,
			mailer_to_remove: form.removemailertype,
			add_to_mailer: form.addmailer,
			mailer_to_add: form.addmailertype)
	end
	def copy_request(form)
    mail(body: '', 
    	name: form.name,
    	email: form.email, 
    	request_type: form.requesttype, 
    	university: form.university,
    	department: form.department,
    	address1: form.address1,
			address2: form.address2,
			city: form.city,
			state: form.state,
			zipcode: form.zipcode,
			country: form.country,
			instructor: form.instructor,
			course_title: form.coursetitle,
			projected_enrollment: form.enrollment,
			semester_taught: form.semester,
			book_1_title: form.title1,
			book_1_author: form.author1,
			book_2_title: form.title2,
			book_2_author: form.author2,
			book_3_title: form.title3,
			book_3_author: form.author3,
			authorized_bookstore: form.bookstore,
			comments: form.comments)
	end
	def review_copy(form)
    mail(body: '', 
    	from: form.name, 
    	email: form.email,
    	media_type: form.mediatype, 
    	website: form.website,
    	request: form.request_text,
			address1: form.address1,
			address2: form.address2,
			city: form.city,
			state: form.state,
			zipcode: form.zipcode,
			country: form.country)
	end
end
