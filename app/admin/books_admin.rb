Trestle.resource(:books) do
  require 'carrierwave/processing/mini_magick'

  menu do
    item :books, icon: "fa fa-star"
  end

  collection do
    Book.order(title: :asc)
  end

  search do |q|
    collection.where("title LIKE ?", "%#{q}%")
  end

  # Customize the table columns shown on the index view.
  #
  table do
    column :book_id
    column :title
    column :author
    actions
  end

  #comment just to get this file into git, or else the jenkins job is stuck again

  # Customize the form fields shown on the new/edit views.
  #
  form do |book|

    text_field :title, :disabled => true
    if !:author.nil?
      text_field :author, :disabled => true
    end
    select(:status, 
        [
          ['In Print', 'IP'],
          ['Not In Print', 'NIP'],
          ['...', '...']
        ]
      )
    file_field    :cover_image, accept: 'image/png,image/jpeg,image/gif,image/jpg'
    text_field    :is_guide, :disabled => true
    check_box     :hot
    number_field  :hotweight, id: "hot-weight", min: 1, max: 4
    check_box     :news
    number_field  :newsweight, id: "news-weight", min: 1, max: 5
    text_area     :news_text
    check_box     :highlight
    file_field    :highlight_image

    # row do
    #   col(xs: 6) { datetime_field :updated_at, disabled: true }
    #   col(xs: 6) { datetime_field :created_at, disabled: true }
    # end

    if !book.cover_image.nil?
      sidebar do 
        label "cover_image"
      end
      sidebar do 
        image_tag book.cover_image.url.to_s, id: "cover_image"
      end
    end
    if !book.highlight_image.nil?
      sidebar do 
        label "highlight_image"
      end
      sidebar do 
        image_tag book.highlight_image.url.to_s, id: "highlight_image"
      end
    end
    sidebar do 
        link_to "View Book Page", "/book/"+book.book_id, :class=>"view-book"
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
  #   params.require(:book).require(:name, ...)
  # end
end
