import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:twitter_clone/src/common/constant/localurl.dart';
import 'package:twitter_clone/src/error/dio_error.dart';
import 'package:twitter_clone/src/features/screens/pages/home_page.dart';
import 'package:twitter_clone/src/features/providers/user_provider.dart';

import '../../../common/utils/snackbar_message.dart';

final authRepository = Provider<AuthRepository>(
  (ref) => AuthRepository(
    Dio(),
    ref,
  ),
);

class AuthRepository {
  Dio dio;
  ProviderRef ref;
  AuthRepository(this.dio, this.ref);
  var options = {
    'Content-Type': 'application/json',
    'Accept': 'application/json',
  };

  Future<Response?> resister({
    required String name,
    required String email,
    required String password,
    required BuildContext context,
  }) async {
    final userPro = ref.watch(userProvider);
    try {
      Response response = await dio.post(
        '$url/auth/signUp',
        data: userPro.user.toJson(),
        options: Options(
          headers: options,
        ),
      );
      if (context.mounted) {
        dioErrorHandling(
          response: response,
          context: context,
          onSuccess: () {
            debugPrint(response.data);
          },
        );
      }
      return response;
    } on DioError catch (e) {
      showSnackBar(context: context, text: e.toString());
      debugPrint(e.toString());
    }
    return null;
  }

  Future<Response?> login({
    required String email,
    required String password,
    required BuildContext context,
  }) async {
    try {
      Response response = await dio.post(
        '$url/auth/login',
        data: {
          "email": email,
          "password": password,
        },
        options: Options(
          headers: options,
        ),
      );
      if (context.mounted) {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (context) => const HomeScreen(),
          ),
        );
      }

      return response;
    } on DioError catch (e) {
      showSnackBar(context: context, text: e.toString());
      debugPrint(e.toString());
    }
    return null;
  }
}
