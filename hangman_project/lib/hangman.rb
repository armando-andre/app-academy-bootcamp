class Hangman
  DICTIONARY = ["cat", "dog", "bootcamp", "pizza"]

  def self.random_word
    DICTIONARY.sample
  end

  def initialize
    @secret_word = Hangman.random_word
    @guess_word = Array.new(@secret_word.length, "_")
    @attempted_chars = []
    @remaining_incorrect_guesses = 5
  end

  def guess_word
    @guess_word
  end

  def attempted_chars
    @attempted_chars
  end

  def remaining_incorrect_guesses
    @remaining_incorrect_guesses
  end

  def already_attempted?(char)
    if @attempted_chars.include?(char)
      true
    else
      false
    end
  end

  def get_matching_indices(char)
    emptyArr = []

    @secret_word.each_char.with_index do |ele, i|
      emptyArr << i if @secret_word.include?(char) && ele === char
    end

    emptyArr
  end

  def fill_indices(char, arr)
    @secret_word.each_char.with_index do |ele, i|
      if char === ele
        @guess_word[i] = ele
      end
    end

    @guess_word
  end

  def try_guess(char)
    if self.already_attempted?(char)
      p 'that has already been attempted'
      return false
    end

    @attempted_chars << char

    matches = self.get_matching_indices(char)
    self.fill_indices(char, matches)
    @remaining_incorrect_guesses -= 1 if matches.empty?

    true
  end

  def ask_user_for_guess
    userInput = gets.chomp
    p 'Enter a char: '
    try_guess(userInput)
  end

  def win?
    if @guess_word == @secret_word.split("")
      p "WIN"
      return true
    end
    p @guess_word === @secret_word
  end

  def lose?
    p 'LOSE'
    if @remaining_incorrect_guesses === 0
      return true
    end

    false
  end

  def game_over?
    if lose? || win?
      p @secret_word
      return true
    end

    false
  end
end

p Hangman.new.game_over?