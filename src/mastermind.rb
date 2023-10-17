# frozen_string_literal: true

class Mastermind
  def evaluate(win_combination, guess_combination)
    return [win_combination.length, 0] if win_combination == guess_combination

    count_right_color_and_right_position = extract_number_rigth_colors_and_rigth_position(guess_combination, win_combination)
    count_right_color_distinct_position = extract_number_rigth_color_in_different_position(win_combination, guess_combination)

    [count_right_color_and_right_position,count_right_color_distinct_position]
  end

  private

  def extract_number_rigth_color_in_different_position(win_combination, guess_combination)
    set_win_combination = Set.new(win_combination)
    set_guess_combination = Set.new(guess_combination)
    (set_win_combination & set_guess_combination).count
  end

  def extract_number_rigth_colors_and_rigth_position(guess_combination, win_combination)
    win_combination.zip(guess_combination).count { |win_element, guess_element| win_element == guess_element }
  end
end
