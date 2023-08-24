import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:dio/dio.dart' as dio;

import '../common/utils/snackbar_message.dart';

void dioErrorHandling({
  required dio.Response response,
  required VoidCallback onSuccess,
  required BuildContext context,
}) {
  switch (response.statusCode) {
    case 200:
      onSuccess();
      break;
    case 404:
      showSnackBar(context: context, text: jsonDecode(response.data)['msg']);
      break;
    case 400:
      showSnackBar(context: context, text: jsonDecode(response.data)['msg']);
      break;
    case 500:
      showSnackBar(context: context, text: jsonDecode(response.data)['error']);
      break;
    default:
      showSnackBar(context: context, text: jsonDecode(response.data));
      break;
  }
}
