require 'pry'
class PigLatinizer

def piglatinize(word)
  if %w(a e i o u).include?(word[0])
    piglatinized = word + 'way'
  else
    first_vowel = word[/[aeiou]/]
    char = word.split(/[aeiou]/,2)
    piglatinized = "#{char[1]}+#{char[0]}+ay"
  end
end

end
