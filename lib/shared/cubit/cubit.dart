import 'package:maak/shared/cubit/states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppCubit extends Cubit<AppCubitStates> {
  AppCubit() : super(AppCubitInitialState());

  var bottomNavBarIndex = 0;
  var drawerIndex = 0;
  static AppCubit get(context) => BlocProvider.of(context);

  void changeBottomNavBarIndex({required index}) {
    bottomNavBarIndex = index;

    emit(AppCubitChangeBottomNavBarState());
  }

  void changeDrawerIndex({required index}) {
    drawerIndex = index;
    emit(AppCubitChangeDrawerItemState());
  }
}
