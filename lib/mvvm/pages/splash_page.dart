import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nov_training_session/mvvm/viewModels/auth_view_model.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  final authViewModel = Get.put(AuthViewModel());

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2), () {
      authViewModel.getMain();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 200,
          height: 200,
          decoration: BoxDecoration(
              color: Colors.green.shade400,
              borderRadius: BorderRadius.circular(100)),
          child: ClipOval(
              child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Image.asset(
              "assets/images/mail.png",
              width: 150,
              height: 150,
              fit: BoxFit.cover,
            ),
          )),
        ),
      ),
    );
  }
}
