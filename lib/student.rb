# Remember, you can access your database connection anywhere in this class
#  with DB[:conn]

class Student

  attr_accessor :name, :grade
  attr_reader :id

  def initialize(name, grade)
    @name = name
    @grade = grade
  end

  def self.create_table
    sql = "CREATE TABLE IF NOT EXISTS students (id INTEGER PRIMARY KEY, name TEXT, grade TEXT)"
    DB[:conn].execute(sql)
  end

  def self.drop_table
    sql = "DROP TABLE students"
    DB[:conn].execute(sql)
  end

  def self.create(name:, grade:)
    student = Student.new(name, grade)
    student.save
    student
  end

  def save
    sql = "INSERT INTO students (name, grade)
            VALUES (?, ?)"
    DB[:conn].execute(sql, self.name, self.grade)
  end
end
