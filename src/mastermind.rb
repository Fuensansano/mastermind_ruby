# frozen_string_literal: true

class Mastermind
  def evaluate(win_combination, guess_combination)
    return [win_combination.length, 0] if win_combination == guess_combination

    count_right_color_and_right_position = win_combination.zip(guess_combination).count { |win_element, guess_element| win_element == guess_element }

    set_win_combination = Set.new(win_combination)
    set_guess_combination = Set.new(guess_combination)

    count_right_color_distinct_position = (set_win_combination & set_guess_combination).count

    [count_right_color_and_right_position,count_right_color_distinct_position]
  end
end
