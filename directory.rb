#Let's put all students into an Array
students = [
    "Dr. Hannibal Lecter",
    "Darth Vader",
    "Nurse Ratched",
    "Michael Corleone",
    "Alex DeLarge",
    "The Wicked Witch of the West",
    "Terminator",
    "Freddy Krueger",
    "The Joker",
    "Joffrey Baratheon",
    "Norman Bates"
]
puts "The students of Villains Academy"
puts "-------------"
#puts each student from the students array
students.each do |student|
  puts student
end
#finally we print the total number of students
puts "Overall, we have " + students.count.to_s + " great students"
