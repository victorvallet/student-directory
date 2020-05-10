def input_students
  puts "Please enter the names of the students."
  puts "Please enter the name of cohort."
  puts "To finish, just hit return three times"

  students = []

  name = gets.delete_suffix("\n")
  cohort = gets.delete_suffix("\n")

  while !name.empty? || !cohort.empty? do
    month = ["january", "february", "march", "april", "may", "june", "july",
      "august", "september", "october", "november", "december"]

    name = "TBC" if name.empty?
    cohort = "november" if cohort.empty? || !month.include?(cohort)

    students << {name: name, cohort: cohort.to_sym, hobbies: :crafts, country_of_birth: :galaxy}
    if students.count == 1
      puts "Now we have #{students.count} student"
    else
      puts "Now we have #{students.count} students"
    end

    name = gets.delete_suffix("\n")
    cohort = gets.delete_suffix("\n")
  end

  students
end
def print_header
  puts "The students of Villains Academy".center(33)
  puts "-------------".center(30)
end
def print(students)
  cohort_list = {}

  students.each do |student|
    cohort = student[:cohort]
    name = student[:name]

    cohort_list[cohort] = [] if cohort_list[cohort] == nil

    cohort_list[cohort] << name
  end

  cohort_list.each do |cohort, name|
    puts "#{cohort} cohort: #{name.join(", ")}"
  end

end
def print_footer(students)
  puts "Overall, we have #{students.count} great students".center(33)
end

students = input_students
# nothing happens until we call the methods
if students.count > 0
  print_header
  print(students)
  print_footer(students)
else
  puts "There is no student found."
end