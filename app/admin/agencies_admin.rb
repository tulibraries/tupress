Trestle.resource(:agencies) do
  before_action :authenticate_user!
  menu do
    item :agencies, icon: "fa fa-star"
  end

  # Customize the table columns shown on the index view.
  #
  table do
    column :title
    column :contact
    column :region
    actions
  end

  # Customize the form fields shown on the new/edit views.
  #
  form do |agencies|
    text_field :title
    text_field :contact
    text_field :address1
    text_field :address2
    text_field :address3
    text_field :city
    text_field :country
    text_field :phone
    text_field :fax
    text_field :email
    text_field :website
    select(:region, 
        [
          ['All Other Territories', 'All Other Territories'],
          ['Asia and the Pacific, including Australia and New Zealand', 'Asia and the Pacific, including Australia and New Zealand'],
          ['China & Taiwan', 'China & Taiwan'],
          ['Europe, the Middle East, and Africa', 'Europe, the Middle East, and Africa'],
          ['Japan', 'Japan'],
          ['Korea', 'Korea'],
          ['Midwest', 'Midwest'],
          ['Northeast and Mid-Atlantic', 'Northeast and Mid-Atlantic'],
          ['Southeast', 'Southeast'],
          ['Spanish & Portuguese languages, World', 'Spanish & Portuguese languages, World'],
          ['Thailand & Vietnam / Indonesia', 'Thailand & Vietnam / Indonesia'],
          ['Turkey', 'Turkey'],
          ['West', 'West']
        ]
      )
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
  #   params.require(:agencies).require(:name, ...)
  # end
end
