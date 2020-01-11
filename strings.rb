arr=[]

begin

	puts "\nSTRING ARRAY OPERATIONS\n1.Add email id\n2.Display all emails\n3.Display .edu emails\n4.Search for an email id\n5.Delete email id\n6.Display all unique domains\n7.Count the number of email ids in each domain\n8.Exit\nENTER YOUR CHOICE"

	choice = gets.chomp.to_i

	case choice

		when 1 then
			puts "\nEnter email id"
			newid = gets.chomp
			arr << newid
			puts "\nId added"

		when 2 then 
			puts "\nEmail ids"
			arr.display

		when 3 then
			edu = arr.select{|id| id.include? ".edu"}
			edu.display

		when 4 then
			puts "\nEnter the email to be searched"
			el = gets.chomp
			if(arr.find_index(el)!=nil)
				puts "\nEmail found at position "+arr.find_index(el).to_s
			else
				puts "\nElement not found"
			end

		when 5 then
			puts "\nEnter the email id to be deleted"
			del = gets.chomp
			if(arr.find_index(del)!=nil)
				index = arr.find_index(del)
				arr.delete_at index
			else
				puts "\nElement not found"
			end

		when 6 then
			r = []
			for a in arr
				r << a[-3 .. -1]
			end
			r.uniq!
			r.display

		when 7 then
			r = []
			for a in arr
				r << a[-3 .. -1]
			end
			counts = Hash.new(0)
			r.each{ |name| counts[name]+=1 }
			puts counts

		else break

	end

	puts "\nWould you like to try again? (y/n)"
	goagain = gets.chomp

end until goagain == 'n'

	
