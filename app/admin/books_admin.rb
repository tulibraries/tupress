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

    text_field :title, :disabled => true
    if !:author.nil?
      text_field :author, :disabled => true
    end
    text_field  :is_guide, :disabled => true
    check_box :hot
    check_box :news
    text_area :news_text
    check_box :highlight
    text_field :highlight_image

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
