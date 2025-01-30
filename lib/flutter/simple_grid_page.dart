import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nov_training_session/flutter/details_page.dart';

class SimpleGridPage extends StatefulWidget {
  const SimpleGridPage({super.key});

  @override
  State<SimpleGridPage> createState() => _SimpleGridPageState();
}

class _SimpleGridPageState extends State<SimpleGridPage> {
  final List<dynamic> userData = [
    {"name": "Amit", "image": "assets/images/mail.png"},
    {"name": "Umesh", "image": "assets/images/mail.png"},
    {"name": "Geetha", "image": "assets/images/mail.png"},
    {"name": "Irfan", "image": "assets/images/mail.png"},
    {"name": "Roomana", "image": "assets/images/mail.png"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Simple Grid",
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Colors.green)),
      ),
      body: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 8,
              mainAxisSpacing: 8,
              childAspectRatio: 0.85),
          itemCount: userData.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Get.to(() => DetailsPage(userName: userData[index]['name']));
              },
              child: Container(
                padding: const EdgeInsets.all(16),
                color: Colors.green,
                child: Column(
                  children: [
                    Image.asset(
                      userData[index]["image"],
                      width: 80,
                      height: 80,
                    ),
                    const SizedBox(height: 8),
                    Text(
                      userData[index]["name"],
                      style: const TextStyle(
                          fontWeight: FontWeight.w500, fontSize: 16),
                    )
                  ],
                ),
              ),
            );
          }),
    );
  }
}
