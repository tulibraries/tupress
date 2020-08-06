Trestle.resource(:promotions) do
  menu do
    item :promotions, icon: "fa fa-star"
  end

  # Customize the table columns shown on the index view.
  #
  table do
    column :title
    column :pdf_display_name, header: "PDF"
    column :active
    actions
  end

  # Customize the form fields shown on the new/edit views.
  #
  form do |promotion|
    text_field  :title
    check_box   :active
    editor      :intro_text
    text_field  :pdf_display_name
    file_field  :pdf, accept: 'application/pdf'
    check_box   :remove_pdf

    unless promotion.pdf.file.nil?
      sidebar do 
        label "PDF"
      end
      sidebar do 
        link_to promotion.pdf_display_name, promotion.pdf.url
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
  #   params.require(:promotion).permit(:name, ...)
  # end
end
