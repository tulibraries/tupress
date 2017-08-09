Trestle.resource(:conferences) do
  menu do
    item :conferences, icon: "fa fa-star"
  end

  # Customize the table columns shown on the index view.
  #
  table do
    column :conference
    column :location
    column :dates
    actions
  end

  # Customize the form fields shown on the new/edit views.
  #
  form do |conferences|
    text_field :conference
    select(:month, 
      [
        ["January", "01"],
        ["February", "02"],
        ["March", "03"],
        ["April", "04"],
        ["May", "05"],
        ["June", "06"],
        ["July", "07"],
        ["August", "08"],
        ["September", "09"],
        ["October", "10"],
        ["November", "11"],
        ["December", "12"]
      ]
    )
    text_field :link
    text_field :venue
    text_field :location
    text_field :dates
    text_field :booth

  #   row do
  #     col(xs: 6) { datetime_field :updated_at }
  #     col(xs: 6) { datetime_field :created_at }
  #   end
  end

  # By default, all parameters passed to the update and create actions will be
  # permitted. If you do not have full trust in your users, you should explicitly
  # define the list of permitted parameters.
  #
  # For further information, see the Rails documentation on Strong Parameters:
  #   http://guides.rubyonrails.org/action_controller_overview.html#strong-parameters
  #
  # params do |params|
  #   params.require(:conferences).require(:name, ...)
  # end
end
