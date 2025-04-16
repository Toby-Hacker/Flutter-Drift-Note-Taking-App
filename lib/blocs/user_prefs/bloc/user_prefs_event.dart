part of 'user_prefs_bloc.dart';

sealed class UserPrefsEvent extends Equatable {
  const UserPrefsEvent();

  @override
  List<Object> get props => [];
}


class UserPrefsEventToggleDarkMode extends UserPrefsEvent {
  const UserPrefsEventToggleDarkMode();
}