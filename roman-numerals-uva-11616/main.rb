require_relative 'roman_numerals'

#############################################
# Main program for Roman Numerals Challenge #
#############################################

# Open input file
inputFile = File.new("roman_numerals_input.txt", "r")

# Create output file
outputFile = File.new("roman_numerals_output.txt", "w")

# Create the magic
rn = RomanNumerals.new

# Create result array
results = Array.new


while( line = inputFile.gets )
  
  puts "Input line: ".concat( line )

  outputLine = rn.convert( line.chomp )
  outputFile.puts( outputLine )

  results.push( outputLine )

end

outputFile.close

results.each do | r |
  puts "Output line: ".concat( r )
end