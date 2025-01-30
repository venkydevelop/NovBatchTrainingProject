import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nov_training_session/flutter/components/user_data_component.dart';
import 'package:nov_training_session/flutter/dataModel/user_data_model.dart';

import 'details_page.dart';

class CustomListPage extends StatefulWidget {
  const CustomListPage({super.key});

  @override
  State<CustomListPage> createState() => _CustomListPageState();
}

class _CustomListPageState extends State<CustomListPage> {
  final List<UserDataModel> userData = [
    UserDataModel(
        name: "Roomana",
        image: "assets/images/mail.png",
        course: "Flutter",
        fee: 25000),
    UserDataModel(
        name: "Irfan",
        image: "assets/images/mail.png",
        course: "Flutter",
        fee: 25000),
    UserDataModel(
        name: "Geetha",
        image: "assets/images/mail.png",
        course: "Flutter",
        fee: 25000),
    UserDataModel(
        name: "Umesh",
        image: "assets/images/mail.png",
        course: "Flutter",
        fee: 25000),
    UserDataModel(
        name: "Amit",
        image: "assets/images/mail.png",
        course: "Flutter",
        fee: 25000),
    UserDataModel(
        name: "Amit",
        image: "assets/images/mail.png",
        course: "Flutter",
        fee: 25000),
    UserDataModel(
        name: "Amit",
        image: "assets/images/mail.png",
        course: "Flutter",
        fee: 25000),
    UserDataModel(
        name: "Amit",
        image: "assets/images/mail.png",
        course: "Flutter",
        fee: 25000),
    UserDataModel(
        name: "Amit",
        image: "assets/images/mail.png",
        course: "Flutter",
        fee: 25000)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(
                child: Text("Custom List",
                    style:
                        TextStyle(fontWeight: FontWeight.w600, fontSize: 22))),
            const SizedBox(height: 20),
            ListView.builder(
                itemCount: userData.length,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return InkWell(
                      onTap: () {
                        Get.to(() => DetailsPage(
                            userName: userData[index].name ?? 'No Name'));
                        // Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //         builder: (builder) =>
                        //             DetailsPage(userName: userData[index].name ?? 'No Name')));
                      },
                      child: UserDataComponent(userData: userData[index]));
                }),
          ],
        )),
      ),
    );
  }
}
