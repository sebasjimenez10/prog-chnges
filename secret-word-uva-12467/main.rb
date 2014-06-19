require_relative 'secret_word'

# Input output files
inputFile = File.new("secret_word_input.txt", "r")
outputFile = File.new("secret_word_output.txt", "w")

total_words_number = Integer(inputFile.gets.chomp)
@secret_word = SecretWord.new

while total_words_number > 0
  word = inputFile.gets.chomp
  if word != nil
    secret_word = @secret_word.guess_secret_word(word)
    puts "Secrete word for: ".concat(word).concat(" is: ").concat(secret_word)
    outputFile.puts(secret_word)
    total_words_number -= 1
  end
end

outputFile.close