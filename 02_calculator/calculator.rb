#write your code here
def add (x, y)
	x + y
end

def substract (x, y)
	x - y
end

def sum(array)
	result = 0
	array.each do |elem|
		result += elem
	end
	return result
end

def multiply(x, y)
	x * y
end

def power(x, y)
	x ** y
end

def factorial(x)
	result = 1
	i=0
	(x-1).times do
		result = result*(x-i)
		i = i + 1
	end
	return result
end

#4! = ((4*3)*2)*1 = 1*2*3*4

#factorial(3)