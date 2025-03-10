class PigLatinizer
  def piglatinize(string)
    string.split(" ").map{|word| piglatinize_word(word)}.join(" ")
end
  def piglatinize_word(word)
    first = word[0].downcase
    if["a","e","i","o","u"].include?(first)
      "#{word}way"
    else
      consonants =[]
      consonants << word[0]
      
      if !["a","e","i","o","u"].include? (word[1])
        consonants << word[1]
        
        if  !["a","e","i","o","u"].include? (word[2]) 
          consonants << word[2]
       
        end
      end
      "#{word[consonants.length..-1] + consonants.join + "ay"}"
    end
  end
end
    