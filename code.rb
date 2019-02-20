voter_demographics=[
  {first_name: "Jon",last_name:"smith",age:25,income:50000, household_size: 1,gender: "Male", education: "college"},
  {first_name: "Jane",last_name:"Davies",age:30,income:60000, household_size:3 ,gender: "Female", education: "High school"},
  {first_name:"Sam",last_name:"Farelly",age:32,income:80000 , household_size:2 ,gender:"Unspecified" , education:"college" },
  {first_name: "Joan",last_name: "Favreau",age:35,income:65000 , household_size:4 ,gender:"Female" , education: "college"},
  {first_name: "Sam",last_name:"McNulty",age:38,income:63000, household_size: 3,gender:"Male" , education: "college"},
  {first_name: "Mark",last_name: "Minahan",age:48,income:78000, household_size: 5,gender: "Male", education: "High school"},
  {first_name:"Susan",last_name: "Umani",age:45,income:75000, household_size:2 ,gender: "Female", education: "college"},
  {first_name:"Bill",last_name: "Perault",age:24,income:45000,household_size: 1, gender: "Male", education: "did not complete high school"},
  {first_name: "Doug",last_name: "stamper",age:45,income:75000, household_size: 1,gender: "Male", education: "college"},
  {first_name: "Francis",last_name:"Underwood",age:52,income: 100000,household_size: 2, gender: "Male", education: "college"}

]
total_length=voter_demographics.length

#average age
i=0
age=0
voter_demographics.each do|num|
  age +=voter_demographics[i][:age]
  i+=1
end
puts "Average age: #{(age.to_f/total_length)}"

#Average income
final_income=0
voter_demographics.each do|num|
  final_income +=num[:income]

end
puts "Average Income : #{final_income.to_f/total_length}"

#Average Household size
initial_housesize=0
voter_demographics.each do|num|
  initial_housesize +=num[:household_size]
end
puts "Average Household Size: #{initial_housesize.to_f/total_length}"

#Female %
females=0
voter_demographics.each do |num|
  if num[:gender]==="Female"
    females+=1

  end
end
puts "Female % : #{(females.to_f/total_length)*100}"

#male %
males=0
voter_demographics.each do|num|
  if num[:gender]==="Male"
    males +=1
  end
end
puts "Male % : #{(males.to_f/total_length)*100}"

#unspecified gender
Unspecified_gender=100.0-(((males.to_f/total_length)*100)+((females.to_f/total_length)*100))
puts "Unspecified Gender : #{Unspecified_gender}"

#College %, High school %
college_final=0
highschool_final=0
voter_demographics.each do|num|
  if num[:education]==="college"
    college_final+=1

  elsif num[:education]==="High school"
    highschool_final+=1
  else
  end
end
puts "college % : #{(college_final.to_f/total_length)*100}"
puts "High School % : #{(highschool_final.to_f/total_length)*100}"

#didnot finish high school
didnot_finish_school= 100.0-(((college_final.to_f/total_length)*100)+((highschool_final.to_f/total_length)*100))
puts "did not finish high school %: #{didnot_finish_school}"
