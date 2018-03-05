Trestle.resource(:catalogs) do
  require 'carrierwave/processing/mini_magick'
  
  menu do
    item :catalogs, icon: "fa fa-star"
  end

  # Customize the table columns shown on the index view.
  #
  # table do
  #   column :name
  #   column :created_at, align: :center
  #   actions
  # end

  # Customize the form fields shown on the new/edit views.
  #
  form do |catalog|
    text_field :title
    text_field :code
    text_field :link
    file_field :image
    check_box  :remove_image

  
    # row do
    #   col(xs: 6) { datetime_field :updated_at }
    #   col(xs: 6) { datetime_field :created_at }
    # end
    if !catalog.image.nil?
      sidebar do 
        label "image"     
      end
      sidebar do 
        image_tag catalog.image.url.to_s, id: "catalog_image"
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
  #   params.require(:catalog).permit(:name, ...)
  # end

end
