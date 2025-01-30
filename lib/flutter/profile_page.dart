import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nov_training_session/flutter/session_management_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  String? userName;
  String? password;

  Future<void> fetchUserData() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    setState(() {
      userName = prefs.getString("userName");
      password = prefs.getString("password");
    });
  }

  Future<void> logout(BuildContext context) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool('isLogin', false);
    await prefs.remove("userName");
    await prefs.remove("password");
    Get.offAll(() => const SessionManagementPage());
  }

  @override
  void initState() {
    super.initState();
    fetchUserData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              "User Details",
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 22,
                  color: Colors.green),
            ),
            const SizedBox(height: 30),
            if (userName != null && password != null) ...[
              Text("User Name: $userName",
                  style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Colors.blue)),
              const SizedBox(height: 8),
              Text("Password: $password",
                  style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Colors.blue)),
            ],
            const SizedBox(height: 30),
            SizedBox(
              height: 45,
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () async {
                    await logout(context);
                  },
                  child: const Text(
                    "Logout",
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
                  )),
            )
          ],
        ),
      )),
    );
  }
}
