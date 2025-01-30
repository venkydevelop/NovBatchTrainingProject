import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nov_training_session/mvvm/components/fetch_user_component.dart';
import 'package:nov_training_session/mvvm/models/responseModels/auth_response_model.dart';
import 'package:nov_training_session/mvvm/viewModels/auth_view_model.dart';

class UsersPage extends StatefulWidget {
  const UsersPage({super.key});

  @override
  State<UsersPage> createState() => _UsersPageState();
}

class _UsersPageState extends State<UsersPage> {
  final authViewModel = Get.put(AuthViewModel());

  @override
  void initState() {
    super.initState();
    authViewModel.userDetailApi();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Users List"),
      ),
      body: Obx(() {
        return authViewModel.usersObserver.value.maybeWhen(
          success: (data) {
            final userList =
                (data as FetchUserResponseModel).data ?? List.empty();
            return userList.isEmpty
                ? const Center(child: Text("No Users Found"))
                : MediaQuery.removePadding(
                    removeTop: true,
                    context: context,
                    child: ListView.builder(
                        shrinkWrap: true,
                        // physics: const NeverScrollableScrollPhysics(),
                        itemCount: userList.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.only(
                                left: 12.0, right: 12, top: 12),
                            child:
                                FetchUserComponent(userData: userList[index]),
                          );
                        }),
                  );
          },
          init: () => const Center(child: CircularProgressIndicator()),
          orElse: () => const SizedBox(),
        );
      }),
    );
  }
}
