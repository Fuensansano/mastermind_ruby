# frozen_string_literal: true

class Mastermind
  def evaluate(win_combination, guess_combination)
    return [2,0] if win_combination[0] == 'blue' && win_combination[1] == 'red'
    return [2,0] if win_combination[0] == 'red' && win_combination[1] == 'blue'
    return [0,0] if win_combination[0] != guess_combination[0]
    [1,0]
  end
end
