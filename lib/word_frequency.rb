class String
  define_method(:scrabble) do |findme|

    final_count = 0

    if(findme.length() > self.length())

      final_count

    else

      input_string = self.split()

      if !(input_string.include?(findme))

        final_count

      else

        final_count.+(1)

        final_count

  end
end
