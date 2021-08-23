import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management/ui/home/home_viewmodel.dart';

import 'ui/home/home_view.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: HomeView(),
      home: ChangeNotifierProvider<HomeViewModel>(
        create: (_) => HomeViewModel(),
        child: HomeView(),
      ),
    );
  }
}
