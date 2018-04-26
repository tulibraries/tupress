Trestle.resource(:documents) do
  menu do
    item :documents, icon: "fa fa-star"
  end

  # Customize the table columns shown on the index view.
  #
  table do
    column :title do |title|
      truncate(title.title, omision: "...", length: 300)
    end
    # column :created_at, align: :center
    actions
  end

  # Customize the form fields shown on the new/edit views.
  #
  form do |document|
    text_field    :title
    file_field    :filename
    text_field    :department
    text_field    :format
    text_field    :department_contact
    text_field    :contact_email
  
    # row do
    #   col(xs: 6) { datetime_field :updated_at }
    #   col(xs: 6) { datetime_field :created_at }
    # end
  if !document.filename.blank?
    sidebar do 
      label "File Name"
    end
    sidebar do 
      link_to document.filename_identifier, document.filename.url
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
  #   params.require(:documents).permit(:name, ...)
  # end
end
