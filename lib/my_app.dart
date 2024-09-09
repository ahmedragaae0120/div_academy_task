import 'package:div_academy_task/presentation/layouts/home/home_view.dart';
import 'package:div_academy_task/presentation/layouts/login/login_view.dart';
import 'package:div_academy_task/presentation/layouts/register/register_view.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        HomeView.routeName: (context) => const HomeView(),
        LoginView.routeName: (context) => const LoginView(),
        RegisterView.routeName: (context) => const RegisterView(),
      },
      initialRoute: LoginView.routeName,
    );
  }
}
