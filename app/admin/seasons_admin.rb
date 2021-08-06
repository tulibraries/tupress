Trestle.resource(:seasons) do
  
  menu do
    item :seasons, icon: "fa fa-star"
  end

  collection do
    Season.order(created_at: :desc)
  end

  # Customize the table columns shown on the index view.
  #
  table do
    column :title
    column :code
    column :image
    column :pdf
    actions
  end

  # Customize the form fields shown on the new/edit views.
  #
  form do |season|
    text_field  :title
    text_field  :code
    check_box   :suppress
    file_field  :image
    check_box   :remove_image
    file_field  :pdf
    text_field  :pdf_label
    check_box   :remove_pdf
  
    unless season.image.nil?
      sidebar do 
        label "image"     
      end
      sidebar do 
        image_tag season.image.url.to_s, id: "catalog_image"
      end
    end
    unless season.pdf.file.nil?
      sidebar do 
        label "PDF"     
      end
      sidebar do 
        link_to season.pdf_label, season.pdf.url
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
