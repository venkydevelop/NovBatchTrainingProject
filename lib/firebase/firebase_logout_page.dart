import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:nov_training_session/firebase/firebase_login_page.dart';

class FirebaseLogoutPage extends StatelessWidget {
  const FirebaseLogoutPage({super.key, required this.email});

  final String email;

  Future<void> _logout(BuildContext context) async {
    await FirebaseAuth.instance.signOut();
    final GoogleSignIn googleSignIn = GoogleSignIn();
    if (await googleSignIn.isSignedIn()) {
      await googleSignIn.signOut();
    }
    Get.offAll(() => const FirebaseLoginPage());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Logout",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: ElevatedButton(
                onPressed: () {
                  _logout(context);
                },
                child: const Text("Logout")),
          )
        ],
      ),
      body: Center(
          child: Text(email,
              style: const TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                  color: Colors.green))),
    );
  }
}
