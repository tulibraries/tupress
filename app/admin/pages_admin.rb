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
  form do
    # Organize fields into tabs and sidebars
    tab :post do
      text_field :name

      # Define custom form fields for easy re-use
      editor :content
      editor :content2
    end
  end
end
