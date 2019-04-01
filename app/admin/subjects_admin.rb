Trestle.resource(:subjects) do
  menu do
    item :subjects, icon: "fa fa-star"
  end

  # Customize the table columns shown on the index view.
  #
  table do
    column :subject_id, sort: { default: true, default_order: :asc }, header: "Subject ID"
    column :subject
    column :pdf
    
    actions
  end

  # Customize the form fields shown on the new/edit views.
  #
  form do |subject|

    tab :subject do
      text_field :subject
      number_field :subject_id, label: "Subject ID"
    end

    brochures = Brochure.where(subject_id: subject.subject_id)

    unless brochures.nil?
      tab :brochures, badge: brochures.count do
        table brochures do
          column :pdf, link: true
        end
      end

      concat admin_link_to("New Brochure", admin: :brochures, action: :new, params: { subject_id: subject.subject_id }, class: "btn btn-success top-down")
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
  #   params.require(:subject).permit(:name, ...)
  # end
end
