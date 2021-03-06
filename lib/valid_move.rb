# code your #valid_move? method here

def valid_move?(board, index)
  board_index = index - 1

  position_has_been_played = position_taken?(board, index)
  correct_index = valid_index?(index)

  if !position_has_been_played && correct_index
    true
  else
    false
  end
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.

def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    false
  else
    true
  end
end

def valid_index?(index)
  if index.between?(0,8)
    true
  else
    false
  end
end
