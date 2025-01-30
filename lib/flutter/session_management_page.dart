import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nov_training_session/flutter/bottom_navigation_page.dart';
import 'package:nov_training_session/flutter/components/custom_text_field_component.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SessionManagementPage extends StatefulWidget {
  const SessionManagementPage({super.key});

  @override
  State<SessionManagementPage> createState() => _SessionManagementPageState();
}

class _SessionManagementPageState extends State<SessionManagementPage> {
  final userNameController = TextEditingController();
  final passwordController = TextEditingController();
  bool isLogin = false;

  Future<void> loginAction(BuildContext context) async {
    final userName = userNameController.text;
    final password = passwordController.text;

    if (userName.isEmpty || password.isEmpty) {
      Get.snackbar("Failed", "Please enter both username and password",
          backgroundColor: Colors.red, snackPosition: SnackPosition.BOTTOM);
      return;
    }

    if (userName.length < 6 || password.length < 6) {
      Get.snackbar(
          "Failed", "Username and password must each be more than 6 characters",
          backgroundColor: Colors.red, snackPosition: SnackPosition.BOTTOM);
      return;
    }
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool('isLogin', true);
    prefs.setString('userName', userName);
    prefs.setString('password', password);
    Get.offAll(() => const BottomNavigationPage());
  }

  Future<void> checkLoginStatus() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    bool isLoggedIn = prefs.getBool("isLogin") ?? false;
    if (isLoggedIn) {
      String? userName = prefs.getString("userName");
      String? password = prefs.getString("password");

      if (userName != null && password != null) {
        userNameController.text = userName;
        passwordController.text = password;
      }
    }
    setState(() {
      isLogin = isLoggedIn;
    });
  }

  @override
  void initState() {
    super.initState();
    checkLoginStatus();
  }

  @override
  Widget build(BuildContext context) {
    return isLogin
        ? const BottomNavigationPage()
        : Scaffold(
            backgroundColor: Colors.white,
            body: SafeArea(
                child: Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Center(
                      child: Text(
                    "Session Management",
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 22),
                  )),
                  const SizedBox(height: 100),
                  CustomTextFieldComponent(
                    hintText: "User Name",
                    userController: userNameController,
                  ),
                  const SizedBox(height: 10),
                  CustomTextFieldComponent(
                    hintText: "Password",
                    userController: passwordController,
                  ),
                  const SizedBox(height: 30),
                  SizedBox(
                    height: 45,
                    width: double.infinity,
                    child: ElevatedButton(
                        onPressed: () async {
                          await loginAction(context);
                        },
                        child: const Text(
                          "Submit",
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 18),
                        )),
                  )
                ],
              ),
            )),
          );
  }
}
