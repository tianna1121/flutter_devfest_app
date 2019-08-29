import 'package:flutter/material.dart';
import 'package:flutter_devfest/home/home_bloc.dart';
import 'package:flutter_devfest/universal/dev_scaffold.dart';
import 'index.dart';

class HomePage extends StatelessWidget {
  static const String routeName = "/home";

  @override
  Widget build(BuildContext context) {
    var _homeBloc = HomeBloc();
    return DevScaffold(
        title: "Home Page",
        body: HomeScreen(
          homeBloc: _homeBloc,
        ));
  }
}
