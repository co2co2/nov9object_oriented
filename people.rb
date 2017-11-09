class Person
  def initialize(name)
    @name = name
  end

  def name
    @name
  end

  def greeting
    "Hi, my name is #{name}"
  end
end


class Student < Person

  # def initialize(first_name, last_name)
  # super(first_name , last_name)
  #   @knowledge_level = 0
  # end
  # def knowledge_level
  #   @knowledge_level
  # end
  def learn
    "I get it!"
  end

#
#   def slack
#     @knowledge_level -= 1 if knowledge_level > 0
#   end
end

class Instructor < Person

  def teach
    "Everything in Ruby is an Object"
  end
  #
  # def full_name
  #   "Prof. #{ super }"
  # end
end
nadia = Instructor.new("Nadia")
puts nadia.greeting
chris = Student.new("Chris")
puts  chris.greeting
puts nadia.teach
puts chris.teach #undefined method `teach' for #<Student:0x00007fba81925020 @name="Chris"> 
