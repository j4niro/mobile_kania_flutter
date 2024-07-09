// custom_app_bar.dart
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  void _showUserModal(BuildContext context) {
    showDialog(
      //barrierColor: Colors.white.withOpacity(0.5),
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: Colors.white,
          title: const Text('Informations', textAlign: TextAlign.center, style: TextStyle(fontSize: 19),),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              const ListTile(
                leading: Icon(Icons.person),
                title: Text('Kania'),
                subtitle: Text('kania@gmail.com'),
              ),
              const SizedBox(height: 10),
              TextButton(onPressed: () {
                  // Handle logout action
                  Navigator.of(context).pop(); // Close the dialog
                }, child: Container (
                  height : 40,
                  width : 120,
                  decoration: BoxDecoration(
                    color: const Color(0XFFFF7900),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child : const Center(child: Text('Déconnexion', style: TextStyle(color: Colors.white),)),
                )),
            ],
          ),
          actions: <Widget>[
            IconButton(onPressed:() {
                Navigator.of(context).pop(); // Close the dialog
              }, icon: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                ),
                
                child : Icon(Icons.close, color: Color(0XFFFF7900),)),)
          ],
        );
      },
    );
  }

  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      leading: Image.asset('assets/header.png'),
      actions: [
        IconButton(
          icon: const Icon(Icons.notifications_none),
          onPressed: () {},
        ),
        IconButton(
          icon: Container(
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Color(0XFFFF7900),
            ),
            child: const Icon(Icons.person, color: Colors.white),
          ),
          onPressed: () {
            _showUserModal;
          },
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
