import 'package:flutter/cupertino.dart';

const playerOneSymbol = 'O';
const playerTwoSymbol = 'X';

enum CurrentPlayer { playerOne, playerTwo }

class HomeViewModel with ChangeNotifier {
  CurrentPlayer _currentPlayer = CurrentPlayer.playerOne;

  List<List<String>> _board = [
    ['-', '-', '-'],
    ['-', '-', '-'],
    ['-', '-', '-']
  ];

  List<List<String>> get board => _board;

  void makeMove(int i, int j, CurrentPlayer currentPlayer) {
    switch (currentPlayer) {
      case CurrentPlayer.playerOne:
        _board[i][j] = playerOneSymbol;
        break;
      case CurrentPlayer.playerTwo:
        _board[i][j] = playerTwoSymbol;
        break;
    }

    notifyListeners();
  }
}
