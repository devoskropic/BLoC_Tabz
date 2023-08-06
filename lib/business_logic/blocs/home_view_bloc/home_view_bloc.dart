import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'home_view_event.dart';
part 'home_view_state.dart';

class HomeViewBloc extends Bloc<HomeViewEvent, HomeViewState> {
  HomeViewBloc() : super(const InitialState(msg: 'InitialState: ', index: 0)) {
    on<PageTappedEvent>((_onPageTappedEvent));
  }

  _onPageTappedEvent(event, emit) {
    String nota = "";
    switch (event.newIndex) {
      case 0:
        nota = "Home tapped, index:";
        emit(IndexChangedState(note: nota, index: event.newIndex));
        break;
      case 1:
        nota = "First tapped, index:";
        emit(IndexChangedState(note: nota, index: event.newIndex));
        break;
      case 2:
        nota = "Second tapped, index:";
        emit(IndexChangedState(note: nota, index: event.newIndex));
        break;
      case 3:
        nota = "Third tapped, index:";
        emit(IndexChangedState(note: nota, index: event.newIndex));
        break;
      case 4:
        nota = "Settings tapped, index:";
        emit(IndexChangedState(note: nota, index: event.newIndex));
        break;
    }
  }
}
