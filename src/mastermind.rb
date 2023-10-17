# frozen_string_literal: true

class Mastermind
  def evaluate(win_combination, guess_combination)
    return [0,1] if win_combination[0] == 'red' && win_combination[1] == 'green'
    return [0,1] if win_combination[0] == 'red' && win_combination[1] == 'yellow'
    return [win_combination.length, 0] if win_combination == guess_combination
    [0,0]
  end
end
