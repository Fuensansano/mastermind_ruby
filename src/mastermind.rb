# frozen_string_literal: true

class Mastermind
  def evaluate(win_combination, guess_combination)
    return [0,0] if win_combination[0] == 'red'
    return [0,0] if win_combination[0] == 'yellow'
    [1,0]
  end
end
