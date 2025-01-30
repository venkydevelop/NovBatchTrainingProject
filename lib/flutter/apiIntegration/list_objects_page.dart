import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:nov_training_session/flutter/dataModel/user_data_model.dart';

class ListObjectsPage extends StatefulWidget {
  const ListObjectsPage({super.key});

  @override
  State<ListObjectsPage> createState() => _ListObjectsPageState();
}

class _ListObjectsPageState extends State<ListObjectsPage> {
  List<SingleObjectModel>? posts;

  @override
  void initState() {
    super.initState();
    listOfObjectApi();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("List Of Objects"),
      ),
      body: ListView.builder(itemBuilder: (context, index) {
        return Card(
          color: Colors.green.shade200,
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("UserId: ${posts?[index].userId ?? 0}",
                        style: const TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w600)),
                    Text("Id:${posts?[index].id ?? 0}",
                        style: const TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w600)),
                  ],
                ),
                const SizedBox(height: 10),
                Text("Title: ${posts?[index].title ?? "No title"}",
                    style: const TextStyle(
                        fontSize: 18, fontWeight: FontWeight.w600)),
                const SizedBox(height: 10),
                Text("Body: ${posts?[index].body ?? "No Body"}",
                    style: const TextStyle(
                        fontSize: 18, fontWeight: FontWeight.w600)),
              ],
            ),
          ),
        );
      }),
    );
  }

  Future<void> listOfObjectApi() async {
    const uri = "https://jsonplaceholder.typicode.com/posts";
    try {
      final response = await http.get(Uri.parse(uri));
      if (response.statusCode == 200) {
        final jsonData = jsonDecode(response.body);
        print(jsonData);
        setState(() {
          posts = (jsonData as List)
              .map((post) => SingleObjectModel.fromJson(post))
              .toList();
        });
        print(posts);
      } else {
        print("Request Failed: ${response.statusCode}");
      }
    } catch (e) {
      print(e);
    }
  }
}
