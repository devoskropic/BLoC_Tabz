part of 'home_view_bloc.dart';

abstract class HomeViewState extends Equatable {
  final int index;
  const HomeViewState({this.index = 0});

  @override
  List<Object> get props => [index];
}

class InitialState extends HomeViewState {
  final String? msg;
  const InitialState({this.msg, super.index = 0});

  @override
  List<Object> get props => [index];

  @override
  String toString() => 'InitialState';
}

class IndexChangedState extends HomeViewState {
  final String? note;
  const IndexChangedState({this.note, required super.index});

  @override
  List<Object> get props => [index];

  @override
  String toString() => 'IndexChangedState to: $index';
}
