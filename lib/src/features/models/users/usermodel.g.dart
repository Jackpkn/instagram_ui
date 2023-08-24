// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'usermodel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) => User(
      token: json['token'] as String?,
      name: json['name'] as String,
      email: json['email'] as String,
      password: json['password'] as String,
      followers: json['followers'] as List<dynamic>,
      following: json['following'] as List<dynamic>,
      profilePic: json['profilePic'] as String,
      uid: json['uid'] as String,
      bio: json['bio'] as String,
    );

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'token': instance.token,
      'uid': instance.uid,
      'name': instance.name,
      'email': instance.email,
      'profilePic': instance.profilePic,
      'password': instance.password,
      'followers': instance.followers,
      'following': instance.following,
      'bio': instance.bio,
    };
