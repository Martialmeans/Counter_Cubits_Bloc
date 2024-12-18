import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeCubit extends Cubit<bool> {
  ThemeCubit() : super(false) {
    _loadThemePreference();
  }

  Future<void> _loadThemePreference() async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    bool isDarkMode = pref.getBool('DarkMode') ?? false;
    emit(isDarkMode);
  }

  Future<void> changed() async {
    final newTheme = !state;
    emit(newTheme);

    final SharedPreferences pref = await SharedPreferences.getInstance();
    await pref.setBool('DarkMode', newTheme);
  }
}
