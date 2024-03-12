import 'package:ecomapp/feature/authentication/screens/login/loginpage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ResetPasswordPage extends StatelessWidget {
  const ResetPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),

            Text(
              textAlign: TextAlign.center,
              'Password Reset Mail Has Been Sent To Your Inbox',
              style: Theme.of(context).textTheme.headlineMedium,
            ),

            const SizedBox(
              height: 30,
            ),

            // Image
            const Image(
              image: AssetImage(
                '/images/onboarding/slidethree.png',
              ),
            ),

            const SizedBox(
              height: 30,
            ),

            // button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () {
                    Get.off(
                      const LoginScreen(),
                    );
                  },
                  child: const Text('Return to login')),
            )
          ],
        ),
      ),
    );
  }
}
