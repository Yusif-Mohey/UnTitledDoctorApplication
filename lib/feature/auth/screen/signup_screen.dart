import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:untitleddoctor/core/utils/color_manager.dart';
import 'package:untitleddoctor/core/utils/custom_login_snak_bar.dart';
import 'package:untitleddoctor/core/utils/spacing.dart';
import 'package:untitleddoctor/core/utils/theme/styles.dart';
import 'package:untitleddoctor/core/widgets/custom_btn.dart';
import 'package:untitleddoctor/feature/auth/data/signup_data.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController nationalIdController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  // final TextEditingController genderController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();
  bool isVisible = false;
  bool agree = false;
  final _formKey = GlobalKey<FormState>();
  bool isLoading = false;
  bool isPatient = false;
  bool isGenderMan = false;
  @override
  void dispose() {
    nameController.dispose();
    nationalIdController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    phoneController.dispose();
    // nationalIdController.dispose();
    super.dispose();
  }

  Future<void> _handleSignUp() async {
    setState(() {
      isLoading = true;
    });
    if (phoneController.text.trim().startsWith('0')) {
      phoneController.text = '+20${phoneController.text.trim().substring(1)}';
    }

    try {
      final signupData = SignupData();
      final response = await signupData.signUp(
        phone: phoneController.text.trim(),
        password: passwordController.text.trim(),
        nationalId: nationalIdController.text.trim(),
        isPatient: isPatient,
      );
      print(response.toString());
      if (response.user != null) {
        showCustomLoginSnackBar(context, 'Sign up successful', true);
        Navigator.pop(context);
      } else {
        showCustomLoginSnackBar(context, 'Sign up failed', false);
      }
    } catch (e) {
      showCustomLoginSnackBar(context, 'Error: $e', false);

      print(e.toString());
    } finally {
      setState(() {
        isLoading = false;
      });
    }
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
                    'Join us to start your journey',
                    style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                    maxLines: 1,
                  ),
                  verticalSpace(12),
                  const Text(
                    'You can search good health, apply the signup and find your what you need for your health',
                    style: TextStyle(fontSize: 15, color: Colors.black54),
                    textAlign: TextAlign.center,
                  ),
                  verticalSpace(32),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: ElevatedButton.icon(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            foregroundColor: Colors.black,
                            elevation: 0,
                            side: const BorderSide(color: Colors.grey),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            padding: const EdgeInsets.symmetric(vertical: 12),
                          ),
                          icon: FaIcon(FontAwesomeIcons.google),
                          label: const Text('Google'),
                          onPressed: () {},
                        ),
                      ),
                      horizontalSpace(16),
                      Expanded(
                        child: ElevatedButton.icon(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            foregroundColor: Colors.black,
                            elevation: 0,
                            side: const BorderSide(color: Colors.grey),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            padding: const EdgeInsets.symmetric(vertical: 12),
                          ),
                          icon: Icon(Icons.facebook),
                          label: const Text('Facebook'),
                          onPressed: () {},
                        ),
                      ),
                    ],
                  ),
                  verticalSpace(32),
                  TextFormField(
                    controller: nameController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your name';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      hintText: 'Name',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      filled: true,
                      fillColor: Colors.white,
                    ),
                  ),
                  verticalSpace(16),
                  TextFormField(
                    controller: nationalIdController,
                    keyboardType: TextInputType.number,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your national ID';
                      }
                      if (!RegExp(r'^\d{14}$').hasMatch(value)) {
                        return 'Please enter a valid national ID';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      hintText: 'National ID',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      filled: true,
                      fillColor: Colors.white,
                    ),
                  ),
                  verticalSpace(16),
                  TextFormField(
                    controller: phoneController,
                    keyboardType: TextInputType.phone,
                    validator: (value) {
                      if (value != null && value.isNotEmpty) {
                        if (!RegExp(r'^\+?[0-9]{10,15}$').hasMatch(value)) {
                          return 'Enter a valid phone number';
                        }
                      } else if (value == null || value.isEmpty) {
                        return 'Please enter your phone number';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      hintText: 'Phone Number',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      filled: true,
                      fillColor: Colors.white,
                    ),
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
                      hintText: 'Enter Password',
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
                  verticalSpace(16),
                  TextFormField(
                    controller: confirmPasswordController,
                    obscureText: !isVisible,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please confirm your password';
                      }
                      if (value.length < 6) {
                        return 'Password must be at least 6 characters';
                      }
                      if (value != passwordController.text) {
                        return 'Passwords do not match';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      hintText: 'Confirm Password',
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
                  verticalSpace(16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      DropdownButton<bool>(
                        value: isGenderMan,
                        onChanged: (val) {
                          setState(() {
                            isGenderMan = val ?? false;
                          });
                        },
                        items: const [
                          DropdownMenuItem(value: true, child: Text('Male')),
                          DropdownMenuItem(value: false, child: Text('Female')),
                        ],
                      ),
                      horizontalSpace(40),
                      DropdownButton<bool>(
                        value: isPatient,
                        onChanged: (val) {
                          setState(() {
                            isPatient = val ?? false;
                          });
                        },
                        items: [
                          DropdownMenuItem(value: true, child: Text('Patient')),
                          DropdownMenuItem(value: false, child: Text('Doctor')),
                        ],
                      ),
                    ],
                  ),
                  // verticalSpace(16),
                  // Row(
                  //   children: [
                  //     Checkbox(
                  //       value: isPatient,
                  //       onChanged: (val) {
                  //         setState(() {
                  //           isPatient = val ?? false;
                  //         });
                  //       },
                  //       activeColor: Colors.blue,
                  //     ),
                  //     const Text('Register as Patient'),
                  //   ],
                  // ),
                  verticalSpace(32),
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
                  //     onPressed:
                  //         agree && !isLoading
                  //             ? () {
                  //               if (_formKey.currentState!.validate()) {
                  //                 _handleSignUp();
                  //               }
                  //             }
                  //             : null,
                  //     child:
                  //         isLoading
                  //             ? const SizedBox(
                  //               height: 24,
                  //               width: 24,
                  //               child: CircularProgressIndicator(
                  //                 valueColor: AlwaysStoppedAnimation<Color>(
                  //                   Colors.white,
                  //                 ),
                  //                 strokeWidth: 2,
                  //               ),
                  //             )
                  //             : const Text(
                  //               'Sign up',
                  //               style: TextStyle(fontSize: 18),
                  //             ),
                  //   ),
                  // ),
                  CustomButton(
                    text: 'Sign up',
                    style: Styles.textStyle16,
                    height: 54,
                    width: ScreenSizes.kScreenWidth(context) / 1.25,
                    color: ColorManager.primaryColor,
                    onPressed: () {
                      if (agree && !isLoading) {
                        if (_formKey.currentState!.validate()) {
                          _handleSignUp();
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text(
                                'Please fill all fields correctly.  ',
                              ),
                              backgroundColor: Colors.red,
                            ),
                          );
                        }
                      }
                    },
                  ),
                  verticalSpace(24),
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: const Text(
                      'Have an account? Log in',
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
