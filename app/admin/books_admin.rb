Trestle.resource(:books) do
  menu do
    item :books, icon: "fa fa-star"
  end

  # Customize the table columns shown on the index view.
  #
  table do
    column :book_id
    column :title
    column :author
    actions
  end

  # Customize the form fields shown on the new/edit views.
  #
  form do |book|
    text_field :title
    text_field :subtitle
    # book.author.each do |author|
      text_field  :author, multiple: true
    # end
    text_area  :about_author, multiple: true
    text_area  :intro

    text_area  :blurb
    text_area  :excerpt
    text_field  :is_guide
    text_field  :status
    text_field  :cover_image
    text_field  :format
    text_field  :isbn
    text_field  :pub_date
    text_field  :in_series, multiple: true
    text_area  :binding, multiple: true
    text_area  :description
    text_area  :reviews, multiple: true
    text_area  :subjects, multiple: true
    text_area  :contents
  
    row do
      col(xs: 6) { datetime_field :updated_at }
      col(xs: 6) { datetime_field :created_at }
    end
  end

  # By default, all parameters passed to the update and create actions will be
  # permitted. If you do not have full trust in your users, you should explicitly
  # define the list of permitted parameters.
  #
  # For further information, see the Rails documentation on Strong Parameters:
  #   http://guides.rubyonrails.org/action_controller_overview.html#strong-parameters
  #
  # params do |params|
  #   params.require(:book).require(:name, ...)
  # end
end
