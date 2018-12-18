#write your code here

def translate(str1) 
	
	vowels = ['a', 'e', 'i', 'o']#except for 'u' that may pass as phoneme
	newWord = []
	newString = str1.split(' ')

	newString.map {
        
        |word|
		wordArr = word.split('')
        
		for i in wordArr
            if (vowels.include?(wordArr[0])) then
				result = wordArr.join('').concat('ay')
                newWord << result
                break
			
			else 
                if (!vowels.include?(i)) then
                	next
				else 
					str2 = word[0...wordArr.index(i)]
					str3 = word[wordArr.index(i)..-1]
					result = str3.concat(str2, 'ay')
                    newWord << result
                    break
                end
            end
		end
		
	}

	return newWord.join(' ')

end
