Trestle.resource(:brochures) do
  menu do
    item :brochures, icon: "fa fa-star"
  end

  # Customize the table columns shown on the index view.
  #
  # table do
  #   column :name
  #   column :created_at, align: :center
  #   actions
  # end

  # Customize the form fields shown on the new/edit views.
  #
  form do |brochure|

    @subjects = Subject.all
    @all_subjects = Array.new

    names = @subjects.collect do |subject| 
      subject.subject 
    end
    ids = @subjects.collect do |subject| 
      subject.subject_id
    end
    @all_subjects = names.zip(ids)

    text_field :title
    file_field :pdf
    select(:subject, @all_subjects)
    check_box :promoted_to_homepage
    check_box :promoted_to_subject
  
  end

  # By default, all parameters passed to the update and create actions will be
  # permitted. If you do not have full trust in your users, you should explicitly
  # define the list of permitted parameters.
  #
  # For further information, see the Rails documentation on Strong Parameters:
  #   http://guides.rubyonrails.org/action_controller_overview.html#strong-parameters
  #
  # params do |params|
  #   params.require(:brochure).permit(:name, ...)
  # end
end
