import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nov_training_session/firebase/firebase_login_page.dart';
import 'package:nov_training_session/firebase/service/auth_service.dart';
import 'package:nov_training_session/mvvm/extensions/snack_bar_extension.dart';

import 'firebase_logout_page.dart';

class FirebaseSignupPage extends StatefulWidget {
  const FirebaseSignupPage({super.key});

  @override
  State<FirebaseSignupPage> createState() => _FirebaseSignupPageState();
}

class _FirebaseSignupPageState extends State<FirebaseSignupPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool isSigningUp = false;
  final authService = AuthService();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text("SignUp"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Sign Up",
                  style: TextStyle(fontSize: 27, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 30,
                ),
                TextField(
                  controller: _emailController,
                  decoration: const InputDecoration(
                      hintText: "Email", border: OutlineInputBorder()),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextField(
                  controller: _passwordController,
                  decoration: const InputDecoration(
                      hintText: "Password", border: OutlineInputBorder()),
                ),
                const SizedBox(
                  height: 30,
                ),
                GestureDetector(
                  onTap: () {
                    signUpMethod();
                  },
                  child: Container(
                    width: double.infinity,
                    height: 45,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                        child: isSigningUp
                            ? const CircularProgressIndicator(
                                color: Colors.white,
                              )
                            : const Text(
                                "Sign Up",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              )),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Already have an account?"),
                    const SizedBox(
                      width: 5,
                    ),
                    GestureDetector(
                        onTap: () {
                          Get.to(() => const FirebaseLoginPage());
                        },
                        child: const Text(
                          "Login",
                          style: TextStyle(
                              color: Colors.blue, fontWeight: FontWeight.bold),
                        ))
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  void signUpMethod() async {
    setState(() {
      isSigningUp = true;
    });
    final email = _emailController.text;
    final password = _passwordController.text;
    User? user = await authService.signUpWithEmailPassword(email, password);
    setState(() {
      isSigningUp = false;
    });
    _emailController.clear();
    _passwordController.clear();
    if (user != null) {
      Get.showSnackBar(title: "Success", message: "User Created Successfully");
      Get.offAll(() => FirebaseLogoutPage(email: user.email ?? ""));
    } else {
      setState(() {
        isSigningUp = false;
      });
      Get.showSnackBar(title: "Error", message: "Error occurred ");
    }
  }
}
