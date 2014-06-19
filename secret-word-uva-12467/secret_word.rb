class SecretWord

  def guess_secret_word input
    posible_answers = Array.new
    var = 1
    while var <= input.length
      current_substring = input[0, var]
      current_substring.reverse!
      if input[current_substring] != nil
        posible_answers.push(current_substring)
      end
      var += 1
    end
    selected_substring = nil
    posible_answers.each do |substring|
      if selected_substring != nil
        if substring.length > selected_substring.length
          selected_substring = substring
        end
      else
        selected_substring = substring
      end
    end
    selected_substring
  end

end