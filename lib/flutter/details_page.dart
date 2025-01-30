import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage(
      {super.key,
      required this.userName,
      this.mobile,
      this.email,
      this.selectedCourse});
  final String userName;
  final String? mobile;
  final String? email;
  final String? selectedCourse;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("data"),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("UserName:$userName",
                style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Colors.green)),
            const SizedBox(height: 10),
            Text(mobile ?? "No Mobile Number",
                style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Colors.green)),
            const SizedBox(height: 10),
            Text(email ?? "No Emil",
                style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Colors.green)),
            const SizedBox(height: 10),
            Text(selectedCourse ?? "No Course Selected",
                style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Colors.green)),
          ],
        ),
      ),
    );
  }
}
