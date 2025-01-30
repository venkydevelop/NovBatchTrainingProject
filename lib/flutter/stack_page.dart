import 'package:flutter/material.dart';

class StackPage extends StatelessWidget {
  const StackPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Stack Widget"),
      ),
      body: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            color: Colors.red,
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.8,
            height: MediaQuery.of(context).size.height * 0.8,
            color: Colors.green,
          ),
          Positioned(
            right: 0,
            top: 0,
            child: Container(
              width: 200,
              height: 200,
              color: Colors.yellow,
            ),
          ),
          const SingleChildScrollView(
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("Text1"),
                  SizedBox(height: 100),
                  Text("Text2"),
                  SizedBox(height: 100),
                  Text("Text3"),
                  SizedBox(height: 100),
                  Text("Text4"),
                  SizedBox(height: 100),
                  Text("Text5"),
                  SizedBox(height: 100),
                  Text("Text6"),
                  SizedBox(height: 100),
                  Text("Text7"),
                  SizedBox(height: 100),
                  Text("Text8"),
                  SizedBox(height: 100),
                  Text("Text9"),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.only(
                    bottom: 30, top: 10, left: 20, right: 20),
                child: SizedBox(
                  width: double.infinity,
                  height: 45,
                  child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue,
                          foregroundColor: Colors.white),
                      child: const Text("Submit")),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
