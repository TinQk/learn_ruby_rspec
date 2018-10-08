def echo(word)
  word
end

def shout(word)
  word.upcase
end

def repeat(word, nb=2)
  result=word
  (nb-1).times do
    result = result + " #{word}"
  end
  return result
end

def start_of_word(word, nb_letter = 1)
  result = word[0]
  (nb_letter -1).times do |i|
    result += word[i+1]
  end
  return result
end


def first_word(sentence)
  #sinon : word.split.first
  word = ""
  sentence.length.times do |i|
    if sentence[i] == " "
      return word
    end
    word += sentence[i]
  end
  return word
end


def titleize(sentence)
  new_sentence = ""
  #creation d'un array avec les mots séparés
  sentence_array = sentence.downcase.split(" ")
  sentence_array[0] = sentence_array[0].capitalize
  i=0
  sentence_array.each do |elem|
    if (elem != "the" && elem != "and")
      sentence_array[i] = elem.capitalize
    end
    i+=1
  end
  return sentence_array.join(" ")
end
