import 'package:div_academy_task/presentation/layouts/login/login_view.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  static const String routeName = "/HomeView";
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    var name = ModalRoute.of(context)!.settings.arguments;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pushNamedAndRemoveUntil(
                context,
                LoginView.routeName,
                (route) => false,
              );
            },
            icon: const Icon(Icons.logout_rounded)),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 22),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Welcome To Home ${name ?? ""}",
              style: const TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 24,
                  color: Color(0xff252525)),
            ),
            const SizedBox(
              height: 72,
            ),
            Center(
                child: Image.asset(
                    "assets/images/undraw_welcome_cats_thqn 1.png")),
            const Text(
              "Congratulations,Everyone!",
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  color: Colors.black),
            ),
            const SizedBox(
              height: 28,
            ),
            const Text(
              '''Thank you all for your hard work during the course. It was great to work with you, and I'm proud of everything you've done.  Congratulations on finishing! I wish you success in your future.''',
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  color: Color(0xff252525)),
            ),
            const SizedBox(
              height: 43,
            ),
            const Text(
              "Best Wishes,",
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  color: Color(0xff252525)),
            ),
            const Text(
              "Mohamed Adel (Soda)",
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  color: Color(0xff252525)),
            ),
          ],
        ),
      ),
    );
  }
}
