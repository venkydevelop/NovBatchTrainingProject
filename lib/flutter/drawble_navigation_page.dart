import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nov_training_session/flutter/custom_list_page.dart';
import 'package:nov_training_session/flutter/login_page.dart';
import 'package:nov_training_session/flutter/simple_list_page.dart';

class DrawbleNavigationPage extends StatelessWidget {
  const DrawbleNavigationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Drawble Navigation",
          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
        ),
      ),
      drawer: Drawer(
        backgroundColor: Colors.green,
        child: ListView(
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.white,
                    child: Text(
                      "V",
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    "Venky",
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
                  ),
                  SizedBox(height: 4),
                  Text(
                    "venky@gmail.com",
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 12),
            const Divider(
              thickness: 2,
              color: Colors.white,
            ),
            ListTile(
              leading: const Icon(Icons.home, size: 22, color: Colors.white),
              title: const Text("Home",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
              trailing: const Icon(
                Icons.arrow_forward_ios,
                size: 22,
                color: Colors.white,
              ),
              onTap: () {
                Get.back();
                Get.to(() => const LoginPage());
              },
            ),
            const SizedBox(height: 4),
            ListTile(
              leading: const Icon(Icons.home, size: 22, color: Colors.white),
              title: const Text("List",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
              trailing: const Icon(
                Icons.arrow_forward_ios,
                size: 22,
                color: Colors.white,
              ),
              onTap: () {
                Get.back();
                Get.to(() => const SimpleListPage());
              },
            ),
            const SizedBox(height: 4),
            ListTile(
              leading: const Icon(Icons.home, size: 22, color: Colors.white),
              title: const Text("Settings",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
              trailing: const Icon(
                Icons.arrow_forward_ios,
                size: 22,
                color: Colors.white,
              ),
              onTap: () {
                Get.back();
                Get.to(() => const CustomListPage());
              },
            ),
            const SizedBox(height: 4),
            ListTile(
              leading: const Icon(Icons.home, size: 22, color: Colors.white),
              title: const Text("Logout",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
              trailing: const Icon(
                Icons.arrow_forward_ios,
                size: 22,
                color: Colors.white,
              ),
              onTap: () {
                Get.back();
                Get.to(() => const LoginPage());
              },
            )
          ],
        ),
      ),
    );
  }
}
