class String
  define_method(:word_frequency) do |findme|

    final_count = 0

    if !(findme.length() > self.length())

      input_string = self.split()

      if (input_string.include?(findme))

          final_count.+(1)

          final_count

      end
    
    end
      
    final_count  
      
  end
end

    