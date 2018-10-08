#write your code here
def echo(word)
	word
end

def shout(word)
	word.upcase
end


=begin
def repeat(str, count = 2)
	result = str
	for _ in 0...count-1
		result += " " + str
	end
	return result
end
=end



def repeat(word, nb = 2)
	result = word
	(nb-1).times do 
		result += (" "+word)
	end
	return result
end 

def start_of_word(word, nb = 2)
	result = ""
	(nb).times do |i|
		result += word[i]	
	end
	return result
end

def first_word(word)
	word.split.first
end


def titleize(word)
    stop_words = %w{the and}
    word.split(' ').map.with_index do |word, index|
        unless stop_words.include?(word) == true && index > 0
            word.capitalize
        else
            word
        end
    end
    .join(' ')
end