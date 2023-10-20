import 'package:maak/modules/add_Category/add_Category.dart';
import 'package:maak/modules/category/category.dart';
import 'package:maak/shared/components/Components.dart';
import 'package:maak/shared/cubit/cubit.dart';
import 'package:maak/shared/cubit/states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../modules/first_screen/first_screen.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  List<Widget> screens = [FirstScreen(), Category()];
  TextEditingController roomName = TextEditingController();
  TextEditingController roomId = TextEditingController();
  var newRoomFormKey = GlobalKey<FormState>();
  var joinRoomFormKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AppCubit(),
      child: BlocConsumer<AppCubit, AppCubitStates>(
          listener: (context, state) {},
          builder: (context, state) {
            var cubit = AppCubit.get(context);
            return Scaffold(
              appBar: AppBar(
                title: cubit.bottomNavBarIndex == 1
                    ? Text('Categories')
                    : Text('Home'),
              ),
              body: screens[cubit.bottomNavBarIndex],
              drawer: Drawer(
                backgroundColor: Theme.of(context).colorScheme.background,
                child: ListView(
                  children: [
                    DrawerHeader(
                      child: ClipRRect(
                        child: Image.asset(
                          'assets/images/Anater.webp',
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(200.00),
                      ),
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.background,
                      ),
                    ),
                    drawerListTile(
                        title: 'Search',
                        selected: cubit.drawerIndex == 0,
                        leading: Icon(
                          Icons.search_outlined,
                          color: Theme.of(context).colorScheme.surface,
                          size: 30.00,
                        ),
                        onTab: () {
                          cubit.changeDrawerIndex(index: 0);
                          Navigator.pop(context);
                        },
                        context: context),
                    drawerListTile(
                        title: 'Favorite',
                        selected: cubit.drawerIndex == 1,
                        leading: Icon(
                          Icons.favorite_rounded,
                          color: Theme.of(context).colorScheme.surface,
                          size: 30.00,
                        ),
                        onTab: () {
                          cubit.changeDrawerIndex(index: 1);
                          Navigator.pop(context);
                        },
                        context: context),
                    drawerListTile(
                        title: 'Settings',
                        selected: cubit.drawerIndex == 2,
                        leading: Icon(
                          Icons.settings_suggest_outlined,
                          color: Theme.of(context).colorScheme.surface,
                          size: 30.00,
                        ),
                        onTab: () {
                          cubit.changeDrawerIndex(index: 2);
                          Navigator.pop(context);
                        },
                        context: context),
                    drawerListTile(
                        title: 'Add Category',
                        selected: cubit.drawerIndex == 3,
                        leading: Icon(
                          Icons.add_business,
                          color: Theme.of(context).colorScheme.surface,
                          size: 30.00,
                        ),
                        onTab: () {
                          cubit.changeDrawerIndex(index: 3);
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => AddCategory(),
                              ));
                        },
                        context: context),
                  ],
                ),
              ),
              bottomNavigationBar: BottomNavigationBar(
                backgroundColor: Theme.of(context).colorScheme.surface,
                unselectedItemColor: Theme.of(context).colorScheme.onSurface,
                items: [
                  BottomNavigationBarItem(
                    backgroundColor: Theme.of(context).colorScheme.onSurface,
                    icon: Icon(
                      Icons.house_outlined,
                      color: Theme.of(context).colorScheme.onSurface,
                    ),
                    label: 'Home',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(
                      Icons.category_outlined,
                      color: Theme.of(context).colorScheme.onSurface,
                    ),
                    label: 'Categories',
                  ),
                ],
                currentIndex: cubit.bottomNavBarIndex,
                onTap: (index) {
                  cubit.changeBottomNavBarIndex(index: index);
                  // Navigator.push(context, MaterialPageRoute(builder: (context) => Category()));
                },
              ),
            );
          }),
    );
  }
}
