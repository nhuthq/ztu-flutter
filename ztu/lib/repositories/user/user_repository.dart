import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:ztu/models/user.dart';

import 'base_user_repository.dart';

class UserRepository implements BaseUserRepository {
  final FirebaseFirestore firebaseFirestore;

  UserRepository({required this.firebaseFirestore});

  @override
  Future<void> deleteUser(String? userId) async {
    if (userId?.isNotEmpty ?? false) {
      await firebaseFirestore.collection('users').doc(userId).delete();
    }
  }

  @override
  Future<void> banUser(String? userId) async {
    if (userId?.isNotEmpty ?? false) {
      await firebaseFirestore
          .collection('user')
          .doc(userId)
          .set({'isAdmin': false, 'isBanned': true}, SetOptions(merge: true));
    }
  }

  @override
  Future<void> unbanUser(String? userId) async {
    if (userId?.isNotEmpty ?? false) {
      await firebaseFirestore
          .collection('users')
          .doc(userId)
          .set({'isBanned': false}, SetOptions(merge: true));
    }
  }

  @override
  Future<void> promoteToAdmin(String? userId) async {
    if (userId?.isNotEmpty ?? false) {
      await firebaseFirestore
          .collection('users')
          .doc(userId)
          .set({'isAdmin': true, 'isBanned': false}, SetOptions(merge: true));
    }
  }

  @override
  Future<void> revokeAdmin(String? userId) async {
    await firebaseFirestore
        .collection('users')
        .doc(userId)
        .set({'isAdmin': false}, SetOptions(merge: true));
  }

  @override
  Future<List<QueryDocumentSnapshot>> fetchNextUsers(
      DocumentSnapshot? afterDocument) async {
    QuerySnapshot<Map<String, dynamic>>? data;
    if (afterDocument != null) {
      data = await firebaseFirestore
          .collection('users')
          .limit(20)
          .startAfterDocument(afterDocument)
          .get();
    } else {
      data = await firebaseFirestore.collection('users').limit(20).get();
    }
    return data.docs;
  }

  @override
  Future<User?> getUser(String uid) async {
    final data = await firebaseFirestore.collection('users').doc(uid).get();
    if (data.data() is Map<String, dynamic>) {
      return User.fomrMap(data.data() as Map<String, dynamic>);
    } else {
      return null;
    }
  }

  @override
  Future<void> addFavorite(
      String userId, String juiceId, Map<String, dynamic> data) async {
    if (userId.isNotEmpty) {
      await firebaseFirestore
          .collection('users')
          .doc(userId)
          .collection('favorites')
          .doc(juiceId)
          .set(data, SetOptions(merge: true));
    }
  }

  @override
  Future<void> removeFavorite(String userId, String juiceId) async {
    if (userId.isNotEmpty) {
      await firebaseFirestore
          .collection('users')
          .doc(userId)
          .collection('favorites')
          .doc(juiceId)
          .delete();
    }
  }

  @override
  Future<User?> updateProfile(
      {required String userId, required Map<String, dynamic> data}) async {
    try {
      if (userId.isNotEmpty) {
        await firebaseFirestore.collection('users').doc(userId).set(
              data,
              SetOptions(merge: true),
            );
      }
      return getUser(userId);
    } catch (e) {
      debugPrint('>>>>> ${e.toString()}');
    }
  }
}
