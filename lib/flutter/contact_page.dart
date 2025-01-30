import 'package:contacts_service/contacts_service.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:permission_handler/permission_handler.dart';

class ContactPage extends StatefulWidget {
  const ContactPage({super.key});

  @override
  State<ContactPage> createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  List<Contact> _contacts = [];

  Future<void> fetchContacts() async {
    PermissionStatus permissionStatus = await Permission.contacts.request();
    if (permissionStatus.isGranted) {
      try {
        List<Contact> contacts = await ContactsService.getContacts();
        setState(() {
          _contacts = contacts;
        });
      } catch (e) {
        print(e);
      }
    } else {
      Get.snackbar("Failed", "Contacts Permission is Denied");
    }
  }

  @override
  void initState() {
    super.initState();
    fetchContacts();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              "Contacts",
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                  itemCount: _contacts.length,
                  itemBuilder: (context, index) {
                    final contact = _contacts[index];
                    return ListTile(
                      leading: CircleAvatar(
                        backgroundImage: contact.avatar != null
                            ? MemoryImage(contact.avatar!)
                            : null,
                        child: contact.avatar == null
                            ? Text(contact.initials())
                            : null,
                      ),
                      title: Text(contact.displayName ?? ""),
                      subtitle: Text(contact.phones?.isNotEmpty ?? false
                          ? contact.phones?.first.value ?? ""
                          : "No Phone Number"),
                    );
                  }),
            )
          ],
        ),
      )),
    );
  }
}
