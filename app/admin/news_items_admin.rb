Trestle.resource(:news_items) do
  menu do
    item :news_items, icon: "fa fa-star"
  end

  # Customize the table columns shown on the index view.
  #
  table do
    column  :title
    column  :homepage

    actions
  end
  # table do
  #   column :name
  #   column :created_at, align: :center
  #   actions
  # end

  # Customize the form fields shown on the new/edit views.
  #
  form do |news_items|
    text_field  :title
    editor      :description
    check_box   :homepage
    file_field  :image
    check_box   :remove_image

  
    # row do
    #   col(xs: 6) { datetime_field :updated_at }
    #   col(xs: 6) { datetime_field :created_at }
    # end

  unless news_items.image.blank?
      sidebar do 
        label "image"
      end
      sidebar do 
        image_tag news_items.image.url.to_s, id: "Image"
      end
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
  #   params.require(:news_items).permit(:name, ...)
  # end
end
