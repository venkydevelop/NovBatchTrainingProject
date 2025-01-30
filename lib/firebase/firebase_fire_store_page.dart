import 'package:flutter/material.dart';
import 'package:nov_training_session/firebase/service/cloud_data_store.dart';
import 'package:nov_training_session/flutter/dataModel/user_data_model.dart';

class FirebaseFireStorePage extends StatefulWidget {
  const FirebaseFireStorePage({super.key});

  @override
  State<FirebaseFireStorePage> createState() => _FirebaseFireStorePageState();
}

class _FirebaseFireStorePageState extends State<FirebaseFireStorePage> {
  final uidController = TextEditingController();
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  String message = "";
  List<FirebaseDataModel> usersList = [];
  String? userId;
  final cloudDataStore = CloudDataStore();

  // Add or Update User

  void addOrUpdateUser() async {
    if (uidController.text.isEmpty ||
        nameController.text.isEmpty ||
        emailController.text.isEmpty) {
      return;
    }
    FirebaseDataModel user = FirebaseDataModel(
        uid: uidController.text,
        name: nameController.text,
        email: emailController.text);

    if (userId == null) {
      await cloudDataStore.addUser(user);
      message = "User added successfully!";
    } else {
      await cloudDataStore.updateUser(user);
      message = "User updated successfully!";
    }
    resetUser();
    fetchUsersList();
  }

  // Get All Users

  void fetchUsersList() async {
    List<FirebaseDataModel> users = await cloudDataStore.getAllUser();
    setState(() {
      usersList = users;
    });
  }

  // Update User
  void updateUser(FirebaseDataModel user) async {
    setState(() {
      uidController.text = user.uid ?? "";
      nameController.text = user.name ?? "";
      emailController.text = user.email ?? "";
      userId = user.uid;
    });
  }

  // Delete User
  void deleteUser(String uid) async {
    await cloudDataStore.deleteUser(uid);
    setState(() {
      message = "User Deleted Successfully";
    });
    fetchUsersList();
  }

  void resetUser() {
    nameController.clear();
    uidController.clear();
    emailController.clear();
    userId = null;
  }

  @override
  void initState() {
    super.initState();
    fetchUsersList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text("Cloud Operations"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: uidController,
                decoration: const InputDecoration(
                    hintText: "UID", border: OutlineInputBorder()),
              ),
              const SizedBox(height: 10),
              TextField(
                controller: nameController,
                decoration: const InputDecoration(
                    hintText: "Name", border: OutlineInputBorder()),
              ),
              const SizedBox(height: 10),
              TextField(
                controller: emailController,
                decoration: const InputDecoration(
                    hintText: "Email", border: OutlineInputBorder()),
              ),
              const SizedBox(height: 30),
              ElevatedButton(
                onPressed: addOrUpdateUser,
                child: Text(userId == null ? "Add User" : "Update User"),
              ),
              const SizedBox(height: 20),
              Text(message,
                  style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Colors.green)),
              const SizedBox(height: 20),
              const Text("Users List:",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              const SizedBox(height: 10),
              if (usersList.isNotEmpty)
                ListView.builder(
                  shrinkWrap: true,
                  itemCount: usersList.length,
                  itemBuilder: (context, index) {
                    final user = usersList[index];
                    return ListTile(
                      title: Text(user.name ?? "No Name"),
                      subtitle: Text(user.email ?? "No Email"),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          IconButton(
                              onPressed: () {
                                updateUser(user);
                              },
                              icon: const Icon(Icons.edit)),
                          IconButton(
                              onPressed: () {
                                deleteUser(user.uid ?? "");
                              },
                              icon: const Icon(Icons.delete))
                        ],
                      ),
                    );
                  },
                )
              else
                const Text("No users available."),
            ],
          ),
        ),
      ),
    );
  }
}
