Trestle.resource(:pages) do
  menu do
    item :pages, icon: "fa fa-star"
  end

  # Define the index view table listing
  table do
    column :name, link: true
    column :updated_at, header: "Last Updated", align: :center
    actions
  end

  # Define the form structure for the new & edit actions
  form do |page|
    # Organize fields into tabs and sidebars
    tab :post do
      text_field    :name
      file_field    :file
      check_box     :remove_file

      # Define custom form fields for easy re-use
      editor        :content
      editor        :content2

      if !page.file.blank?
        sidebar do 
          label "File Name"
        end
        sidebar do 
          link_to page.file_identifier, page.file.url
        end
      end

    end
  end
end
