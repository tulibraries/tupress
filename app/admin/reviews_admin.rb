Trestle.resource(:reviews) do
  menu do
    item :reviews, icon: "fa fa-star"
  end

  collection do
    Review.order(title: :asc).order(weight: :desc)
  end

  search do |q|
    collection.where("title LIKE ?", "%#{q}%")
  end

  # Customize the table columns shown on the index view.
  #
  table do
    column :title do |title|
      truncate(title.title, omision: "...", length: 400)
    end
    column :weight
    # column :created_at, align: :center
    actions
  end

  # Customize the form fields shown on the new/edit views.
  #
  form do |reviews|
    text_field    :title, disabled: true
    # text_field    :title_id, disabled: true
    text_field    :author, disabled: true
    editor        :review
    number_field  :weight, id: "review-weight", min: 0, max: 99
  
  #   row do
  #     col(xs: 6) { datetime_field :updated_at }
  #     col(xs: 6) { datetime_field :created_at }
  #   end
  end

  # By default, all parameters passed to the update and create actions will be
  # permitted. If you do not have full trust in your users, you should explicitly
  # define the list of permitted parameters.
  #
  # For further information, see the Rails documentation on Strong Parameters:
  #   http://guides.rubyonrails.org/action_controller_overview.html#strong-parameters
  #
  # params do |params|
  #   params.require(:reviews).permit(:name, ...)
  # end
end
