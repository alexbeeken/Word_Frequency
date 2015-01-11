class String
  define_method(:highlight) do |input_findme|

    output_string = ""
    findme = input_findme.downcase()
    if !(findme.length() > self.length())
      self.split().each() do |input_word|
        word = input_word.downcase()
        if (((word[0].match(/^[[:alpha:]]$/)) == nil))
          word[0] = ""
        end
        if (word.length > 1)
          last_char_index = (word.length() - 1)
          if (((word[last_char_index].match(/^[[:alpha:]]$/)) == nil))
            word[last_char_index] = ""
          end
        end
        if (word == findme)
          output_string.concat("<mark>#{input_word}</mark>")
        else
          output_string.concat(" #{input_word}")
        end
      end
    end
    output_string
  end
end
