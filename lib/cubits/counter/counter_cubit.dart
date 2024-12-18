import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CounterCubit extends Cubit<int> {
  CounterCubit() : super(0) {
    _loadInitialState();
  }

  Future<void> _loadInitialState() async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    int counter = pref.getInt('state') ?? 0;
    emit(counter);
  }

  Future<void> increment() async {
    final newState = state + 1;
    emit(newState);

    final SharedPreferences pref = await SharedPreferences.getInstance();
    await pref.setInt('state', newState);
  }

  Future<void> decrement() async {
    final newState = state - 1;
    emit(newState);

    final SharedPreferences pref = await SharedPreferences.getInstance();
    await pref.setInt('state', newState);
  }

  Future<void> restart() async {
    const newState = 0;
    emit(0);

    final SharedPreferences pref = await SharedPreferences.getInstance();
    await pref.setInt('state', newState);
  }
}
