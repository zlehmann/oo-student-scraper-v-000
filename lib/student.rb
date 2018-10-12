class Student

  attr_accessor :name, :location, :twitter, :linkedin, :github, :blog, :profile_quote, :bio, :profile_url

  @@all = []

  def initialize(student_hash)
    student_hash.each {|key, value| self.send(("#{key}="), value)}

    @@all << self
  end

  def self.create_from_collection(students_array)
    students_array.each do |student|
      new_student = Student.new(student)
    end
  end

  def add_student_attributes(attributes_hash)
    #{:name, :location, :profile_url}
    attributes_hash.each {|key, value| self.send(("#{key}="), value)}
    return self
  end

  def self.all
    @@all
  end
end
