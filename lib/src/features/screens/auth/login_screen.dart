// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:twitter_clone/src/common/widgets/text_input.dart';

class LoginScreen extends ConsumerWidget {
  LoginScreen({super.key});
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Flexible(
              flex: 2,
              child: Container(),
            ),
            SvgPicture.asset(
              'assets/svg/ic_instagram.svg',
              height: 64,
              color: Colors.white,
            ),
            const SizedBox(
              height: 14,
            ),
            TextInput(
              hintText: 'Email',
              labelText: 'Enter your email',
              inputType: TextInputType.emailAddress,
              isPass: false,
              controller: emailController,
              validator: (val) {
                return null;
              },
            ),
            const SizedBox(
              height: 10,
            ),
            TextInput(
              hintText: 'Password',
              labelText: 'Enter your password',
              inputType: TextInputType.text,
              isPass: true,
              controller: emailController,
              validator: (val) {
                return null;
              },
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  child: const Text(
                    'Forgot password',
                  ),
                  onPressed: () {},
                ),
              ],
            ),
            const SizedBox(
              height: 25,
            ),
            Container(
              height: 64,
              alignment: Alignment.center,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(9),
                color: Colors.blue,
              ),
              child: const Text(
                'Log in',
              ),
            ),

            Flexible(
              flex: 2,
              child: Container(),
            ),
            RichText(
              text: const TextSpan(
                children: [
                  TextSpan(
                    text: "Don't have an account? ",
                    children: [
                      TextSpan(
                        text: ' Sign up',
                        style: TextStyle(
                          color: Colors.blue,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            const Text('Instagram from Facebook'),
            // text controller for email
            // text controller for password
          ],
        ),
      ),
    );
  }
}
