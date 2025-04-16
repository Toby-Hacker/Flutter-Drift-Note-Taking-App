import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'user_prefs_event.dart';
part 'user_prefs_state.dart';

class UserPrefsBloc extends Bloc<UserPrefsEvent, UserPrefsState> {
  UserPrefsBloc() : super(const UserPrefsState()) {
    on<UserPrefsEventToggleDarkMode>(_onUserPrefsEventToggleDarkMode);
  }

  FutureOr<void> _onUserPrefsEventToggleDarkMode(
      UserPrefsEventToggleDarkMode event, Emitter<UserPrefsState> emit) {
        emit(state.copyWith(isDarkModeOn: !state.isDarkModeOn));
      }
}
