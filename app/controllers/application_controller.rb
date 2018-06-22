class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

	Rails.logger = Logger.new(STDOUT)

  rescue_from Exception do |error|
  	logger.info "Redirect to homepage due to error: #{error}"
  	redirect_to root_path
  end

  def search
    @books = Book.search(params[:q])
    @subjects = Subject.search(params[:q])
    @people = Person.search(params[:q])
    @site = Page.search(params[:q])
    @reps = Rep.search(params[:q])
    @events = Event.search(params[:q])
    @conferences = Conference.search(params[:q])
    @faqs = Faq.search(params[:q])
    if params[:q].blank?
      redirect_to(root_path)
    end
  end
end
