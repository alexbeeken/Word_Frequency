class String
  define_method(:word_frequency) do |input_findme|

    final_count = 0

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

          final_count = final_count + 1

        end

      end

    end

    final_count

  end

end
