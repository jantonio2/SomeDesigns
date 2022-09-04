import 'package:flutter/material.dart';

class CustomBottomNavigation extends StatelessWidget {
  const CustomBottomNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      showSelectedLabels: false,
      showUnselectedLabels: false,
      selectedItemColor: Colors.pink,
      backgroundColor: const Color.fromRGBO(55, 57, 84, 1),
      unselectedItemColor: const Color.fromRGBO(116, 117, 152, 1),
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.calendar_today_outlined, size: 25),
          label: 'Calendario'
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.bar_chart, size: 25),
          label: 'Gráfica'
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.person, size: 25),
            label: 'Usuarios'
        ),
      ],
    );
  }
}
