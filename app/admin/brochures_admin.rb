Trestle.resource(:brochures) do
  menu do
    item :brochures, icon: "fa fa-star"
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
  form do |brochure|
    text_field :title
    file_field :pdf

    unless brochure.pdf.file.nil?
      tab :pdf do
        # link_to brochure.pdf.file.identifier, brochure.pdf.url
      end
    end

    file_field :image

    unless params[:subject_id].nil?
      select(:subject_id, Subject.all.collect {|s| [s.subject, s.subject_id]}, {selected: params[:subject_id]}, include_blank: true)
    else      
      select(:subject_id, Subject.all.collect {|s| [s.subject, s.subject_id]}, include_blank: true)
    end

    unless params[:code].nil?
      select(:catalog_code, Season.all.collect {|s| [s.title, s.code]}, {selected: params[:code]}, include_blank: true)
    else      
      select(:catalog_code, Season.all.collect {|s| [s.title, s.code]}, include_blank: true)
    end


    check_box :promoted_to_homepage
    check_box :promoted_to_subject

    unless brochure.image.nil?
      sidebar do 
        label "image"
      end
      sidebar do 
        image_tag brochure.image.url.to_s, id: "cover_image"
      end
    end
    unless brochure.pdf.file.nil?
      sidebar do 
        label "PDF"
      end
      sidebar do 
        link_to brochure.pdf.file.identifier, brochure.pdf.url
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
  #   params.require(:brochure).permit(:name, ...)
  # end
end
