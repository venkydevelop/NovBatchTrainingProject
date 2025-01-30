import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:nov_training_session/mvvm/extensions/snack_bar_extension.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<User?> signUpWithEmailPassword(String email, String password) async {
    try {
      UserCredential userCredential = await _auth
          .createUserWithEmailAndPassword(email: email, password: password);
      return userCredential.user;
    } on FirebaseAuthException catch (e) {
      if (e.code == "email-alreay-in-use") {
        Get.showSnackBar(title: "Message", message: "This email alreay in use");
      } else {
        Get.showSnackBar(title: "Error", message: "${e.code}");
      }
    }
    return null;
  }

  Future<User?> signInWithEmailPassword(String email, String password) async {
    try {
      UserCredential userCredential = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
      return userCredential.user;
    } on FirebaseAuthException catch (e) {
      if (e.code == "user-not-found" || e.code == "Wrong-Password") {
        Get.showSnackBar(title: "Message", message: "Invalid user pr password");
      } else {
        Get.showSnackBar(title: "Error", message: "${e.code}");
      }
    }
    return null;
  }
}
