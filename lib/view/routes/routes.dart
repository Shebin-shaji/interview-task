import 'package:app_ui/view/appointment_page/appointment_page.dart';
import 'package:app_ui/view/home_page/home_page.dart';
import 'package:app_ui/view/profile_page/profile_page.dart';
import 'package:app_ui/view/shop_page/shop_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Routes extends StatefulWidget {
  const Routes({super.key});

  @override
  State<Routes> createState() => _RoutesState();
}

class _RoutesState extends State<Routes> {
  List<Widget> screenList = [
    HomePage(),
    AppointmentPage(),
    ShopPage(),
    ProfilePage()
  ];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screenList[selectedIndex],
      bottomNavigationBar: Container(
        margin: const EdgeInsets.only(top: 2),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.6),
              spreadRadius: 2,
              blurRadius: 5,
            ),
          ],
        ),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          onTap: (value) {
            setState(() {
              selectedIndex = value;
            });
          },
          selectedFontSize: 12,
          currentIndex: selectedIndex,
          selectedItemColor: Colors.purple,
          unselectedItemColor: Colors.grey,
          selectedLabelStyle: GoogleFonts.poppins(
            textStyle: TextStyle(
              color: Colors.purple,
              fontSize: 12,
              fontWeight: FontWeight.bold,
            ),
          ),
          unselectedLabelStyle: GoogleFonts.poppins(
            textStyle: TextStyle(
              color: Colors.grey,
              fontSize: 12,
            ),
          ),
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_filled),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_search_rounded),
              label: "Appointment",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart),
              label: "Shop",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "Profile",
            ),
          ],
        ),
      ),
    );
  }
}
