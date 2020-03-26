require 'pry'
class PigLatinizer

def piglatinize(word)
  if %w(a e i o u A E I O U).include?(word[0])
    piglatinized = word + 'way'
  else
    first_vowel = word[/[aeiouAEIOU]/]
    char = word.split(/[aeiouAEIOU]/,2)
    piglatinized = first_vowel+char[1]+char[0]+'ay'
  end
end

end
