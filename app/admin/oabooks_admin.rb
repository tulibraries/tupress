Trestle.resource(:oabooks) do
  menu do
    item :oabooks, icon: "fa fa-star"
  end

  # Customize the table columns shown on the index view.
  #
  table do
    column :title
    actions
  end

  # Customize the form fields shown on the new/edit views.
  #
  form do |oabook|
    tab :book do
      text_field :isbn
      text_field :title
      text_field :subtitle
      text_field :edition
      text_field :author
      text_field :supplemental
      editor :description

      unless oabook.cover_image.file.nil?
        sidebar do
          label "Cover Image"
        end
        sidebar do
          image_tag oabook.cover_image.url.to_s, id: "cover_image"
        end
      end
      unless oabook.epub.file.nil?
        sidebar do
          label "Epub"
        end
        sidebar do
          oabook.epub.file.identifier
        end
      end
      unless oabook.pdf.file.nil?
        sidebar do
          label "PDF"
        end
        sidebar do
          oabook.pdf.file.identifier
        end
      end
      unless oabook.mobi.file.nil?
        sidebar do
          label "MOBI"
        end
        sidebar do
          oabook.mobi.file.identifier
        end
      end
    end

    tab :cover_image do
      file_field :cover_image
      check_box  :remove_cover_image
    end

    tab :collections do
      select(:collection,
          [
            ['None', 'None'],
            ['Labor Studies', 'Labor Studies'],
            ['North Broad Press', 'North Broad Press']
          ]
        )
    end

    tab :downloads do
      file_field :epub
      check_box  :remove_epub
      file_field :pdf
      check_box  :remove_pdf
      file_field :mobi
      check_box  :remove_mobi
      check_box :pod, label: "Print OnDemand (Print ISBN required)"
      text_field :print_isbn, label: "Print ISBN"
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
  #   params.require(:oabooks).require(:name, ...)
  # end
end
