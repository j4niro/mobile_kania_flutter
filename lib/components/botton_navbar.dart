import 'package:flutter/material.dart';
import 'package:mobile_kania_flutter/screens/Home_page/home.dart';
import 'package:mobile_kania_flutter/screens/Rapport/page_rapport.dart';
import 'package:mobile_kania_flutter/screens/accueil.dart';
import 'package:go_router/go_router.dart';

class BottomNavbarWidget extends StatefulWidget {
  BottomNavbarWidget({super.key});

  @override
  State<BottomNavbarWidget> createState() => _BottomNavbarWidgetState();
}

class _BottomNavbarWidgetState extends State<BottomNavbarWidget> {
  void ItemSelected(int index) {
    switch (index) {
      case 0:
        context.go('/home');
        break;
      case 1:
        context.go('/rapport');
        break;
      case 2:
        context.go('/parametres');
        break;
      case 3:
        context.go('/comparaison');
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    // Determine the selected index based on the current route
    final String location = GoRouter.of(context).location;
    int selectIndex = 0;
    if (location == '/home') {
      selectIndex = 0;
    } else if (location == '/rapport') {
      selectIndex = 1;
    } else if (location == '/parametres') {
      selectIndex = 2;
    } else if (location == '/comparaison') {
      selectIndex = 3;
    }

    return Container(
      decoration: BoxDecoration(
          //color: Colors.white,
          //borderRadius: BorderRadius.circular(30),
          ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.25),
                spreadRadius: 0,
                blurRadius: 4,
                offset: const Offset(0, 4),
              ),
            ],
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: BottomNavigationBar(
              backgroundColor: Colors.white,
              currentIndex: selectIndex,
              onTap: ItemSelected,
              type: BottomNavigationBarType.fixed,
              items: <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: selectIndex == 0
                      ? Image.asset(
                          'assets/home-round.png',
                          width: 35,
                          height: 35,
                          color: const Color(0XFFFF7900),
                        )
                      : Image.asset(
                          'assets/home-round.png',
                          width: 35,
                          height: 35,
                        ),
                  label: 'Accueil',
                ),
                BottomNavigationBarItem(
                  icon: selectIndex == 1
                      ? Image.asset(
                          'assets/rnewspaper.png',
                          width: 30,
                          height: 35,
                          color: const Color(0XFFFF7900),
                        )
                      : Image.asset(
                          'assets/rnewspaper.png',
                          width: 30,
                          height: 35,
                        ),
                  label: 'Rapports',
                ),
                BottomNavigationBarItem(
                  icon: selectIndex == 2
                      ? Image.asset(
                          'assets/settings-line.png',
                          width: 35,
                          height: 35,
                          color: const Color(0XFFFF7900),
                        )
                      : Image.asset(
                          'assets/settings-line.png',
                          width: 35,
                          height: 35,
                        ),
                  label: 'Paramètres',
                ),
                BottomNavigationBarItem(
                    icon: selectIndex == 3
                        ? Image.asset(
                            'assets/unbalance.png',
                            width: 30,
                            height: 35,
                            color: const Color(0XFFFF7900),
                          )
                        : Image.asset(
                            'assets/unbalance.png',
                            width: 30,
                            height: 35,
                          ),
                    label: 'Comparaison')
              ],
              selectedItemColor: Color(0XFFFF7900),
              unselectedItemColor: Colors.black,
              showSelectedLabels: true,
              showUnselectedLabels: true,
            ),
          ),
        ),
      ),
    );
  }
}
