import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:nov_training_session/mvvm/extensions/snack_bar_extension.dart';

import 'display_image_page.dart';

class UploadImagePage extends StatefulWidget {
  const UploadImagePage({super.key});

  @override
  State<UploadImagePage> createState() => _UploadImagePageState();
}

class _UploadImagePageState extends State<UploadImagePage> {
  File? _image;
  final ImagePicker _picker = ImagePicker();
  double _uploadProgress = 0.0;

  Future<void> pickImage(ImageSource source) async {
    final pickedFile = await _picker.pickImage(source: source);
    if (pickedFile != null) {
      setState(() {
        _image = File(pickedFile.path);
      });
    }
  }

  Future<void> uploadImage() async {
    if (_image != null) {
      final storageRef = FirebaseStorage.instance.ref();
      final imagesRef =
          storageRef.child("images/${DateTime.now().toIso8601String()}");
      final uploadTask = imagesRef.putFile(_image!);

      uploadTask.snapshotEvents.listen((TaskSnapshot snapShot) {
        setState(() {
          _uploadProgress = snapShot.bytesTransferred / snapShot.totalBytes;
        });
      });
      final snapShot = await uploadTask.whenComplete(() => {});
      final downloadUrl = await snapShot.ref.getDownloadURL();

      await FirebaseFirestore.instance
          .collection("images")
          .add({'Url': downloadUrl});
      setState(() {
        _uploadProgress = 0.0;
      });
      Get.showSnackBar(title: 'Success', message: 'Image upload Successfully');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Upload Image"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _image != null
              ? Image.file(_image!, height: 200, width: double.infinity)
              : const Text("No Image Selected"),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                  onPressed: () {
                    pickImage(ImageSource.gallery);
                  },
                  child: const Text("Gallery")),
              ElevatedButton(
                  onPressed: () {
                    pickImage(ImageSource.camera);
                  },
                  child: const Text("Camera"))
            ],
          ),
          if (_uploadProgress > 0.0)
            const Center(child: CircularProgressIndicator()),
          const SizedBox(height: 20),
          ElevatedButton(
              onPressed: () {
                uploadImage();
              },
              child: const Text("Upload Image")),
          const SizedBox(height: 20),
          ElevatedButton(
              onPressed: () {
                Get.to(() => const DisplayImagePage());
              },
              child: const Text("View Images")),
        ],
      ),
    );
  }
}
