import 'package:flutter/material.dart';
import 'package:nov_training_session/flutter/components/custom_text_field_component.dart';

class UserInputValidation extends StatefulWidget {
  const UserInputValidation({super.key});

  @override
  State<UserInputValidation> createState() => _UserInputValidationState();
}

class _UserInputValidationState extends State<UserInputValidation> {
  final userNameController = TextEditingController();
  final emailController = TextEditingController();
  final mobileController = TextEditingController();

  String userName = '';
  String email = '';
  String mobile = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.only(left: 12, right: 12, top: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(
              child: Text("User Input Validation",
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 22,
                      color: Colors.red)),
            ),
            const SizedBox(height: 30),
            CustomTextFieldComponent(
                hintText: "UserName", userController: userNameController),
            const SizedBox(height: 20),
            CustomTextFieldComponent(
                hintText: "Email", userController: emailController),
            const SizedBox(height: 20),
            CustomTextFieldComponent(
                hintText: "Mobile", userController: mobileController),
            const SizedBox(height: 30),
            SizedBox(
              width: double.infinity,
              height: 45,
              child: ElevatedButton(
                  onPressed: () {
                    validateUserInput();
                  },
                  child: const Text("Submit")),
            ),
            const SizedBox(height: 30),
            if (userName.isNotEmpty && email.isNotEmpty && mobile.isNotEmpty)
              Container(
                width: double.infinity,
                height: 300,
                color: Colors.green,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(userName,
                        style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: Colors.white)),
                    const SizedBox(height: 8),
                    Text(email,
                        style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Colors.black)),
                    const SizedBox(height: 8),
                    Text(mobile,
                        style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Colors.black26))
                  ],
                ),
              ),
          ],
        ),
      )),
    );
  }

  String? validateUserName(String name) {
    if (name.isEmpty) {
      return "Please Enter User Name";
    } else if (name.length < 6) {
      return "User Name Should be Greater than 6 Character";
    }
    return null;
  }

  String? validateEmail(String email) {
    final RegExp validEmail = RegExp(r'^[^@]+@[^@]+\.[^@]+');
    if (email.isEmpty) {
      return "Please Enter Email Id";
    } else if (!validEmail.hasMatch(email)) {
      return "Please Enter Valid Email Id";
    }
    return null;
  }

  String? validateMobile(String mobile) {
    if (mobile.isEmpty) {
      return "Please Enter Mobile Number";
    } else if (mobile.length != 10) {
      return "Please Valid Mobile Number";
    }
    return null;
  }

  void validateUserInput() {
    String userNameInput = userNameController.text;
    String emailInput = emailController.text;
    String mobileNumber = mobileController.text;

    String? userInput = validateUserName(userNameInput);
    String? emailAddress = validateEmail(emailInput);
    String? mobileInput = validateMobile(mobileNumber);

    if (userInput != null) {
      showMessage(userInput);
    } else if (emailAddress != null) {
      showMessage(emailAddress);
    } else if (mobileInput != null) {
      showMessage(mobileInput);
    } else {
      setState(() {
        userName = userNameInput;
        email = emailInput;
        mobile = mobileNumber;

        userNameController.clear();
        emailController.clear();
        mobileController.clear();
      });
    }
  }

  void showMessage(String message) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(message),
      duration: const Duration(seconds: 2),
      backgroundColor: Colors.red,
    ));
  }
}
