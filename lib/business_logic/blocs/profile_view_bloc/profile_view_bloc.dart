import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'profile_view_event.dart';
part 'profile_view_state.dart';

class ProfileViewBloc extends Bloc<ProfileViewEvent, ProfileViewState> {
  ProfileViewBloc() : super(ProfileInitial()) {
    on<ChangeDataEvent>((event, emit) {});
  }
}
