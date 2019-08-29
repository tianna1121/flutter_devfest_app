import 'index.dart';
import 'package:meta/meta.dart';

@immutable
abstract class HomeEvent {
  Future<HomeState> applyAsync(
      {HomeState currentState, HomeBloc block, HomeBloc bloc});
}

class LoadHomeEvent extends HomeEvent {
  @override
  String toSting() => "LoadHomeEvent";

  @override
  Future<HomeState> applyAsync(
      {HomeState currentState, HomeBloc block, HomeBloc bloc}) async {
    try {
      await Future.delayed(Duration(seconds: 1));
      return InHomeState();
    } catch (_, stackTrace) {
      print("$_ $stackTrace");
      return ErrorHomeState(_?.toString());
    }
  }
}
