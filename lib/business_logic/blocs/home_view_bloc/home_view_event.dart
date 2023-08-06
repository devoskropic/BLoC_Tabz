part of 'home_view_bloc.dart';

// BottomNavbar load
abstract class HomeViewEvent extends Equatable {
  const HomeViewEvent();

  @override
  List<Object> get props => [];
}

class PageTappedEvent extends HomeViewEvent {
  final int newIndex;
  const PageTappedEvent({required this.newIndex});

  @override
  List<Object> get props => [newIndex];

  @override
  String toString() => 'PageTappedEvent';
}
