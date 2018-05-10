Trestle.resource(:books) do
  require 'carrierwave/processing/mini_magick'

  menu do
    item :books, icon: "fa fa-star"
  end

  collection do
    Book.order(title: :asc)
  end

  search do |q|
    collection.where("title LIKE ?", "%#{q}%").or(collection.where('author_byline LIKE ?', "%#{q}%"))
  end

  # Customize the table columns shown on the index view.
  #
  table do |book|
    # if :excerpt_text.size > 1
    #   binding.pry÷
    #   column :excerpt_text
    column :book_id
    column :title do |booktitle|
      truncate(booktitle.title, omision: "...", length: 300)
    end
    column :author_byline
    actions
  # end
  end

  #comment just to get this file into git, or else the jenkins job is stuck again

  # Customize the form fields shown on the new/edit views.
  #
  form do |book|

    text_field :title, :disabled => true
    text_field :sort_title, :disabled => true
    if !:author.nil?
      text_field :author_byline, :disabled => true
    end
    select(:status, 
        [
          ['In Print', 'IP'],
          ['NP', 'NP'],
          ['OS', 'OS'],
          ['X', 'X'],
          ['...', '...']
        ]
      )
    file_field    :cover_image, accept: 'image/png,image/jpeg,image/gif,image/jpg'
    check_box     :remove_cover_image
    text_field    :excerpt_text
    file_field    :excerpt
    check_box     :remove_excerpt
    text_field    :catalog
    check_box     :hot
    number_field  :hotweight, id: "hot-weight", min: 1, max: 4
    check_box     :news
    number_field  :newsweight, id: "news-weight", min: 1, max: 5
    text_area     :news_text
    text_field    :award_year
    text_field    :award
    text_field    :award_year2
    text_field    :award2
    text_field    :award_year3
    text_field    :award3
    text_field    :award_year4
    text_field    :award4

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
    if !book.excerpt.file.nil?
      sidebar do 
        label "excerpt"
      end
      sidebar do 
        link_to book.excerpt.file.identifier, book.excerpt.url
      end
    end
  
    sidebar do 
        link_to "View Book Page", "/book/"+book.book_id, :class=>"view-book", :style=>"display:block;"
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
