import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:nov_training_session/flutter/dataModel/user_data_model.dart';
import 'package:nov_training_session/flutter/details_page.dart';

class ObjectListPage extends StatefulWidget {
  const ObjectListPage({super.key});

  @override
  State<ObjectListPage> createState() => _ObjectListPageState();
}

class _ObjectListPageState extends State<ObjectListPage> {
  UserResponseModel? userData;

  @override
  void initState() {
    super.initState();
    objectListApi();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Object Contains List Data"),
      ),
      body: ListView.builder(
          itemCount: userData?.data?.length,
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {
                Get.to(() => DetailsPage(
                    userName:
                        "${userData?.data?[index].firstName ?? "No Name"} ${userData?.data?[index].lastName ?? ""}"));
              },
              child: Card(
                color: Colors.green.shade100,
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(
                        userData?.data?[index].avatar ?? "No Image"),
                  ),
                  title: Text(
                      "User Name: ${userData?.data?[index].firstName ?? "No Name"} ${userData?.data?[index].lastName ?? ""}"),
                  subtitle: Text(
                      "Email: ${userData?.data?[index].email ?? "No Email"} "),
                ),
              ),
            );
          }),
    );
  }

  Future<void> objectListApi() async {
    const uri = "https://reqres.in/api/users";
    try {
      final response = await http.get(Uri.parse(uri));
      if (response.statusCode == 200) {
        final jsonData = jsonDecode(response.body);
        print(jsonData);
        setState(() {
          userData = UserResponseModel.fromJson(jsonData);
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
