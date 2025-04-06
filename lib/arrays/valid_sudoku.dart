///Determine if a 9 x 9 Sudoku board is valid. Only the filled cells need to be validated according to the following rules:
///
/// Each row must contain the digits 1-9 without repetition.
/// Each column must contain the digits 1-9 without repetition.
/// Each of the nine 3 x 3 sub-boxes of the grid must contain the digits 1-9 without repetition.
/// Note:
///
/// A Sudoku board (partially filled) could be valid but is not necessarily solvable.
/// Only the filled cells need to be validated according to the mentioned rules.
///
/// https://leetcode.com/problems/valid-sudoku
final class ValidSudoku {
  bool call(List<List<String>> board) {
    final rows = _getMatrix();
    final columns = _getMatrix();
    final boxes = _getMatrix();

    for (int r = 0; r < board.length; r++) {
      for (int c = 0; c < board[r].length; c++) {
        if (board[r][c] == '.') continue;

        final current = int.parse(board[r][c]) - 1;

        if (rows[r][current]) return false;
        rows[r][current] = true;

        if (columns[r][current]) return false;
        columns[r][current] = true;

        final boxIndex = r ~/ 3 * 3 + c ~/ 3;
        if (boxes[boxIndex][current]) return false;
        boxes[boxIndex][current] = true;
      }
    }

    return true;
  }

  List<List<bool>> _getMatrix() => List.generate(
      9, (_) => List<bool>.generate(9, (_) => false, growable: false),
      growable: false);
}
