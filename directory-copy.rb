#let's put all students into an array
students = [
  {name: "Dr. Hannibal Lecter", cohort: :november, birth_country: :iraq},
  {name: "Darth Vader", cohort: :november, birth_country: :iraq},
  {name: "Nurse Ratched", cohort: :november, birth_country: :iraq},
  {name: "Michael Corleone", cohort: :november, birth_country: :iraq},
  {name: "Alex DeLarge", cohort: :november, birth_country: :iraq},
  {name: "The Wicked Witch of the West", cohort: :november, birth_country: :iraq},
  {name: "Terminator", cohort: :november, birth_country: :iraq},
  {name: "Freddy Krueger", cohort: :november, birth_country: :iraq},
  {name: "The Joker", cohort: :november, birth_country: :iraq},
  {name: "Joffrey Baratheon", cohort: :november, birth_country: :Iraq},
  {name: "Norman Bates", cohort: :november, birth_country: :iraq}
]

def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  # create an empty array
  students = []
  # get the frst name
  name = gets.chomp
  # while the name is not empty, repeat this code
  while !name.empty? do
    # add the student hash to the array
    students << { name: name, cohort: :november, birth_country: :iraq }
    puts "Now we have #{students.count} students"
    # get another name from the user
    name = gets.chomp
  end
  # return the array of students
  students
end

def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end

def print_students(students, letter, num_chars)
  
  index = 0
  while index < students.length
    name = students[index][:name]
    cohort = students[index][:cohort]
    birth_country = students[index][:birth_country]
    if name[0].downcase == letter && name.length < num_chars
      print_name(index, name, cohort, birth_country)
    end
  index += 1
  end
end

def print_name(index, name, cohort, birth_country)
  puts "#{index}. #{name}, #{cohort} cohort, from #{birth_country.capitalize}"
end

def print_footer(names)
  puts "Overall, we have #{names.count} great  students"
end

#nothing happens until we call the methods
students = input_students
print_header
print_students(students, "s", 12)
print_footer(students)