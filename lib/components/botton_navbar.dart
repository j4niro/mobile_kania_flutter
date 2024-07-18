import 'package:flutter/material.dart';

class BottomNavbarWidget extends StatelessWidget {
  final int currentIndex;
  final ValueChanged<int> onTap;

  const BottomNavbarWidget({required this.currentIndex, required this.onTap, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(),
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
              currentIndex: currentIndex,
              onTap: onTap,
              type: BottomNavigationBarType.fixed,
              items: <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: currentIndex == 0
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
                  icon: currentIndex == 1
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
                  icon: currentIndex == 2
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
                  icon: currentIndex == 3
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
                  label: 'Comparaison',
                ),
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
