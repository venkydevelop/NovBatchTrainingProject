import 'package:flutter/material.dart';

class WidgetBasics extends StatelessWidget {
  const WidgetBasics({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Text("Widgets"),
          centerTitle: true,
          backgroundColor: Colors.red,
          foregroundColor: Colors.white,
          shadowColor: Colors.blue,
          elevation: 12,
          leading: const Icon(Icons.cabin),
          actions: const [Icon(Icons.add)],
        ),
        body: Column(
          children: [
            const Text("Widgets"),
            const Text(
              "Widgets",
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 22,
                  color: Colors.red,
                  backgroundColor: Colors.green),
              textDirection: TextDirection.ltr,
              textAlign: TextAlign.start,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            const Icon(
              Icons.access_alarms_rounded,
              size: 35,
              color: Colors.green,
            ),
            Image.asset(
              "assets/images/ad.png",
              width: 30,
              height: 50,
              color: Colors.red,
              fit: BoxFit.cover,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue, foregroundColor: Colors.white),
              onPressed: () {},
              child: const Text("Hello"),
            ),
            const TextField(
              decoration: InputDecoration(border: OutlineInputBorder()),
            )
          ],
        ));
  }
}
