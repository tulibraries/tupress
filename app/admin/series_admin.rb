Trestle.resource(:series) do
  menu do
    item :series, icon: "fa fa-star"
  end

  # Customize the table columns shown on the index view.
  #
  table do
    column :series_code
    column :series_name do |series|
      truncate(series.series_name, omision: "...", length: 300)
    end
    actions
  end

  # Customize the form fields shown on the new/edit views.
  #
  form do |series|
    tab :series do
      text_field :series_code
      text_field :series_name
      text_field :editors
      text_field :founder
      editor     :description
    end

    tab :image do
      file_field    :image, accept: 'image/png,image/jpeg,image/gif,image/jpg'
      check_box     :remove_image
      text_field :image_link
    end
    
    if series.image.url.present?
      sidebar do 
        label "image"
      end
      sidebar do 
        image_tag series.image.url.to_s, id: "image"
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
  #   params.require(:series).permit(:name, ...)
  # end
end
