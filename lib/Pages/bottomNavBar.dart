import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nipee/AppStuff/appColors.dart';
import 'package:nipee/Pages/homePage.dart';
import 'package:nipee/Pages/profile.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int currentTab = 0;
  final List<Widget> screens = [
    const HomePage(),
    const Profile(),
  ];

  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = const HomePage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.background,
        body: PageStorage(
          bucket: bucket,
          child: screens[context.watch<BottomNavIndexCubit>().state],
        ),
        bottomNavigationBar: BottomNavigationBar(
            selectedItemColor: AppColors.darkGreen,
            selectedIconTheme: const IconThemeData(
              color: AppColors.darkGreen,
            ),
            type: BottomNavigationBarType.fixed,
            elevation: 0,
            currentIndex: context.watch<BottomNavIndexCubit>().state,
            onTap: (val) {
              context.read<BottomNavIndexCubit>().change(val);
            },
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home,
                    color: AppColors.subtitle,
                  ),
                  label: 'Home',
                  activeIcon: Icon(
                    Icons.home,
                  )),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.person,
                    color: AppColors.subtitle,
                  ),
                  label: 'Profile',
                  activeIcon: Icon(
                    Icons.person,
                  )),
            ]));
  }
}

class BottomNavIndexCubit extends Cubit<int> {
  BottomNavIndexCubit() : super(0);
  change(int x) {
    emit(x);
  }
}
