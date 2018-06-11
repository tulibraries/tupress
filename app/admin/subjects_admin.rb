Trestle.resource(:subjects) do
  menu do
    item :subjects, icon: "fa fa-star"
  end

  # Customize the table columns shown on the index view.
  #
  table do
    column :subject
  end

  # Customize the form fields shown on the new/edit views.
  #
  form do |subject|
    text_field :subject_id, disabled: true
    text_field :subject, disabled: true
    text_field :seealso

  end

  # By default, all parameters passed to the update and create actions will be
  # permitted. If you do not have full trust in your users, you should explicitly
  # define the list of permitted parameters.
  #
  # For further information, see the Rails documentation on Strong Parameters:
  #   http://guides.rubyonrails.org/action_controller_overview.html#strong-parameters
  #
  # params do |params|
  #   params.require(:subject).permit(:name, ...)
  # end
end
