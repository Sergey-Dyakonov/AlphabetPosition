ALPHABET = ('A'..'Z').to_a

private def get_alphabet_pos(symbol)
  if ALPHABET.include?(symbol)
    ALPHABET.index(symbol) + 1
  end
end

public def get_positions(inp)
  symbols = inp.upcase.split("")
  symbols = symbols.map { |symbol| get_alphabet_pos(symbol) }
  symbols.compact.join(" ").to_s
end

print "Enter sentence:"
puts "Res: #{get_positions(gets.chomp)}"