import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nov_training_session/mvvm/components/profile_component.dart';
import 'package:nov_training_session/mvvm/extensions/snack_bar_extension.dart';
import 'package:nov_training_session/mvvm/models/responseModels/auth_response_model.dart';
import 'package:nov_training_session/mvvm/viewModels/auth_view_model.dart';
import 'package:url_launcher/url_launcher.dart';

class UserProfilePage extends StatefulWidget {
  const UserProfilePage({super.key});

  @override
  State<UserProfilePage> createState() => _UserProfilePageState();
}

class _UserProfilePageState extends State<UserProfilePage> {
  final authViewModel = Get.put(AuthViewModel());

  @override
  void initState() {
    super.initState();
    authViewModel.fetchUserDetailApi();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("User Profile"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Obx(() {
            return authViewModel.fetchUserObserver.value.when(
                success: (data) {
                  final userData = data as UserProfileResponseModel;
                  return Padding(
                    padding: const EdgeInsets.only(top: 40),
                    child: Column(
                      children: [
                        Container(
                          width: 150,
                          height: 150,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(75),
                              color: Colors.grey.shade300),
                          child: Padding(
                            padding: const EdgeInsets.all(20),
                            child: Image.asset("assets/images/mail.png",
                                width: 80, height: 80, fit: BoxFit.contain),
                          ),
                        ),
                        const SizedBox(height: 16),
                        Text(
                          userData.data?.name ?? "",
                          style: const TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                              color: Colors.black),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          userData.data?.email ?? "",
                          style: const TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                              color: Colors.grey),
                        ),
                        const SizedBox(height: 20),
                        const Divider(),
                        ProfileComponent(
                            title: "Share Our App",
                            onTapped: () {
                              _openStore();
                            }),
                        const SizedBox(height: 12),
                        const Divider(),
                        ProfileComponent(
                            title: "Logout",
                            onTapped: () {
                              authViewModel.logout();
                            })
                      ],
                    ),
                  );
                },
                error: (error) => Text(error),
                loading: () => const Center(child: CircularProgressIndicator()),
                init: () => const SizedBox());
          })
        ],
      ),
    );
  }

  Future<void> _openStore() async {
    final url = Uri.parse(Platform.isIOS
        ? "https://www.apple.com/in/app-store/"
        : "https://play.google.com/store/games?hl=en&pli=1");
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      Get.showSnackBar(
          title: "Error Launching Url",
          message: "Could not launch ${url.toString()}");
    }
  }
}
