import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:untitleddoctor/core/utils/custom_login_snak_bar.dart';
import 'package:untitleddoctor/core/utils/spacing.dart';
import 'package:untitleddoctor/core/utils/value_manager.dart';
import 'package:untitleddoctor/core/widgets/custom_button.dart';
import 'package:untitleddoctor/core/widgets/log_with_btn.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  bool isVisible = false;
  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  verticalSpace(48),
                  const Text(
                    'Welcome back',
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                  verticalSpace(12),
                  const Text(
                    'You can search c ourse, apply course and find\nscholarship for abroad studies',
                    style: TextStyle(fontSize: 15, color: Colors.black54),
                    textAlign: TextAlign.center,
                  ),
                  verticalSpace(32),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      LogWithBtn(
                        title: 'Google',
                        onTap: () {
                          // Implement Google login logic
                        },
                        icon: FontAwesomeIcons.google,
                      ),
                      horizontalSpace(16),
                      LogWithBtn(
                        title: 'Facebook',
                        onTap: () {
                          // Implement Facebook login logic
                        },
                        icon: FontAwesomeIcons.facebook,
                      ),
                      // CustomButton(
                      //   title: 'Facebook',
                      //   onTap: () {
                      //     // Implement Facebook login logic
                      //   },
                      // ),
                    ],
                  ),
                  verticalSpace(32),
                  TextFormField(
                    controller: emailController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your email';
                      }
                      if (!RegExp(
                        r'^[^@\s]+@[^@\s]+\.[^@\s]+',
                      ).hasMatch(value)) {
                        return 'Enter a valid email';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      hintText: 'Email',
                      suffixIcon:
                          emailController.text.isNotEmpty &&
                                  RegExp(
                                    r'^[^@\s]+@[^@\s]+\.[^@\s]+',
                                  ).hasMatch(emailController.text)
                              ? const Icon(Icons.check, color: Colors.green)
                              : null,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      filled: true,
                      fillColor: Colors.white,
                    ),
                    onChanged: (_) => setState(() {}),
                  ),
                  verticalSpace(16),
                  TextFormField(
                    controller: passwordController,
                    obscureText: !isVisible,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your password';
                      }
                      if (value.length < 6) {
                        return 'Password must be at least 6 characters';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      hintText: 'Password',
                      suffixIcon: IconButton(
                        icon: Icon(
                          isVisible ? Icons.visibility : Icons.visibility_off,
                        ),
                        onPressed: () {
                          setState(() {
                            isVisible = !isVisible;
                          });
                        },
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      filled: true,
                      fillColor: Colors.white,
                    ),
                  ),
                  verticalSpace(24),

                  // SizedBox(
                  //   width: double.infinity,
                  //   child: ElevatedButton(
                  //     style: ElevatedButton.styleFrom(
                  //       backgroundColor: const Color(0xFF0EBE7F),
                  //       shape: RoundedRectangleBorder(
                  //         borderRadius: BorderRadius.circular(12),
                  //       ),
                  //       padding: const EdgeInsets.symmetric(vertical: 16),
                  //     ),
                  //     onPressed: () {
                  //       if (_formKey.currentState!.validate()) {
                  //         // TODO: Implement login logic
                  //       }
                  //     },
                  //     child: const Text(
                  //       'Login',
                  //       style: TextStyle(fontSize: 18),
                  //     ),
                  //   ),
                  // ),
                  CustomButton(
                    title: 'Login',
                    widthButton: double.infinity,
                    height: AppSize.s55,
                    onTap: () {
                      if (_formKey.currentState!.validate()) {
                        showCustomLoginSnackBar(context, 'Logging in...', true);
                      }
                    },
                  ),
                  verticalSpace(12),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Forgor password',
                      style: TextStyle(color: Color(0xFF0EBE7F)),
                    ),
                  ),
                  verticalSpace(32),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, 'signup');
                    },
                    child: const Text(
                      'Don\'t have an account? Join us',
                      style: TextStyle(color: Color(0xFF0EBE7F)),
                    ),
                  ),
                  verticalSpace(24),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
