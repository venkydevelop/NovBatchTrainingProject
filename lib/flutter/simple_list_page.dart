import 'package:flutter/material.dart';
import 'package:nov_training_session/flutter/details_page.dart';

class SimpleListPage extends StatefulWidget {
  const SimpleListPage({super.key});

  @override
  State<SimpleListPage> createState() => _SimpleListPageState();
}

class _SimpleListPageState extends State<SimpleListPage> {
  final List<String> users = [
    "Amit",
    "Geetha",
    "Umesh",
    "Sonu",
    "Irfan",
    "Roomana"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text("Simple List",
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 22,
                  color: Colors.green)),
          const SizedBox(height: 20),
          Expanded(
            child: ListView.builder(
                itemCount: users.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (builder) =>
                                  DetailsPage(userName: users[index])));
                    },
                    child: ListTile(
                      title: Text(users[index]),
                    ),
                  );
                }),
          )
        ],
      )),
    );
  }
}
