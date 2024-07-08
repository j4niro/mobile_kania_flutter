
import 'package:flutter/material.dart';
import 'package:mobile_kania_flutter/screens/Home_page/home.dart';
import 'package:mobile_kania_flutter/screens/accueil.dart';

class BottomNavbarWidget extends StatefulWidget {
  BottomNavbarWidget({super.key});
  
  @override
  State<BottomNavbarWidget> createState() => _BottomNavbarWidgetState();
 
  }


class _BottomNavbarWidgetState extends State<BottomNavbarWidget> {
    int selectIndex = 0;
    void ItemSelected(int index) {
    setState(() {
      selectIndex = index;
      switch (index) {
        case 0:
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const Home()));
          break;
        case 1:
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const Placeholder()));
          break;
        case 2:
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const Placeholder()));
          break;
        case 3:
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const Placeholder()));
          break;
      }
    });
}
  @override
  Widget build(BuildContext context) {
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
              onTap: ItemSelected ,
              type: BottomNavigationBarType.fixed,
              items: <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: selectIndex == 0 ? Image.asset('assets/home-round.png', width: 35, height: 35,color: const Color(0XFFFF7900),) : Image.asset('assets/home-round.png', width: 35, height: 35,),
                  label: 'Accueil',
                ),
                BottomNavigationBarItem(
                  icon: selectIndex == 1 ? Image.asset('assets/rnewspaper.png',width: 30, height: 35, color: const Color(0XFFFF7900),):Image.asset('assets/rnewspaper.png',width: 30, height: 35,),
                  label: 'Rapports',
                ),
                BottomNavigationBarItem(
                  icon: selectIndex == 2 ? Image.asset('assets/settings-line.png',width: 35, height: 35, color: const Color(0XFFFF7900),) : Image.asset('assets/settings-line.png',width: 35, height: 35,),
                  label: 'Paramètres',
                ),
                BottomNavigationBarItem(
                  icon: selectIndex == 3 ? Image.asset('assets/unbalance.png', width: 30, height: 35, color: const Color(0XFFFF7900),) : Image.asset('assets/unbalance.png', width: 30, height: 35,),
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