import 'package:flutter/material.dart';

class ProfileComponent extends StatelessWidget {
  final String title;
  final VoidCallback onTapped;

  const ProfileComponent(
      {super.key, required this.title, required this.onTapped});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashFactory: NoSplash.splashFactory,
      highlightColor: Colors.transparent,
      onTap: onTapped,
      child: ListTile(
        leading: const SizedBox(
          width: 20,
          height: 20,
          child: Icon(
            Icons.app_blocking_outlined,
            size: 18,
            color: Colors.black,
          ),
        ),
        title: Text(title,
            style: const TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 18,
                color: Colors.black)),
        trailing: const SizedBox(
            width: 9,
            height: 15,
            child:
            Icon(Icons.arrow_forward_ios, size: 18, color: Colors.black)),
      ),
    );
  }
}