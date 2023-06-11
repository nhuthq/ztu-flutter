import 'package:ztu/models/user.dart';

abstract class BaseUserRepository {
  
  Future<User?> getUser(String uid);

  Future<void> banUser(String? userId);

  Future<void> unbanUser(String? userId);

  Future<void> promoteToAdmin(String? userId);

  Future<void> revokeAdmin(String? userId);

  Future<void> deleteUser(String? userId);

  Future<void> addFavorite(
      String uid, String juiceId, Map<String, dynamic> data);

  Future<void> removeFavorite(String uid, String juiceId);

  Future<User?> updateProfile(
      {required String userId, required Map<String, dynamic> data});
}
