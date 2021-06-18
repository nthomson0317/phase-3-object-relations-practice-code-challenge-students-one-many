class Cohort < ActiveRecord::Base
  has_many :students

  def add_student(name, age)
    Student.create(cohort: self, name: name, age: age)
    
  end

  def average_age
    a = self.students.pluck(:age)
    a.sum(0.0) / a.size
  end

  def total_students
    self.students.length
  end

  def Cohort.biggest
    Cohort.all.max_by {|cohort| cohort.students.length}
  end

  def Cohort.sort_by_mod
    Cohort.all.sort_by { |cohort| cohort.current_mod }
  end
end