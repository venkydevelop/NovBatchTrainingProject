import 'package:flutter/material.dart';

class StatefulWidgetExample extends StatefulWidget {
  const StatefulWidgetExample({super.key});

  @override
  State<StatefulWidgetExample> createState() => _StatefulWidgetExampleState();
}

class _StatefulWidgetExampleState extends State<StatefulWidgetExample> {
  final userController = TextEditingController();
  String userText = "Stateful Widget Example";
  Color containerColor = Colors.yellow;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text("Stateful Widget Example",
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 22,
                  color: Colors.green)),
          const SizedBox(height: 30),
          TextField(
            controller: userController,
            decoration: const InputDecoration(
                hintText: "User Text:",
                hintStyle: TextStyle(color: Colors.red),
                labelText: "User Text",
                labelStyle: TextStyle(color: Colors.pink),
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red)),
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red)),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.green))),
          ),
          const SizedBox(height: 30),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  userText = userController.text;
                  containerColor = Colors.red;
                  userController.clear();
                });
              },
              child: const Text("Submit")),
          const SizedBox(height: 30),
          Container(
            width: double.infinity,
            height: 300,
            color: containerColor,
            child: Center(
              child: Text(userText,
                  style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.black)),
            ),
          )
        ],
      )),
    );
  }
}
