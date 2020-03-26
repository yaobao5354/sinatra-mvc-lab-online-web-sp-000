require 'pry'
class PigLatinizer

def piglatinize(sentence)
  words_array = sentence.split(" ")
  if words_array.length == 1
    word = words_array.pop
    if %w(a e i o u A E I O U).include?(word[0])
      piglatinized = word + 'way'
    else
      first_vowel = word[/[aeiouAEIOU]/]
      char = word.split(/[aeiouAEIOU]/,2)
      piglatinized = first_vowel+char[1]+char[0]+'ay'
    end
  else
    words_array.collect do |word|
      binding.pry
      if %w(a e i o u A E I O U).include?(word[0])
        piglatinized = word + 'way'
        binding.pry
      else
        first_vowel = word[/[aeiouAEIOU]/]
        char = word.split(/[aeiouAEIOU]/,2)
        piglatinized = first_vowel+char[1]+char[0]+'ay'
      end
    end
    binding.pry
  end

end

end
