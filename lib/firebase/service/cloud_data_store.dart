import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:nov_training_session/flutter/dataModel/user_data_model.dart';

class CloudDataStore {
  final CollectionReference collectionReference =
      FirebaseFirestore.instance.collection("Users");

  // get all users

  Future<List<FirebaseDataModel>> getAllUser() async {
    QuerySnapshot querySnapshot = await collectionReference.get();
    return querySnapshot.docs
        .map((doc) =>
            FirebaseDataModel.fromJson(doc.data() as Map<String, dynamic>))
        .toList();
  }

  // ADD Create

  Future<void> addUser(FirebaseDataModel user) async {
    return await collectionReference.doc(user.uid).set(user.toJson());
  }

  // Update User
  Future<void> updateUser(FirebaseDataModel user) async {
    return await collectionReference.doc(user.uid).update(user.toJson());
  }

  // Delete User

  Future<void> deleteUser(String id) async {
    return await collectionReference.doc(id).delete();
  }
}
