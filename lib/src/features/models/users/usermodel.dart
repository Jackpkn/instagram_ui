import 'package:json_annotation/json_annotation.dart';
part 'usermodel.g.dart';

@JsonSerializable()
class User {
  String? token;
  String uid;
  String name;
  String email;
  String profilePic;
  String password;
  List followers;
  List following;

  String bio;

  User({
    this.token,
    required this.name,
    required this.email,
    required this.password,
    required this.followers,
    required this.following,
    required this.profilePic,
    required this.uid,
    required this.bio,
  });
  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
  Map<String, dynamic> toJson() => _$UserToJson(this);
}
 


  // factory User.fromJson(Map<String, dynamic> json) {
  //   return User(
  //     name: json['name'],
  //     email: json['email'],
  //     password: json['password'],
  //     followers: List<String>.from(json['followers']),
  //     following: List<String>.from(json['following']),
  //     profilePic: json['profilePic'],
  //     bannerPic: json['bannerPic'],
  //     uid: json['uid'],
  //     bio: json['bio'],
  //     isTwitterBlue: json['isTwitterBlue'],
  //   );
  // }

  // Map<String, dynamic> toJson() {
  //   final Map<String, dynamic> data = <String, dynamic>{};
  //   data['name'] = name;
  //   data['email'] = email;
  //   data['password'] = password;
  //   data['followers'] = followers;
  //   data['following'] = following;
  //   data['profilePic'] = profilePic;
  //   data['bannerPic'] = bannerPic;
  //   data['uid'] = uid;
  //   data['bio'] = bio;
  //   data['isTwitterBlue'] = isTwitterBlue;

  //   return data;
  // }