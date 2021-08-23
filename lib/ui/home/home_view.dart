import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'home_viewmodel.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final homeViewModel = Provider.of<HomeViewModel>(context, listen: false);
    print('HomeView | build');

    return Scaffold(
      appBar: AppBar(
        title: Text('Tic Tac Toe'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Consumer<HomeViewModel>(
                builder: (context, model, child) => ListView.builder(
                  shrinkWrap: true,
                  itemExtent: 100.0,
                  itemCount: model.board.length,
                  itemBuilder: (context, i) => ListView.builder(
                    shrinkWrap: true,
                    itemExtent: MediaQuery.of(context).size.width / 3.3,
                    scrollDirection: Axis.horizontal,
                    itemCount: model.board[i].length,
                    itemBuilder: (context, j) => InkWell(
                      onTap: () {
                        model.makeMove(i, j, CurrentPlayer.playerOne);
                      },
                      child: Container(
                        padding: const EdgeInsets.all(24.0),
                        decoration: BoxDecoration(
                          border: Border.all(),
                        ),
                        child: Center(
                          child: Text(
                            model.board[i][j],
                            style: Theme.of(context).textTheme.headline4,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 16.0),
              Row(
                children: [
                  Expanded(
                    child: PlayerOneScore(),
                  ),
                  Expanded(
                    child: PlayerTwoScore(),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class PlayerOneScore extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Player: O',
        ),
        const SizedBox(height: 16.0),
        Text(
          'Current Score: 0',
        ),
      ],
    );
  }
}

class PlayerTwoScore extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Player: X',
        ),
        const SizedBox(height: 16.0),
        Text(
          'Current Score: 0',
        ),
      ],
    );
  }
}
