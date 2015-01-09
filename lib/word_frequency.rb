class String
  define_method(:word_frequency) do |findme|

    final_count = 0

    if (findme.length() > self.length())
      
    else
      
      split_input_array = self.split()
      
      if (split_input_array.include?(findme))
        
        split_input_array.each do |input_word|
     
          if(input_word == (findme))
          
            final_count = final_count + 1

          end
        end
      end
    end
    final_count  
  end
end
    