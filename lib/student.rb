# Remember, you can access your database connection anywhere in this class
#  with DB[:conn]

class Student

  attr_accessor :name, :grade
  attr_reader :id

  def self.create_table
    sql = "CREATE TABLE IF NOT EXISTS students (id INTEGER PRIMARY KEY, name TEXT, grade TEXT)"
    DB[:conn].execute(sql)
  end

  def self.drop_table

  end

  def self.creates

  end

  def save

  end
end
