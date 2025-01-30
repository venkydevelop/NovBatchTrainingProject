import 'package:flutter/material.dart';
import 'package:nov_training_session/flutter/custom_list_page.dart';
import 'package:nov_training_session/flutter/profile_page.dart';
import 'package:nov_training_session/flutter/simple_list_page.dart';

class BottomNavigationPage extends StatefulWidget {
  const BottomNavigationPage({super.key});

  @override
  State<BottomNavigationPage> createState() => _BottomNavigationPageState();
}

class _BottomNavigationPageState extends State<BottomNavigationPage> {
  int selectedIndex = 0;
  late List<Widget> pages;

  @override
  void initState() {
    super.initState();
    pages = [
      const Center(child: Text("HomePage")),
      const SimpleListPage(),
      const CustomListPage(),
      const ProfilePage(),
    ];
  }

  void onTapItem(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Bottom Navigation",
          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 22),
        ),
      ),
      body: pages.elementAt(selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white10,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.green,
        selectedLabelStyle:
            const TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
        unselectedItemColor: Colors.red,
        unselectedLabelStyle:
            const TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
              backgroundColor: Colors.green),
          BottomNavigationBarItem(
              icon: Icon(Icons.list),
              label: "SimpleList",
              backgroundColor: Colors.red),
          BottomNavigationBarItem(
              icon: Icon(Icons.list),
              label: "CustomList",
              backgroundColor: Colors.yellow),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "Profile",
              backgroundColor: Colors.grey),
        ],
        currentIndex: selectedIndex,
        onTap: onTapItem,
      ),
    );
  }
}
