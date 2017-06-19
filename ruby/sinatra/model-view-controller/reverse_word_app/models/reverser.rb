class Reverser
  attr_reader :user_input

  def initialize(user_input)
    @user_input = user_input
  end

  def reverse_with_punctuation(word)
    word_array = word.scan(/[\w'-]+|[.,!?]+/)
    word_array[0].reverse + word_array[1]
  end

  def reverse_word(word)
    if word[0].upcase == word[0] && ["!", ".", ",", ";", "-", "--"].include?(word[-1])
      reverse_with_punctuation(word).capitalize
    elsif ["!", ".", ",", ";", "-", "--"].include?(word[-1])
      reverse_with_punctuation(word)
    elsif word[0].upcase == word[0]
      word.reverse.capitalize
    else
      word.reverse
    end
  end

  def reverse
    @user_input.split(" ").map { |word| reverse_word(word) }.join(" ")
  end
end
