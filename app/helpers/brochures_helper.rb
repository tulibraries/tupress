module BrochuresHelper
  def get_subjects
    @subjects = Subject.all
    @all_subjects = Array.new

    @subjects.each |subject| do 
      subject = subject.subject.zip(subject.subject_id)
      @all_subjects.push(subject)
    end

    @all_subjects
  end
end
