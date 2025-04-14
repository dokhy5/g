import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:g/utils/formatters/formatter.dart';

class UserModel {
  final String id;
  String firstName;
  String lastName;
  final String userName;
  final String email;
  String phoneNumber;
  String profilePicture;
  UserModel({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.userName,
    required this.email,
    required this.phoneNumber,
    required this.profilePicture,
  });

  String get fullName => '$firstName $lastName';
  String get formattedPhoneNo => GFormatter.formatPhoneNumber(phoneNumber);
  static List<String> nameParts(fullName) => fullName.split(' ');
  static String generateUsername(fullName) {
    List<String> namePart = fullName.split(' ');
    String firstName = namePart[0].toLowerCase();
    String lastName = namePart.length > 1 ? namePart[1].toLowerCase() : '';
    String camelCaseUsename = '$firstName$lastName';
    String usreNameWithPrefix = 'cwt_$camelCaseUsename';
    return usreNameWithPrefix;
  }

  static UserModel empty() => UserModel(
    id: '',
    firstName: '',
    lastName: '',
    userName: '',
    email: '',
    phoneNumber: '',
    profilePicture: '',
  );
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'fristName': firstName,
      'lastName': lastName,
      'userName': userName,
      'email': email,
      'phoneNumber': phoneNumber,
      'profilePicture': profilePicture,
    };
  }

  factory UserModel.fromSnapshot(DocumentSnapshot <Map<String, dynamic>> document) {
      print('📄 Firestore data: ${document.data()}'); // ✅ اطبع البيانات الأول

    if (document.data()!=null) {
      final data = document.data()!;
      return UserModel(
        id: document.id,
        firstName: data['firstName'] ?? '',
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