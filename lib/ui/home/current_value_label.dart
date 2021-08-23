import 'package:flutter/material.dart';

class CurrentValueLabel extends StatelessWidget {
  const CurrentValueLabel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('CurrentValueLabel | build');

    return Text(
      'Current Value',
      style: Theme.of(context).textTheme.headline3,
    );
  }
}
