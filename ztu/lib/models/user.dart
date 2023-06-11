import 'package:cloud_firestore/cloud_firestore.dart';

class User {
  late final String? uid;
  late final String? fullName;
  late final String? displayName;
  late final String? photoUrl;
  late final bool isAdmin;
  late final bool isBanned;
  late final String? status;
  late final String? email;
  late final String? phone;
  late final String? address;
  late final String? city;
  late final String? country;
  late final String? zipCode;
  late final Timestamp? lastSignIn;
  late final Timestamp? createdDate;

  User(
      {this.uid,
      this.fullName,
      this.displayName,
      this.photoUrl,
      this.isAdmin = false,
      this.isBanned = false,
      this.status,
      this.email,
      this.phone,
      this.address,
      this.city,
      this.country,
      this.zipCode,
      this.lastSignIn,
      this.createdDate});

  User.fomrMap(Map<String, dynamic> json) {
    uid = json.containsKey('uid')
        ? json['uid'] != null
            ? json['uid'] as String
            : ''
        : '';
    displayName = json.containsKey('fullName')
        ? json['fullName'] != null
            ? json['fullName'] as String
            : ''
        : '';
    displayName = json.containsKey('displayName')
        ? json['displayName'] != null
            ? json['displayName'] as String
            : ''
        : '';

    displayName = json.containsKey('photoUrl')
        ? json['photoUrl'] != null
            ? json['photoUrl'] as String
            : ''
        : '';

    isAdmin = json.containsKey('isAdmin') ? json['isAdmin'] as bool : false;
    isBanned = json.containsKey('isBanned') ? json['isBanned'] as bool : false;

    status = json.containsKey('status')
        ? json['status'] != null
            ? json['status'] as String
            : ''
        : '';

    email = json.containsKey('email')
        ? json['email'] != null
            ? json['email'] as String
            : ''
        : '';

    phone = json.containsKey('phone')
        ? json['phone'] != null
            ? json['phone'] as String
            : ''
        : '';

    address = json.containsKey('address')
        ? json['address'] != null
            ? json['address'] as String
            : ''
        : '';

    city = json.containsKey('city')
        ? json['city'] != null
            ? json['city'] as String
            : ''
        : '';

    country = json.containsKey('country')
        ? json['country'] != null
            ? json['country'] as String
            : ''
        : '';

    zipCode = json.containsKey('zipCode')
        ? json['zipCode'] != null
            ? json['zipCode'] as String
            : ''
        : '';

    lastSignIn = json.containsKey('lastSignIn')
        ? json['lastSignIn'] as Timestamp
        : Timestamp.now();

    lastSignIn = json.containsKey('lastSignIn')
        ? json['lastSignIn'] as Timestamp
        : Timestamp.now();
  }
}
