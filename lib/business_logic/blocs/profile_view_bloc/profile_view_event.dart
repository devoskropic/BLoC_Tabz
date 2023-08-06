part of 'profile_view_bloc.dart';

abstract class ProfileViewEvent extends Equatable {
  const ProfileViewEvent();

  @override
  List<Object> get props => [];
}

class ChangeDataEvent extends ProfileViewEvent {
  const ChangeDataEvent();

  @override
  List<Object> get props => [];

  @override
  String toString() => 'ChangeDataEvent';
}
