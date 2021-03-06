module BookHelper
  
  def award_subject_count(subject_id)
    @subject_size = @books.where('subjects LIKE ?', "%subject_id: '"+subject_id+"'%").size 
  end
  def award_year_count(award_year)
    @year_size1 = @books.where('award_year = ?', award_year).size
    @year_size2 = @books.where('award_year2 = ?', award_year).size
    @year_size3 = @books.where('award_year3 = ?', award_year).size
    @year_size4 = @books.where('award_year4 = ?', award_year).size
    @year_size = @year_size1 + @year_size2 + @year_size3 + @year_size4
  end

  def get_isbn
    isbn = nil
    isbn = @formats.find do |format|
      break format["binding"]["ean"].tr("-", "") if ["NP", "IP"].include? format["binding"]["binding_status"]
    end
  end

end
