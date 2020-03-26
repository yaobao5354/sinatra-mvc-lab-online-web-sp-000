require 'pry'
class PigLatinizer

def piglatinize(word)
  if %w(a e i o u).include?(word[0])
    piglatinized = word + 'way'
  else
    binding.pry
    char = word.split(/[aeiou]/,2)
  end
end

end
