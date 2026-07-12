import 'package:flutter/material.dart';

import '../widgets/login_footer.dart';
import '../widgets/login_form.dart';
import '../widgets/login_header.dart';
import '../widgets/social_login.dart';

import '../pages/register_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,

        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xffEEF6FF),
              Colors.white,
            ],
          ),
        ),

        child: SafeArea(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(24),

            child: Column(
              children: const [

                SizedBox(height: 30),

                LoginHeader(),

                SizedBox(height: 40),

                LoginForm(),

                SizedBox(height: 35),

                SocialLogin(),

                SizedBox(height: 35),

                LoginFooter(),

                SizedBox(height: 30),

              ],
            ),
          ),
        ),
      ),
    );
  }
}