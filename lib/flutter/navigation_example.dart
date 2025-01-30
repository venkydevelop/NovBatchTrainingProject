import 'package:flutter/material.dart';
import 'package:nov_training_session/flutter/components/custom_text_field_component.dart';
import 'package:nov_training_session/flutter/details_page.dart';

class NavigationExample extends StatefulWidget {
  const NavigationExample({super.key});

  @override
  State<NavigationExample> createState() => _NavigationExampleState();
}

class _NavigationExampleState extends State<NavigationExample> {
  final userNameController = TextEditingController();
  final mobileNumberController = TextEditingController();
  final emailController = TextEditingController();
  String selectedCourse = "Please select Course";
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.only(left: 12.0, right: 12, top: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(
              child: Text("Navigation Example",
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                      color: Colors.green)),
            ),
            const SizedBox(height: 30),
            CustomTextFieldComponent(
                hintText: "UserName", userController: userNameController),
            const SizedBox(height: 20),
            CustomTextFieldComponent(
              hintText: "MobileNumber",
              userController: mobileNumberController,
            ),
            const SizedBox(height: 20),
            CustomTextFieldComponent(
                hintText: "Email", userController: emailController),
            const SizedBox(height: 30),
            GestureDetector(
              onTap: () {
                setState(() {
                  isSelected = !isSelected;
                });
              },
              child: InputDecorator(
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.yellow,
                    hintText: selectedCourse,
                    enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.green),
                        borderRadius: BorderRadius.circular(12)),
                    suffixIcon: isSelected
                        ? const Icon(Icons.arrow_drop_up, size: 28)
                        : const Icon(
                            Icons.arrow_drop_down,
                            size: 28,
                          )),
                child: Text(selectedCourse,
                    style: const TextStyle(
                        fontWeight: FontWeight.w600, fontSize: 18)),
              ),
            ),
            const SizedBox(height: 30),
            if (isSelected)
              InkWell(
                onTap: () {
                  setState(() {
                    selectedCourse = "Flutter";
                    isSelected = false;
                  });
                },
                child: Container(
                  width: double.infinity,
                  height: 60,
                  decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(12)),
                  child: const Center(
                    child: Text("Flutter",
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 18)),
                  ),
                ),
              ),
            const SizedBox(height: 30),
            SizedBox(
              width: double.infinity,
              height: 45,
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (builder) => DetailsPage(
                                  userName: userNameController.text,
                                  mobile: mobileNumberController.text,
                                  email: emailController.text,
                                  selectedCourse: selectedCourse,
                                )));
                  },
                  style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: Colors.blue),
                  child: const Text("Next")),
            )
          ],
        ),
      )),
    );
  }
}
