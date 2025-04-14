import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:g/utils/formatters/formatter.dart';

class UserModel {
  final String id;
  String fristName;
  String lastName;
  final String userName;
  final String email;
  String phoneNumber;
  String profilePicture;
  UserModel({
    required this.id,
    required this.fristName,
    required this.lastName,
    required this.userName,
    required this.email,
    required this.phoneNumber,
    required this.profilePicture,
  });

  String get fullName => '$fristName $lastName';
  String get formattedPhoneNo => GFormatter.formatPhoneNumber(phoneNumber);
  static List<String> nameParts(fullName) => fullName.split(' ');
  static String generateUsername(fullName) {
    List<String> namePart = fullName.split(' ');
    String fristName = namePart[0].toLowerCase();
    String lastName = namePart.length > 1 ? namePart[1].toLowerCase() : '';
    String camelCaseUsename = '$fristName$lastName';
    String usreNameWithPrefix = 'cwt_$camelCaseUsename';
    return usreNameWithPrefix;
  }

  static UserModel empty() => UserModel(
    id: '',
    fristName: '',
    lastName: '',
    userName: '',
    email: '',
    phoneNumber: '',
    profilePicture: '',
  );
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'fristName': fristName,
      'lastName': lastName,
      'userName': userName,
      'email': email,
      'phoneNumber': phoneNumber,
      'profilePicture': profilePicture,
    };
  }

  factory UserModel.fromSnapshot(DocumentSnapshot <Map<String, dynamic>> document) {
    if (document.data()!=null) {
      final data = document.data()!;
      return UserModel(
        id: document.id,
        fristName: data['fristName'] ?? '',
        lastName: data['lastName'] ?? '',
        userName: data['userName'] ?? '',
        email: data['email'] ?? '',
        phoneNumber: data['phoneNumber'] ?? '',
        profilePicture: data['profilePicture'] ?? '',
      );
    }
    return UserModel.empty();
  }
}