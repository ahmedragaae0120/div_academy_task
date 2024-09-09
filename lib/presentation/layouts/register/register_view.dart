import 'package:div_academy_task/constants.dart';
import 'package:div_academy_task/presentation/layouts/home/home_view.dart';
import 'package:div_academy_task/presentation/layouts/login/login_view.dart';
import 'package:div_academy_task/reusable%20commponets/custom_text_filed.dart';
import 'package:flutter/material.dart';

class RegisterView extends StatelessWidget {
  static const String routeName = "/RegisterView";

  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController? emailController = TextEditingController();
    TextEditingController? passwordController = TextEditingController();
    TextEditingController? fullNameController = TextEditingController();
    GlobalKey<FormState> formkey = GlobalKey<FormState>();
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Form(
              key: formkey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                      child: Image.asset(
                          "assets/images/undraw_adventure_map_hnin 2.png")),
                  const Text(
                    "Get Started",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 24,
                        color: Color(0xff252525)),
                  ),
                  const Text(
                    "by creating a free account.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.w300,
                        fontSize: 14,
                        color: Color(0xff252525)),
                  ),
                  const SizedBox(
                    height: 65,
                  ),
                  CustomTextFiled(
                      controller: fullNameController,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "this field can't be empty";
                        }
                        return null;
                      },
                      hintText: "Full name",
                      suffixIcon: const Icon(Icons.person_2_outlined)),
                  const SizedBox(
                    height: 25,
                  ),
                  CustomTextFiled(
                      controller: emailController,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "this field can't be empty";
                        }
                        if (!RegExp(Constants.emailRegex).hasMatch(value)) {
                          return "Enter valid Email";
                        }
                        return null;
                      },
                      hintText: "Valid email",
                      suffixIcon: const Icon(Icons.email_outlined)),
                  const SizedBox(
                    height: 25,
                  ),
                  CustomTextFiled(
                      keyboardType: TextInputType.phone,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "this field can't be empty";
                        }
                        return null;
                      },
                      hintText: "Phone number",
                      suffixIcon: const Icon(Icons.smartphone_rounded)),
                  const SizedBox(
                    height: 25,
                  ),
                  CustomTextFiled(
                      controller: passwordController,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "this field can't be empty";
                        }
                        if (value.length < 8) {
                          return "password should is 8 char or more";
                        }
                        return null;
                      },
                      hintText: "Strong Password",
                      suffixIcon: const Icon(Icons.lock_outline_rounded)),
                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                        onPressed: () {},
                        child: const Text(
                          "Forget password ?",
                        )),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      if (formkey.currentState?.validate() ?? false) {
                        Navigator.pushNamedAndRemoveUntil(
                          context,
                          HomeView.routeName,
                          (route) => false,
                          arguments: fullNameController.text,
                        );
                      }
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xff6C63FF),
                        fixedSize: const Size(300, 50),
                        shape: const RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10)))),
                    child: const Text(
                      'Create Account',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 23,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Already a member?",
                        style: TextStyle(fontWeight: FontWeight.w700),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.pushReplacementNamed(
                              context, LoginView.routeName);
                        },
                        child: const Text(
                          "Log In",
                          style: TextStyle(
                              color: Color(0xff6c63ff),
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
