import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:nov_training_session/flutter/dataModel/user_data_model.dart';

class SingleObjectPage extends StatefulWidget {
  const SingleObjectPage({super.key});

  @override
  State<SingleObjectPage> createState() => _SingleObjectPageState();
}

class _SingleObjectPageState extends State<SingleObjectPage> {
  SingleObjectModel? userData;

  // @override
  // void initState() {
  //   super.initState();
  //   singleObjectApi();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Single Object Api"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text("UserId: ${userData?.userId ?? 0}",
              style:
                  const TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),
          const SizedBox(height: 10),
          Text("Id: ${userData?.id ?? 0}",
              style:
                  const TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),
          const SizedBox(height: 10),
          Text("Title: ${userData?.title ?? "No title"}",
              style:
                  const TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),
          const SizedBox(height: 10),
          Text("Body: ${userData?.body ?? "No Body"}",
              style:
                  const TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),
          const SizedBox(height: 20),
          ElevatedButton(
              onPressed: () {
                singleObjectApi();
              },
              child: Text("Get Data"))
        ],
      ),
    );
  }

  Future<void> singleObjectApi() async {
    const uri = "https://jsonplaceholder.typicode.com/posts/1";
    try {
      final response = await http.get(Uri.parse(uri));
      if (response.statusCode == 200) {
        final jsonData = jsonDecode(response.body);
        print(jsonData);
        setState(() {
          userData = SingleObjectModel.fromJson(jsonData);
          print(userData);
        });
      } else {
        print("Request Failed: ${response.statusCode}");
      }
    } catch (e) {
      print(e);
    }
  }
}
