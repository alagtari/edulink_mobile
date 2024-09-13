import 'package:auto_route/auto_route.dart';
import 'package:edulink_mobile/common_widgets/bottom_navigation_icon_widget.dart';
import 'package:edulink_mobile/core/routes/app_router.gr.dart';
import 'package:flutter/material.dart';

@RoutePage()
class AppFrame extends StatefulWidget {
  const AppFrame({super.key});

  @override
  State<AppFrame> createState() => _AppFrameState();
}

class _AppFrameState extends State<AppFrame> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    switch (index) {
      case 0:
        context.router.replace(const Home());
        break;
      case 1:
        context.router.replace(const Emploi());
        break;
      case 2:
        context.router.replace(const Bulletin());
        break;
      case 3:
        context.router.replace(const Payment());
        break;
      case 4:
        context.router.replace(const ProfileRoute());
        break;
    }

    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // key: MyApp.scaffoldKey,
      body: const SafeArea(child: AutoRouter()),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: BottomNavigationIconWidget(
              selectedIndex: _selectedIndex,
              index: 0,
              icon: 'assets/svg/home.svg',
            ),
            label: "Acceuil",
          ),
          BottomNavigationBarItem(
            icon: BottomNavigationIconWidget(
              selectedIndex: _selectedIndex,
              index: 1,
              icon: 'assets/svg/calendar.svg',
            ),
            label: "Emploi",
          ),
          BottomNavigationBarItem(
            icon: BottomNavigationIconWidget(
              selectedIndex: _selectedIndex,
              index: 2,
              icon: 'assets/svg/bulletin.svg',
            ),
            label: 'Bulletin',
          ),
          BottomNavigationBarItem(
            icon: BottomNavigationIconWidget(
              selectedIndex: _selectedIndex,
              index: 3,
              icon: 'assets/svg/payment.svg',
            ),
            label: "Paiment",
          ),
          BottomNavigationBarItem(
            icon: BottomNavigationIconWidget(
              selectedIndex: _selectedIndex,
              index: 4,
              icon: 'assets/svg/user.svg',
            ),
            label: "Profile",
          ),
        ],
        currentIndex: _selectedIndex,
        unselectedItemColor: Colors.grey,
        selectedLabelStyle: const TextStyle(
          fontSize: 10,
          fontWeight: FontWeight.w700,
        ),
        unselectedLabelStyle: const TextStyle(
          fontSize: 10,
          fontWeight: FontWeight.w700,
        ),
        selectedItemColor: const Color(0xFFFF5652),
        onTap: _onItemTapped,
      ),
    );
  }
}
