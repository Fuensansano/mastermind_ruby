# frozen_string_literal: true

class Mastermind
  def evaluate(win_combination, guess_combination)
    return [win_combination.length, 0] if win_combination == guess_combination
    [0,0]
  end
end
