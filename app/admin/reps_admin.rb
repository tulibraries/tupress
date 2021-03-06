Trestle.resource(:reps) do
  menu do
    item :reps, icon: "fa fa-star"
  end

  # Customize the table columns shown on the index view.
  #
  table do
    column :name
    column :company
    column :region
    actions
  end

  # Customize the form fields shown on the new/edit views.
  #
  form do |reps|
    text_field :company
    text_field :name
    text_field :address
    text_field :address2
    text_field :address3
    text_field :phone
    text_field :fax
    text_field :email
    text_field :website
    select(:region, 
      [
        ['All other areas and general sales inquiries', '15'],
        ['All Other Territories', '8'],
        ['Asia and the Pacific, including Australia and New Zealand', '13'],
        ['China & Taiwan', '2'],
        ['Europe, the Middle East, and Africa', '14'],
        ['Japan', '3'],
        ['Korea', '4'],
        ['Midwest', '10'],
        ['Northeast and Mid-Atlantic', '9'],
        ['Southeast', '11'],
        ['Spanish & Portuguese languages, World', '5'],
        ['Thailand & Vietnam / Indonesia', '6'],
        ['Turkey', '7'],
        ['West', '12']
      ]
    )
    text_field :coverage
  
    # row do
    #   col(xs: 6) { datetime_field :updated_at }
    #   col(xs: 6) { datetime_field :created_at }
    # end
  end

  # By default, all parameters passed to the update and create actions will be
  # permitted. If you do not have full trust in your users, you should explicitly
  # define the list of permitted parameters.
  #
  # For further information, see the Rails documentation on Strong Parameters:
  #   http://guides.rubyonrails.org/action_controller_overview.html#strong-parameters
  #
  # params do |params|
  #   params.require(:reps).require(:name, ...)
  # end
end
