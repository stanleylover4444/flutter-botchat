// import 'dart:convert';
// import 'package:http/http.dart' as http;

// class User {
//   final int id;
//   final String fullName;
//   final String phoneNumber;
//   final String email;
//   final int gender;
//   final String birthday;
//   final String role;
//   final String avatar;
//   final String level;
//   final String createdAt;
//   final String lastUpdated;

//   User({
//     required this.id,
//     required this.fullName,
//     required this.phoneNumber,
//     required this.email,
//     required this.gender,
//     required this.birthday,
//     required this.role,
//     required this.avatar,
//     required this.level,
//     required this.createdAt,
//     required this.lastUpdated,
//   });

//   factory User.fromJson(Map<String, dynamic> json) {
//     return User(
//       id: json['id'],
//       fullName: json['fullName'],
//       phoneNumber: json['phoneNumber'],
//       email: json['email'],
//       gender: json['gender'],
//       birthday: json['birthday'],
//       role: json['role'],
//       avatar: json['avatar'],
//       level: json['level'],
//       createdAt: json['createdAt'],
//       lastUpdated: json['lastUpdated'],
//     );
//   }
// }


// // Định nghĩa hàm fetchUser
// Future<User?> fetchUser() async {
//   final response = await http.get(
//     Uri.parse('https://hayugo.edu.vn/api/User/persistLogin'),
//     headers: {
//        },
//   );

//   if (response.statusCode == 200) {
//     final data = jsonDecode(response.body);
//     return User.fromJson(data['result']);
//   } else {
//     throw Exception('Failed to load user');
//   }
// }

