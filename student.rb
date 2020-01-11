
class Student

	def initialize(rollno = 0, name = "NIL", state = "NIL", branch ="NIL", cgpa = 0)
		@rollno = rollno
		@name = name
		@state = state
		@branch = branch
		@cgpa = cgpa
	end

	def display()
		puts "\nRoll Number : #{@rollno}\nName : #{@name}\nState : #{@state}\nBranch : #{@branch}\nCGPA : #{@cgpa}"
	end

	def get_state()
		return @state
	end

	def get_branch()
		return @branch
	end

	def get_roll_no()
		return @rollno
	end

	def get_name()
		return @name
	end
end

arr = []

begin
	puts "\nSTUDENT\n1.Add new student\n2.Display all students\n3.Display students by branch\n4.Display students by state\n5.Search by roll number\n6.Search by part of name\n7.Delete by roll number\n8.Count students by state\n9.Count students by branch\n10.Exit\nENTER YOUR CHOICE\n"

	choice = gets.chomp.to_i

	case choice

		when 1 then
			puts "\nEnter roll number, name, state, branch and CGPA"
			rollno = gets.chomp.to_i
			name = gets.chomp
			state = gets.chomp
			branch = gets.chomp
			cgpa = gets.chomp.to_i
			arr << Student.new(rollno,name,state,branch,cgpa)
			puts "\nStudent added"

		when 2 then
			puts "\nSTUDENTS\n"
			arr.each{|s| s.display}

		when 3 then
			puts "\nEnter branch"
			branch = gets.chomp
			puts "\nSTUDENTS BY BRANCH\n"
			arr.each{|s|	s.display if s.get_branch == branch}

		when 4 then
			puts "\nEnter state"
			state = gets.chomp
			puts "\nSTUDENTS BY STATE\n"
			arr.each{|s|	s.display if s.get_state == state}

		when 5 then
			puts "\nEnter roll number"
			rollno = gets.chomp.to_i
			arr.each {|s|	s.display if s.get_roll_no == rollno}

		when 6 then
			puts "\nEnter name/part of name"
			name = gets.chomp
			arr.each{|s|	s.display if s.get_name.include? name}
		
		when 7 then
			puts "\nEnter roll number to be deleted"
			rollno = gets.chomp.to_i
			for s in arr
				if s.get_roll_no == rollno
					arr.delete(s)
				end
			end
			puts "\nDeleted\n"
			

		when 8 then
			puts "\nEnter state"
			state = gets.chomp
			puts "\nNo. of students:\n"
			count = 0
			arr.each{|s|	count+=1 if s.get_state == state}
			puts count

		when 9 then
			puts "\nEnter branch"
			branch = gets.chomp
			puts "\nNo. of students:\n"
			count = 0
			arr.each{|s|	count+=1 if s.get_branch == branch}
			puts count
		
		else	break
	end

	puts "\nWould you like to go again? (y/n)"
	goagain = gets.chomp

end until goagain == 'n'
