import 'package:flutter/material.dart';

class AlignmentPage extends StatelessWidget {
  const AlignmentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "SignUp",
            style: TextStyle(
                fontSize: 22, fontWeight: FontWeight.w600, color: Colors.green),
          ),
          Image.asset(
            "assets/images/ad.png",
            width: 200,
            height: 200,
            fit: BoxFit.cover,
          ),
          const SizedBox(
            height: 50,
          ),
          const TextField(
            decoration: InputDecoration(
                hintText: "UserName:",
                hintStyle: TextStyle(color: Colors.red),
                labelText: "UserName",
                labelStyle: TextStyle(color: Colors.pink),
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red)),
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red)),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.green))),
          ),
          const SizedBox(
            height: 20,
          ),
          const TextField(
            decoration: InputDecoration(
                hintText: "Password:",
                hintStyle: TextStyle(color: Colors.red),
                labelText: "Password",
                labelStyle: TextStyle(color: Colors.pink),
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red)),
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red)),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.green))),
          ),
          const SizedBox(
            height: 30,
          ),
          SizedBox(
            width: double.infinity,
            height: 45,
            child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    foregroundColor: Colors.white),
                child: const Text(
                  'Submit',
                )),
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              InkWell(
                onTap: () {
                  print("object");
                },
                child: Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                      color: Colors.red,
                      border: Border.all(color: Colors.green),
                      borderRadius: BorderRadius.circular(25)),
                  child: Center(
                    child: Image.asset(
                      'assets/images/mail.png',
                      width: 22,
                      height: 22,
                      fit: BoxFit.cover,
                      color: Colors.blue,
                    ),
                  ),
                ),
              ),
              // SizedBox(width: 20),
              GestureDetector(
                onTap: () {
                  print("Gesture");
                },
                child: Container(
                  width: 50,
                  height: 50,
                  color: Colors.green,
                  child: Center(
                    child: Image.asset(
                      'assets/images/mail.png',
                      width: 22,
                      height: 22,
                      fit: BoxFit.cover,
                      color: Colors.blue,
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      )),
    );
  }
}
