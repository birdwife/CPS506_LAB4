defmodule Lab4 do
        def sumEven(list) do
		[head | tail] = list
		if (is_integer(hd list)) do
			if ((rem (hd list), 2) == 0) do
				sum = hd list
				sumEven(tail, sum)
			else
				sum = 0
				sumEven(tail, sum)
			end
		else
			sum = 0
			sumEven(tail, sum)
		end
	end
	def sumEven(list, sum)do
		lengthOfList = Enum.count(list)
		if (lengthOfList > 1) do
			[head | tail] = list
			if (is_integer(hd list)) do
				if ((rem (hd list), 2) == 0) do
					sum = sum + (hd list)
					sumEven(tail, sum)	
				else
					sumEven(tail, sum)
				end
			else
				sumEven(tail,sum)
			end
		else
			if (is_integer(hd list)) do
				if ((rem (hd list), 2) == 0) do
					sum = sum + (hd list)
				else
					sum
				end
			else
				sum
			end
		end
	end




        def sumNum(list) do
		[head | tail] = list
		sum = 0
		if (is_integer(hd list)) do
			sum = hd list
			sumNum(tail, sum)
		else
			sumNum(tail, sum)
		end
        end
	
	def sumNum(list, sum) do
		lengthOfList = Enum.count(list)
		if (lengthOfList > 1) do
			[head | tail] = list
			if (is_integer(hd list)) do
				sum = sum + (hd list)
				sumNum(tail, sum)
			else
				sumNum(tail, sum)
			end
		else
			if (is_integer(hd list)) do
				sum = sum + (hd list)
			else
				sum
			end
		end 
	end




        def tailFib(n) do
		tailFib(1,1,n,3)		
        end

	def tailFib(num1, num2, n, position) do
		if (n == position) do
			sum = num1 + num2
		else
			sum = num1 + num2
			num1 = num2
			num2 = sum
			position = position + 1
			tailFib(num1,num2,n,position)
		end
	end



end
