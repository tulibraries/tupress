Trestle.resource(:highlights) do

  require 'carrierwave/processing/mini_magick'

  menu do
    item :highlights, icon: "fa fa-star"
  end

  collection do
    Highlight.order(title: :asc)
  end

  search do |q|
    collection.where("title LIKE ?", "%#{q}%")
  end


  # Customize the table columns shown on the index view.
  #
  table do
    column :title
    actions
  end

  # Customize the form fields shown on the new/edit views.
  #
  form do |highlight|
    text_field  :title
    file_field  :image, accept: 'image/png,image/jpeg,image/gif,image/jpg'
    check_box   :remove_image
    text_field  :link
    check_box   :homepage
  
    if !highlight.image.nil?
      sidebar do 
        label "image"
      end
      sidebar do 
        image_tag highlight.image.url.to_s, id: "highlight_image"
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
  #   params.require(:highlight).permit(:name, ...)
  # end
end
