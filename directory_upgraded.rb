#Let's define a new method to ask the user the names to put in our array
def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  students = []
  name = gets.chomp
  #start our while loop
  while !name.empty? do
    students << {name: name, cohort: :november}
    puts "Now we have #{students.count} students"
    name = gets.chomp
  end
  students
end
def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end

def print(students)
  students.each_with_index do |student, index|
    if (student[:name].chars[0] == "v" || student[:name].chars[0] == "V")
      puts "#{index + 1} #{student[:name]} (#{student[:cohort]} cohort)"
    end
  end
end
def print_footer(names)
  puts "Overall, we have #{names.count} great student(s)"
end
students = input_students
print_header
print(students)
print_footer(students)
