import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nov_training_session/mvvm/extensions/snack_bar_extension.dart';
import 'package:nov_training_session/mvvm/models/requestModels/auth_request_model.dart';

import '../components/custom_button.dart';
import '../components/custom_text_field.dart';
import '../validator/auth_validator.dart';
import '../viewModels/auth_view_model.dart';

class ProjectSignUpPage extends StatefulWidget {
  const ProjectSignUpPage({super.key});

  @override
  State<ProjectSignUpPage> createState() => _ProjectSignUpPageState();
}

class _ProjectSignUpPageState extends State<ProjectSignUpPage> {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  bool _isChecked = false;
  final authViewModel = Get.put(AuthViewModel());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    InkWell(
                        onTap: () {
                          Get.back();
                        },
                        child: const Icon(
                          Icons.arrow_back_ios,
                          size: 22,
                          color: Colors.black,
                        ))
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Center(
                  child: Image.asset(
                    'assets/images/mail.png',
                    fit: BoxFit.contain,
                    width: 160,
                    height: 100,
                  ),
                ),
              ),
              const SizedBox(height: 24),
              CustomTextField(
                lblTxt: 'Your Name',
                hintTxt: 'Type your full name',
                controller: nameController,
              ),
              const SizedBox(height: 24),
              CustomTextField(
                lblTxt: 'Email',
                hintTxt: 'Type your email',
                controller: emailController,
              ),
              const SizedBox(height: 24),
              CustomTextField(
                lblTxt: 'Password',
                hintTxt: 'Type your password',
                controller: passwordController,
                isPassword: true,
              ),
              const SizedBox(height: 24),
              Obx(() {
                return authViewModel.signUpObserver.value.maybeWhen(
                    loading: () => const CircularProgressIndicator(),
                    orElse: () => CustomButton(
                          text: "SignUp",
                          onPressed: () {
                            _signUpAction();
                          },
                          buttonColor: Colors.blue,
                          borderRadius: 12,
                        ));
              }),
              const SizedBox(height: 16),
              Row(
                children: [
                  Checkbox(
                      checkColor: Colors.white,
                      activeColor: Colors.blue,
                      value: _isChecked,
                      onChanged: (bool? value) {
                        setState(() {
                          _isChecked = value ?? false;
                        });
                      }),
                  const SizedBox(width: 10),
                  const Text('By accepting, I accept the',
                      style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w500,
                          color: Colors.black)),
                  const Padding(
                    padding: EdgeInsets.only(left: 4),
                    child: Text('Terms & Conditions',
                        style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.w500,
                            color: Colors.blue)),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _signUpAction() {
    final name = nameController.text;
    final email = emailController.text;
    final password = passwordController.text;
    final request =
        SignUpRequestModel(email: email, password: password, name: name);
    String? error = AuthValidator().signUpValidator(request);
    if (error != null) {
      Get.showSnackBar(title: "Failed", message: error);
      return;
    }
    if (!_isChecked) {
      Get.showSnackBar(
          title: "Failed", message: "Please accept terms and conditions");
      return;
    }
    authViewModel.signUpRequestAction(request);
  }
}
