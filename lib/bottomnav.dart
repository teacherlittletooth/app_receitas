import 'package:flutter/material.dart';

class MyBottomNav extends StatefulWidget { 
  const MyBottomNav({super.key});

  @override
  State<MyBottomNav> createState() => _MyBottomNavState();
}

class _MyBottomNavState extends State<MyBottomNav> {
  int _index = 0;
  
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      selectedItemColor: Colors.yellow[800],
      showUnselectedLabels: false,
      currentIndex: _index,
      onTap: (item) {
        setState(() {
          _index = item;
        });
      },
      items: const [

        BottomNavigationBarItem(
          icon: Icon( Icons.house ),
          label: "Home"
        ),

        BottomNavigationBarItem(
          icon: Icon( Icons.mail ),
          label: "Contato"
        ),

        BottomNavigationBarItem(
          icon: Icon( Icons.search ),
          label: "Pesquisa"
        ),

      ]
    );
  }
}