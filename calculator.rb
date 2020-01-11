#simple calculator

begin

	puts "\nCALCULATOR\n\n1.Addition\n2.Subtraction\n3.Multiplication\n4.Division\nENTER YOUR CHOICE\t"
	choice=gets.chomp.to_i

	puts "\nEnter first operand"
	a=gets.chomp.to_i

	puts "\nEnter second operand"
	b=gets.chomp.to_i

	case choice
		when 1 then puts "\nSum = #{a+b}"
		when 2 then puts "\nDifference = #{a-b}"
		when 3 then puts "\nProduct = #{a*b}"
		when 4 then puts "\nQuotient = #{a/b}"
		else puts "Invalid option"
	end

	puts "Would you like to try again? (y/n)"
	goagain=gets.chomp

end until goagain=='n'
#end while goagain=='y'
