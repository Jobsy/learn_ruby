 
class Book
    # write your code here
        attr_reader :title
       
        def title=(book_title)
            
            new_title = []
            unchangingWords = ['the', 'a', 'an', 'and', 'in', 'of' ]
            book_title.split(' ').map {
            
                    |word|
               
                    if (unchangingWords.include?(word))
                        new_title << word
                        next
                    else
                      new_title << word.capitalize
                    end
            }
            
            new_title[0].capitalize!
            @title = new_title.join(' ')
        end
 end
