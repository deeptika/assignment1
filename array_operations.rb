#array operations

a=[1,4,9,16,25,36,49,64,81]
puts 'Array'
a.display

begin

	puts "\nARRAY OPERATIONS\n1.Add a value\n2.Find minimum element\n3.Find maximum element\n4.Find array sum\n5.Find average of array elements\n6.Search for an element\n7.Display array\n8.Delete an element at an index\n9.Delete an element\n10.Exit\nENTER YOUR CHOICE\n\n"
	
	choice = gets.chomp.to_i
       
	case choice

		when 1 then 
			puts "Enter the element to be inserted"
			elem = gets.chomp.to_i
			a << elem
			a.display

		when 2 then puts "\nMinimum element = "+a.min

		when 3 then puts "\nMaximum element = "+a.max

		when 4 then puts "\nSum of array elements = "+a.sum

		when 5 then puts "\nAverage of array elements = "+a.sum/a.count

		when 6 then 
			puts "Enter the element to be searched"
			el = gets.chomp.to_i
			if(a.find_index(el)!=nil)
				puts "Element found at position "+a.find_index(el).to_s
			else
				puts "Element not found"
			end

		when 7 then a.display

		when 8 then 
			puts "Enter the index of the element to be deleted"
			index = gets.chomp.to_i
			a.delete_at index
			a.display

		when 9 then
			puts "Enter the element to be deleted"
			del = gets.chomp
			if(a.find_index(del)!=nil)
				index = a.find_index(del)
				a.delete_at index
			else
				puts "Element not found"
			end
			a.display

		else break
	end

	puts "\nDo you want to go again? (y/n)"
	goagain = gets.chomp

end until goagain=='n'
