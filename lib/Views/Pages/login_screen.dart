import 'package:flutter/material.dart';
import 'package:gr_project/Views/Pages/assessment_screen/assessment_first.dart';
import 'package:gr_project/Views/Pages/forgot_password_screen/email_screen.dart';

import '../Components/formField.dart';
import '../Components/login_dontHave_acc.dart';
import '../Components/login_welcome.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var formKey = GlobalKey<FormState>();
  bool isPasswordVis = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Form(
            key: formKey,
            child: Column(
              children: [
                buildWelcome(),
                const SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: buildFormField(
                    controller: emailController,
                    type: TextInputType.emailAddress,
                    label: 'Email Address',
                    prefix: Icons.email_outlined,
                    onSubmit: (value) {
                      print(value);
                    },
                    onChange: (value) {
                      print(value);
                    },
                    validate: (String? value) {
                      if (value!.isEmpty) {
                        return 'Email Address must not be empty';
                      }
                      return null;
                    },
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: buildFormField(
                    controller: passwordController,
                    type: TextInputType.visiblePassword,
                    label: 'Password',
                    prefix: Icons.lock_outline,
                    onSubmit: (value) {
                      print(value);
                    },
                    onChange: (value) {
                      print(value);
                    },
                    suffix: isPasswordVis
                        ? Icons.visibility_outlined
                        : Icons.visibility_off_outlined,
                    suffixPressed: () {
                      setState(() {
                        isPasswordVis = !isPasswordVis;
                      });
                    },
                    isPassword: isPasswordVis,
                    validate: (String? value) {
                      if (value!.isEmpty) {
                        return 'Password must not be empty';
                      }
                      return null;
                    },
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    children: [
                      Checkbox(
                        value: false,
                        onChanged: (value) {},
                      ),
                      Text('Remember me'),
                      Spacer(),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => EmailScreen(),
                            ),
                          );
                        },
                        child: Text('Forget Password ?'),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    width: double.infinity,
                    height: 50,
                    child: MaterialButton(
                      onPressed: () {
                        if (formKey.currentState!.validate()) {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => AssessmentFirst(),),);
                        }
                      },
                      color: Color(0xFF2196F3),
                      child: const Text(
                        'Login',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                buildRowDonHaveAcc(), 
              ],
            ),
          ),
        ),
      ),
    );
  }
}
