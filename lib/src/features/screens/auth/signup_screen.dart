import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../common/widgets/text_input.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              hintText: 'name',
              labelText: 'Enter your name',
              inputType: TextInputType.emailAddress,
              isPass: false,
              controller: nameController,
              validator: (val) {
                return null;
              },
            ),
            const SizedBox(
              height: 10,
            ),
            TextInput(
              hintText: 'Email',
              labelText: 'Enter your Email',
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
              controller: passwordController,
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
            InkWell(
              onTap: () {},
              child: Container(
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
           
          ],
        ),
      ),
    );
  }
}
