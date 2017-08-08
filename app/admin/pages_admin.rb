Trestle.resource(:pages) do
  menu do
    item :pages, icon: "fa fa-star"
  end

  # # Customize the table columns shown on the index view.
  # #
  #  table do
  #    column :name
  #    column :created_at, align: :center
  #    actions
  #  end

  # # Customize the form fields shown on the new/edit views.
  # #
  #  form do |page|
  #    text_field :name
  #     text_area :content
  #     text_Area :content2
  # #
  #    row do
  #      col(xs: 6) { datetime_field :updated_at }
  #      col(xs: 6) { datetime_field :created_at }
  #    end
  #  end

  # By default, all parameters passed to the update and create actions will be
  # permitted. If you do not have full trust in your users, you should explicitly
  # define the list of permitted parameters.
  #
  # For further information, see the Rails documentation on Strong Parameters:
  #   http://guides.rubyonrails.org/action_controller_overview.html#strong-parameters
  #
  # params do |params|
  #   params.require(:page).require(:name, ...)
  # end
# Add a link to this admin in the main navigation
  #menu :pages, icon: "fa fa-file-text-o"

  # Define custom scopes for the index view
  scope :all, default: true

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
    end

    # tab :metadata do
    #   # Layout fields based on a 12-column grid
    #   row do
    #     col(sm: 6) { select :author, User.all }
    #     col(sm: 6) { tag_select :tags }
    #   end
    # end

    # sidebar do
    #   # Render a custom partial: app/views/admin/posts/_sidebar.html.erb
    #   render "sidebar"
    # end
  end
end
