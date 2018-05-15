Trestle.resource(:events) do
  menu do
    item :events, icon: "fa fa-star"
  end

  # Customize the table columns shown on the index view.
  #
  table do
    column :startdate
    # column :description, ->(event) {event.description.html_safe}
    # column :where, ->(event) {event.where.html_safe}
    column :description
    column :where
    actions
  end

  # Customize the form fields shown on the new/edit views.
  #
  form do |events|
    text_field :title
    editor :description
    text_field :where
    date_field :startdate
    date_field :enddate
    time_field :time
    time_field :endtime
    select(:timezone, [
        ['CST', 'CST'],
        ['EST', 'EST'],
        ['PST', 'PST'],
        ['GMT', 'GMT']
      ]
    )
    check_box     :news
    number_field  :weight, id: "weight", min: 1, max: 5
    file_field    :image
    check_box     :remove_image
  
    # row do
    #   col(xs: 6) { datetime_field :updated_at }
    #   col(xs: 6) { datetime_field :created_at }
    # end

    unless events.image.blank?
      sidebar do 
        label "image"
      end
      sidebar do 
        image_tag events.image.url.to_s, id: "Image"
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
  #   params.require(:events).require(:name, ...)
  # end
end
