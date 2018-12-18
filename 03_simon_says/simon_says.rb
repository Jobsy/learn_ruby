#write your code here
def echo(something)
    return "#{something}"
end

def shout(something)
    return "#{something}".upcase
end

def repeat(words, repeatValue = 2)
    return ([words] * repeatValue).join(" ")
end

def start_of_word(word, position)
    return word[0..position-1]
end

def first_word(word)
    return word.split(" ")[0]
end


def titleize(words)
    splitted_words = words.split(" ").collect {
        |word|
        if (word === "the" || word === "over" || word === "and")
            word
        else
            word.capitalize
        end
    }
    splitted_words.first.capitalize!
    splitted_words.join(" ")
end
