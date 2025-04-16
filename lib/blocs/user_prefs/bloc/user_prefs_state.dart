part of 'user_prefs_bloc.dart';

class UserPrefsState extends Equatable {
  const UserPrefsState({this.isDarkModeOn = false});
  final bool isDarkModeOn;

  UserPrefsState copyWith({
    bool? isDarkModeOn,
  }) {
    return UserPrefsState(
      isDarkModeOn: isDarkModeOn ?? this.isDarkModeOn,
    );
  }

  @override
  List<Object> get props => [
        isDarkModeOn,
      ];
}
